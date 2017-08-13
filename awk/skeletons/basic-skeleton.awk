
BEGIN {
  FS = "\t"
  OFS = "\t"
}


{
  if (condition) {
    do_something;
  }

  if(condition) do_something;

  if(condition1) {
    do_something1;
  } else if(condition2) {
    do_something2;
  } else {
    do_something3;
  }


}

END {
}


function function_with_arguments(arg1, arg2) {
  total = arg1 + arg2;
}

function function_without_argument() {
  print "function worked";
}

function function_that_returns() {
  return "the return value";
}

