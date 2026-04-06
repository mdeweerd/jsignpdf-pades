#!/bin/bash

DIRNAME=$(dirname "$(readlink -e "$0")")
DIR=$(cd "$DIRNAME" || exit 112; pwd)

[ "$OSTYPE" = "cygwin" ] && DIR="$( cygpath -m "$DIR" )"

JAVA=java
if [ -n "$JAVA_HOME" ]; then
  JAVA="$JAVA_HOME/bin/java"
fi

"$JAVA" $JAVA_OPTS -jar "$DIR/jsignpdf-pades-validator.jar" "$@"
