# author: yuan xiong
# date: 2020-11-21

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [--arg4=<arg4>]
Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[--arg4=<arg4>]   Takes any value (this is an optional option)
" -> doc

library(docopt)
opt <- docopt(doc)

main <- function(arg, arg2, arg3, arg4)
  print(opt)
  print(typeof(opt))
  print(arg4)
  
main(opt$arg, opt&arg2, opt$arg3, opt$arg4)
