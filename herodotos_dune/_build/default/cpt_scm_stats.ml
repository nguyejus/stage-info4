let sys_command cmd =
  Bolt.Logger.log "Execute: '%s'" Bolt.Level.INFO cmd;
  let status = Sys.command cmd in
  Bolt.Logger.log "Status: %d" Bolt.Level.INFO (""  ^ string_of_int(status));
  status

let tag_filter tag_list filter =
  let result = ref [] in 
  List.iter(fun tag -> if Str.string_match (Str.regexp filter) tag 0 then
      result := tag :: !result
    else 
      ())tag_list ; 
  !result

let rec string_match_exp (exp:Str.regexp) (strings:string list) =
  match strings with
      [] -> ""
    | s1::tail ->
      try 
        let _ = Str.search_forward exp s1 0 in
        let posbeg=Str.match_beginning() in
        (String.sub s1 posbeg ((String.length s1)-posbeg))
      with Not_found -> (string_match_exp exp tail) 

let rec read_recursive lines in_channel=
  try
    Scanf.bscanf in_channel "%[^\r\n]\n" (fun x -> read_recursive (x :: lines) in_channel)
  with
    End_of_file->lines
 
let get_size dir =
  Bolt.Logger.log "Retrieving C code size of %s" Bolt.Level.INFO dir;
  let cmd = "sloccount "^dir in
  Bolt.Logger.log "Execute: '%s'" Bolt.Level.DEBUG cmd;
  let in_channel = Unix.open_process_in cmd in
  let lines = read_recursive [] (Scanf.Scanning.from_channel in_channel) in
  let chaine = String.concat "\n" lines in       
  let expression =  Str.regexp "ansic: *[0-9]+" in
  let expNumber = Str.regexp"[0-9]+" in 
  let expSep = Str.regexp" +" in
  let size =
    try
      let _ = Str.search_forward expression chaine 0 in
      int_of_string (string_match_exp expNumber (Str.split expSep (string_match_exp expression lines)))
    with Not_found ->
      Bolt.Logger.log "Error while retrieving the ansi C code size" Bolt.Level.ERROR "";
      0
  in
  close_in in_channel ;
  Bolt.Logger.log "Size: %d" Bolt.Level.DEBUG (""  ^ string_of_int(size));
  size

(* extracts versions information thanks to a regexp describing versions tags *)
let extract_vers_infos prj expression declared_versions withsizes =
  let path = !Setup.projectsdir ^ (Config.get_prjdir prj) in
  let local_scm = Config.get_scm prj in
  let origin =
    try
      Config.get_public_scm prj
    with e ->
      Bolt.Logger.log "%s" Bolt.Level.ERROR (Printexc.to_string e);
      ""
  in
  Bolt.Logger.log "Local SCM: %s" Bolt.Level.DEBUG local_scm;
  let deposit = Str.replace_first (Str.regexp "git:") "" local_scm in
  let scm = path^"/"^deposit in
  Bolt.Logger.log "Checking local SCM: %s" Bolt.Level.DEBUG scm;
  if not ((Sys.file_exists scm)
	  &&(Sys.is_directory scm)) then
    if origin <> "" then
      ignore(sys_command ("git clone "^origin^" "^path^"/"^deposit ))
    else
      (Bolt.Logger.log "No public SCM defined, but %s is not available" Bolt.Level.FATAL deposit;
       failwith "A public SCM is needed."
      );
  let tag_list = Git.get_tags scm expression in
  List.iter (
    fun version ->
      if not ((Sys.file_exists (path^"/"^version))
	      &&(Sys.is_directory(path^"/"^version))) then
        ignore(sys_command
		 ("git --git-dir "^path^"/"^deposit ^" archive --format=tar --prefix="^version^"/ "^ version
		  ^" | (cd "^path^" && tar xf -)"))
  ) tag_list;
  List.map (fun version ->
    try
      List.find (fun (name, date, size) -> name = version) declared_versions
    with Not_found ->
      let date = Git.get_version_date path version deposit in
      let size = if withsizes == true then get_size (path^"/"^version)
                                      else -1
      in
      (version, Some date, size)
  ) tag_list 
