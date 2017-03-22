# Empty OCaml Project for VS Code
A empty OCaml project for Visual Studio Code. 
Works perfectly with the OCaml extension for VS Code (https://marketplace.visualstudio.com/items?itemName=hackwaly.ocaml). 

All '.ml'-src-files belong into the 'src/'-folder. 

## MAKEFILE

 | command              | description
 | :------------------- | :----------------------------------------------------- |
 | 'make <file>.byte'   | builds 'src/<file>.ml' as a byte file                  |
 | 'make <file>.debug'  | builds 'src/<file>.ml' as a byte file for debuging     |
 | 'make <file>.native' | builds 'src/<file>.ml' as a binary                     |
 | 'make <file>'        | builds all three goals from above for 'src/<file>.ml'  |
