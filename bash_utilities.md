---
title : BashNotes
author: vinaybommana
year  : 2017

---
[](tutor: --)

# find

* In order to find the subdirectories within a directory

```bash
find . -type d
```

* In order to find all the files within a directory

```bash
find . -type f
```

* In order to find a particular file whose name is known but we don't know where
  in the directory

```bash
find . -type f -name "name_of_the_file"

# we can use wild card * for finding a particular file

find . -type f -name "na*"

# Note that '-name' is case-sensitive
# to find all the names along with capital letters
find . -type f -iname "na*"
```

* In order to find all the files that were modified last ten minutes ago

```bash
find . -type f -mmin -10

# if we want to find more than 10 minutes ago
find . -type f -mmin +10

# we can combine both of those to find the files
# if we want to find the files that were modified less than 10 minutes ago
# and more than 5 minutes ago.

find . -type f -mmin -10 -mmin +5
```

* In order to find the files that were modified days ago

```bash
# in order to find the files that were modified less than 20 days ago
find . -type f -mtime -20

# less than 10 days ago and more than 5 days ago
find . -type f -mtime -10 -mtime +5
```

* we can also use `amin` and `atime` as access minutes and access days.
* we can also use `cmin` and `ctime` as access minutes and access days.

* if we want to search files based on size

```bash
# if we want to find the files over 2Gigabytes of memory in a particular directory

find . -size +2G
# kilobytes --> k
# megabytes --> M
```

* In order to find the empty files without any data
`find . -empty`

* In order to find files based on their permissions

```bash
find . -perm 777
```

ranges in vim, sed, ed

#Pipes

* A pipe is a form of *redirection* that is used in Linux and other Unix based systems
* to send the output of one program to another program for further processing.
* Redirection is the transferring of *standard output* to some other destination, such as another program, a file or a printer, instead of the display monitor
* Pipes are used to create what can be visualized as a *pipeline of commands*
* which is a temporary direct connection between two or more simple programs
* This connection makes possible the performance of some highly specialized task that none of the constituent programs could perform by themselves.

### Examples
A pipe is designated in commands by the vertical bar character

$~$

The general syntax for pipes is:

```
command_1 | command_2 [| command_3 . . .]
```

This chain can continue for any of commands or programs.

```bash
dmesg | less
```

The use of two pipes to chain three commands together could make the above example even more convenient

For example, the output of dmesg could first be piped to the *sort* filter to arrange it into alphabetic order before piping it to less:

```bash
dmesg | sort -f | less
```

The `-f` option tells *sort* to disregard *case* while sorting

# sed

The primary use of Linux command sed (short for stream editor) is to modify each line of a file or stream by replacing specified parts of the line.

$~$

It makes basic text changes to a file or input from a pipeline
## Syntax

```bash
sed OPTIONS... [SCRIPT] [INPUTFILE...]

cat command-list | sed -n '1, 4p'

# -n suppress the printing of the output in the pattern-space
# 1, 4 is the range
# p is to print
```

If a file `test.txt` contains four lines

python is a scripting language

c is a high level language

java is known for its gc

python uses reference counting
<br>
```bash
cat test.txt | sed 'p'
```
<br>
What the command internally does is take the first line of the `test.txt`<br>

put it in the pattern-space execute the command in the '' and then delete the lines in the pattern-space.<br>

# grep
# ack
# awk
# tail
# diff
# uniq
