#!/bin/bash

echo "Home directory: $HOME"
echo "Current user: $LOGNAME"
echo "Shell being used: $SHELL"
echo "Current PATH: $PATH"

export MY_VARIABLE="Hello from my variable"

echo "My new variable: $MY_VARIABLE"

bash -c 'echo "MY_VARIABLE in child process: $MY_VARIABLE"'

unset MY_VARIABLE

echo "MY_VARIABLE after unsetting: $MY_VARIABLE"
