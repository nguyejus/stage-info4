type version = string * Unix.tm option * int

type correl = Strict | Nocorrel | Default
type format = CSV | Org

type expression =
    Pattern of string
  | Project of string
  | Cst     of float
  | Plus  of expression * expression
  | Minus of expression * expression
  | Mul   of expression * expression
  | Div   of expression * expression

type attr =
    Color of float * float * float
  | Correl of string
  | CleanColor of float * float * float
  | PatternColor of float * float * float
  | DftPattern of string
  | Data of expression
  | Dir of string
  | SubDir of string
  | Factor of float
  | File of string option
  | Filename of bool
  | Footer of string
  | Format of string
  | Info of bool
  | DftProject of string
  | Legend of string
  | XLegend of string
  | YLegend of string
  | YLegendFactor of string
  | LineType of string
  | MarkType of string
  | MarkSize of float
  | XAxis of string
  | XMin of float
  | YAxis of string
  | Ratio of bool
  | NotExistColor of float * float * float
  | Version of int * version list
  | VersionRE of string
  | VMin of string
  | Author of bool
  | Prune of bool
  | LOCALSCM of string
  | PUBLICSCM of string
  | SPFlags of string
  | Size of float * float
  | Sort of bool
  | Deposit of string

type curve = string option * string option * attr list * Ast.pos

type group =
    GrpCurve of string * curve list
  | GrpPatt of string * Ast.pos

type subgraph =
    Curves of curve list
  | Groups of group list

type gph = attr list * subgraph

type expPattern = ExpPattern of string

type expProject = ExpProject of string

type studies = ObjPatt of expPattern list | ObjProj of expProject list
 
type experiment = studies * studies

