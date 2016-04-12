import Glibc

system("touch hello.c")
var stream = fopen("hello.c", "r+")
var program = "#include <stdio.h>\n\nint main(void) {\n"
		+ "  printf(\"Hello from C!\");\n  return 0;  \n}\n"
fwrite(program, 1, program.characters.count, stream)
fclose(stream)
system("cat hello.c")
system("clang hello.c")
system("./a.out")
