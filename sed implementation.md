
# sed

let's see some simple sed implementations


```bash
%%bash
cat sample
```

    python is a scripting language
    c is a high level language
    java is known for its gc
    python uses reference counting



```bash
%%bash
cat sample | sed -n 'p'
```

    python is a scripting language
    c is a high level language
    java is known for its gc
    python uses reference counting



```bash
%%bash
cat sample | sed -n '2, 3p'
```

    c is a high level language
    java is known for its gc



```bash
%%bash
cat sample | sed -n '/python/,${s/python/perl/; p}'
```

    perl is a scripting language
    c is a high level language
    java is known for its gc
    perl uses reference counting



```bash
%%bash
cat sample | sed -n '2{s/c/cpp/}; p'
```

    python is a scripting language
    cpp is a high level language
    java is known for its gc
    python uses reference counting

