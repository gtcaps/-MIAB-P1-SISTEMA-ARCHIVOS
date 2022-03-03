#!/usr/bin/zsh

CLASSNAME=$1
UPPER=$(echo $CLASSNAME | tr '[:lower:]' '[:upper:]')

echo $UPPER

if [ -z "$1" ]; then
    echo "No puedo crear la clase"
else
    # Cabecera de la clase
    printf "#ifndef %s_H\n" $UPPER >> "./src/$CLASSNAME.h"
    printf "#define %s_H\n\n" $UPPER >> "./src/$CLASSNAME.h"
    printf "class %s {\n" $CLASSNAME >> "./src/$CLASSNAME.h"
    printf "\tpublic:\n" >> "./src/$CLASSNAME.h" 
    printf "\t\t%s();\n" $CLASSNAME >> "./src/$CLASSNAME.h"
    printf "};\n\n" >> "./src/$CLASSNAME.h"
    printf "#endif //%s_H" $UPPER >> "./src/$CLASSNAME.h" 

    # CPP de la clase
    printf "#include \"%s.h\"\n\n" $CLASSNAME >> "./src/$CLASSNAME.cpp"
    printf "%s::%s() {}" $CLASSNAME $CLASSNAME >> "./src/$CLASSNAME.cpp"
fi
