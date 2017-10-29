# Bash Notes

## Parameters
A parameter is an entity that stores values

There are three types of parameters:

1. positional parameters
    - The arguments on the command line are available to a shell program as numbered parameters.
    - for example: $1 depicts the first command line argument
2. special parameters
3. variables
    name=VALUE
    * Bash is very particular about spacing: not that there are no spaces before the '=' and none after.

* Add -e to the echo command if the escape sequences are to recognised.

## Ask the user for input

if we would like to ask the user for input then we use a command called `read`. This command takes the input and will save it into a variable.

```bash
#! /bin/bash
echo Hello, who am I talking to ?

read varname

echo It\'s nice to meet you $varname
```

## More with Read
we can alter the behaviour of `read` with a variety of command line options.Two commanly used options however are `-p` which allows you to specify a prompt and `-s` which makes the input silent.

This can make it easy to ask for a username and password combination

```bash
#! /bin/bash

read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo
echo login details accepted
```

## More variables

```bash
#! /bin/bash

echo What books do you like?

read game1 game2 game3

echo games are: $game1 $game2 $game3
```
* `dirs` -v
* `$@` --> depicts the entire string of the args
* `$1` --> depicts the first word of the args # args[0]
* `-z` --> returns true if the string is empty
