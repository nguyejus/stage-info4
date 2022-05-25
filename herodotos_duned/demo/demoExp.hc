prefix="."
patterns="./cocci"
projects="/home/lotfi/RICM4/stage/dev/herodotos/herodotos/demoExp"
results="./results"
website="./website"
findcmd="spatch %f -sp_file %p -dir %d 2> %b.log > %o"
//findchild = 8
//flags="-timeout 60 -use_glimpse"
flags="-timeout 60"
cpucore = 1

project Test {
	dir = test

	versions = {
	("ver0",12/31/1999,10)
	("ver1",01/01/2001,11)
	("ver2",01/01/2002,10)
	}
}



pattern Error {
 file = "error.cocci"
 correl = strict
}




experience exp on project Test
	with pattern Error
