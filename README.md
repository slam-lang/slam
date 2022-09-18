![banner](/docs/banner.png)

[![compile](https://github.com/slam-lang/slam/actions/workflows/compile.yml/badge.svg)](https://github.com/slam-lang/slam/actions/workflows/compile.yml)

## About

Ive always wanted to make my own programming language, so heres the process.

## Types

Types are pointless.

## Inspiration

- [porth](https://gitlab.com/tsoding/porth)

## Usage

### Intrinsics

- `-` this pops the last 2 numbers and pushes a - b
- `*` this pops the last 2 numbers and pushes the product
- `/` this pops the last 2 numbers and pushes a / b then a mod b
- `+`, `.` this pops the last 2 numbers and pushes the sum 
- `swap` this swaps the last 2 numbers 
- `copy` this pops the last number and pushes it twice 
- `covr` this pushes the 2nd to last item in the stack
- `readc` this derefrences the last item in the stack to a char
- `read`, `@` this derefrences the last item in the stack to a qword
- `putc` this writes the last item in the stack to the 2nd to last as a char
- `put`, `=` this writes the last item in the stack to the 2nd to last as a qword
- `disc` this removes the last item from the stack
- `argv` this gets the argument pointer
- `argc` this gets the argument count
- `envp` this gets the environment pointer
- `()` this calls the last proc on the stack
- `ret` this returns in a proc
- `quit` ends program execution
- `if` pops the last item and skips next instruction if == 0
- `!=` pops the last 2 items and pushes 1 if not equal
- `==` pops the last 2 items and pushes 1 if equal
- `<` pops the last 2 items and pushes 1 if a < b
- `>` pops the last 2 items and pushes 1 if a > b
- `&&` pops the last 2 items and ands them together
- `||` pops the last 2 items and ands them together
- `!` pops the last ites and inverts the first bit
- `sys[0-6]` syscalls

### Includes

compile with `-i {libpath}`

```slm
inc name.slm
```

### Proc definitons

```slm
{    name input output }
proc main 0     0
  {do stuff}

  {return is required}
  ret
end
```

### Class definitions

```slm
inc stdlib.slm
inc mem.slm

class name
  prop name int.SIZE
  
  proc new 0 1
    8 (heap.alloc)
    
    ret  
  end
end
```


