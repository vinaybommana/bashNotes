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

# Redirection

inputs and outputs of linux programs (not just shell programs) can be redirected.

```bash
ls -l > lsoutput.txt
```

* This saves the output of the `ls` command into a file called `lsoutput.txt`

* However, there is much more to redirection. refer `filedescriptors`.
* filedescriptor 0 is the standard input to a program.
* filedescriptor 1 is the standard output to a program.
* filedescriptor 2 is the standard error output to a program.

* to redirect the standard error output, preface the `>` operator with the number of the file descriptor
* because the standard error is on file descriptor 2, use the `2>` operator.
* this is often used to discard error information and prevent it from appearing on the screen.

Suppose you want to use the `kill` command to kill a process from a script.
There is always a slight risk that the process will die before the `kill` command is executed.
If this happens, `kill` will write an error message to the standard message to the standard error output.
* which by default will appear on the screen.
* by redirecting both the standard output and the error, you can prevent the `kill` command from writing any text to the screen.

```bash
$ kill -HUP 1234 > killout.txt 2> killerr.txt
```

will put the output and error information into seperate files.

If we want to capture both sets of output into a single file, you can use the `>&` operator to combine the two outputs.

```bash
$ kill -1 1234 > killouterror.txt 2> &1
```

will put both the output and error outputs into the same file. Notice the order of the operators.

* This reads as "redirect standard output file `killouterror.txt`, and then direct standard error to the same place as the standard output."

```bash
$ more $(grep -l POSIX *)
$ grep -l POSIX * | more
```
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

---

# readline

* line editor
* we commanly use a line editor when we use shell to edit commands
