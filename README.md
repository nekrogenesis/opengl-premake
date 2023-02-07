# Cross Platform x86_64 OpenGL C99

## MAKE LINUX
```bash
premake5 gmake2
make
```

## MAKE WINDOWS
```ps
premake5 gmake2
$f = Get-Content 'opengl.make'
Set-Content 'opengl.make' -value 'CC = gcc',$f
make
```