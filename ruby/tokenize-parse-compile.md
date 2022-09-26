# Tokenizing/Parsing/Compiling Code in Ruby

(Most of this snippets is taken from [https://www.nasseri.io/posts/1.html](https://www.nasseri.io/posts/1.html))

All code here uses either core or stdlib methods.

Whenever a ruby program is run, the program is first lexed into tokens, then the tokens are assembled into an abstract syntax tree, and finally the AST is compiled into virtual machine instructions.

View lexical/tokenized output to see how ruby interprets code
-------------------------------------------------------------

```ruby
require 'ripper'
require 'pp'

code = <<CODE
def add(x, y)
  x + y
end
CODE

pp Ripper.lex(code)
```

This results in the following output:

```
[[[1, 0], :on_kw, "def"],
 [[1, 3], :on_sp, " "],
 [[1, 4], :on_ident, "add"],
 [[1, 7], :on_lparen, "("],
 [[1, 8], :on_ident, "x"],
 [[1, 9], :on_comma, ","],
 [[1, 10], :on_sp, " "],
 [[1, 11], :on_ident, "y"],
 [[1, 12], :on_rparen, ")"],
 [[1, 13], :on_ignored_nl, "\n"],
 [[2, 0], :on_sp, "  "],
 [[2, 2], :on_ident, "x"],
 [[2, 3], :on_sp, " "],
 [[2, 4], :on_op, "+"],
 [[2, 5], :on_sp, " "],
 [[2, 6], :on_ident, "y"],
 [[2, 7], :on_nl, "\n"],
 [[3, 0], :on_kw, "end"],
 [[3, 3], :on_nl, "\n"]]
```

Each nested array in above output represents a single token. The structure of the array is as follows:

```
[[line number, text column], token name, characters]
```

The token name symbols in the ouput map to token types defined inside of the file "parse.y" of the ruby source code. Though the symbol names are not one to one with the C definition inside parse.y, the output of ripper captures what Ruby does internally as it encounters tokens.



View the abstract syntax tree (AST) that Ruby makes when it parses code
-----------------------------------------------------------------------

```ruby
require 'ripper'
require 'pp'

code = <<CODE
def add(x, y)
  x + y
end
CODE

pp Ripper.sexp(code)
```

Output:

```
[:program,
 [[:def,
   [:@ident, "add", [1, 4]],
   [:paren,
    [:params,
     [[:@ident, "x", [1, 8]], [:@ident, "y", [1, 11]]],
     nil,
     nil,
     nil,
     nil,
     nil,
     nil]],
   [:bodystmt,
    [[:binary,
      [:var_ref, [:@ident, "x", [2, 2]]],
      :+,
      [:var_ref, [:@ident, "y", [2, 6]]]]],
    nil,
    nil,
    nil]]]]
```


Examine how ruby compiles our AST into Ruby's VM ("Yet another ruby virtual-machine" aka YARV) instructions
-----------------------------------------------------------------------------------------------------------

```ruby
code = <<CODE
def add(x, y)
  x + y
end
CODE

puts RubyVM::InstructionSequence.compile(code).disasm
```

Output:

```
== disasm: #@>================================
0000 trace            1                                               (   1)
0002 putspecialobject 1
0004 putobject        :add
0006 putiseq          add
0008 opt_send_without_block ,
0011 leave
== disasm: #>=======================================
local table (size: 2, argc: 2 [opts: 0, rest: -1, post: 0, block: -1, kw: -1@-1, kwrest: -1])
[ 2] x     [ 1] y
0000 trace            8                                               (   1)
0002 trace            1                                               (   2)
0004 getlocal_OP__WC__0 4
0006 getlocal_OP__WC__0 3
0008 opt_plus         ,
0011 trace            16                                              (   3)
0013 leave                                                            (   2)
YARV is a stack oriented virtual machine, so most of the instructions invlove putting an object onto the stack, and then executing an operation against the values on the stack.
```




