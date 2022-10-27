![banner](/docs/banner.png)

[![compile](https://github.com/slam-lang/slam/actions/workflows/compile.yml/badge.svg)](https://github.com/slam-lang/slam/actions/workflows/compile.yml) [![wakatime](https://wakatime.com/badge/user/faa04513-4c3c-4d82-bcc8-ee5df73a3067/project/2972f831-1e2d-4613-972f-ab9404284492.svg)](https://wakatime.com/badge/user/faa04513-4c3c-4d82-bcc8-ee5df73a3067/project/2972f831-1e2d-4613-972f-ab9404284492) ![Lines of code](https://img.shields.io/tokei/lines/github/slam-lang/slam)

## About

Ive always wanted to make my own programming language, so heres the process.

## Types

Types are pointless.

## Inspiration

- [porth](https://gitlab.com/tsoding/porth)
- c

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
