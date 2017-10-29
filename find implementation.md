
# find command implementation

let us understand find command


```bash
%%bash
ls
```

    bashNotes.pdf
    bash_utilities.md
    command-list
    README.md
    sample
    sed implementation.ipynb
    sed implementation.md
    Untitled.ipynb



```bash
%%bash
cd sample
ls -lah
```

    total 116K
    drwxrwxr-x 28 vinay vinay 4.0K Oct 29 09:00 .
    drwxrwxr-x  5 vinay vinay 4.0K Oct 29 09:02 ..
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:01 directorya
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryb
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryc
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryd
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directorye
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryf
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryg
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryh
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryi
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryj
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryk
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryl
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directorym
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryn
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryo
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryp
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryq
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryr
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directorys
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryt
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryu
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryv
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryw
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryx
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryy
    drwxrwxr-x  2 vinay vinay 4.0K Oct 29 09:00 directoryz


we have some directories here. let us use find command to find the file in the directories


```bash
%%bash
echo $PWD
cd sample

find . -type d -name "direc*y"
```

    /home/vinay/Dropbox/notes/bashNotes
    ./directoryy



```bash
%%bash

find . -type f -name "a*"
```

    ./.git/hooks/applypatch-msg.sample
    ./sample/directorya/a4.txt
    ./sample/directorya/a1.txt
    ./sample/directorya/a6.txt
    ./sample/directorya/a2.txt
    ./sample/directorya/a9.txt
    ./sample/directorya/a3.txt
    ./sample/directorya/a8.txt
    ./sample/directorya/a7.txt
    ./sample/directorya/a5.txt


if we want to find case insensitive files also with `a*` wildcard`


```bash
%%bash

find . -type f -iname "a*"
```

    ./.git/hooks/applypatch-msg.sample
    ./sample/directorya/a4.txt
    ./sample/directorya/a1.txt
    ./sample/directorya/a6.txt
    ./sample/directorya/a2.txt
    ./sample/directorya/a9.txt
    ./sample/directorya/a3.txt
    ./sample/directorya/a8.txt
    ./sample/directorya/a7.txt
    ./sample/directorya/a5.txt
    ./sample/directoryg/As.txt
    ./sample/directoryg/Ak.txt
    ./sample/directoryg/Aw.txt
    ./sample/directoryg/Aj.txt
    ./sample/directoryg/Ah.txt
    ./sample/directoryg/Au.txt
    ./sample/directoryg/Ae.txt
    ./sample/directoryg/Az.txt
    ./sample/directoryg/Av.txt
    ./sample/directoryg/Al.txt
    ./sample/directoryg/An.txt
    ./sample/directoryg/Af.txt
    ./sample/directoryg/Aa.txt
    ./sample/directoryg/Ay.txt
    ./sample/directoryg/Ac.txt
    ./sample/directoryg/At.txt
    ./sample/directoryg/Ag.txt
    ./sample/directoryg/Am.txt
    ./sample/directoryg/Aq.txt
    ./sample/directoryg/Ai.txt
    ./sample/directoryg/Ar.txt
    ./sample/directoryg/Ap.txt
    ./sample/directoryg/Ao.txt
    ./sample/directoryg/Ax.txt
    ./sample/directoryg/Ab.txt
    ./sample/directoryg/Ad.txt


In order to find files that were modified last ten minutes ago


```bash
%%bash

#find . -type f -mmin -10
#find . -type f -mmin +10
```


```bash
%%bash

#find . -empty;
```

In order to delete all these empty files. we can use the above commands


```bash
%%bash

find . -empty | xargs rm -rf
find . -empty | xargs -0 rm -rf # if files contains whitespaces
find . -empty -exec rm -rf {} \;
find . -empty -delete
```
