# variables

Like python we don't have to declare variables in the shell before using them.
Instead, we can create them simply by using them.
* for example, when we assign an initial value to them.

* By default, all variables are considered and stored as strings.
* even when they are assigned numeric values
* The shell and some utilities will convert numeric strings to their values in order to operate them as required.

Within the shell we can access the contents of a variable by preceding its name with a `$`.
* whenever we extract the contents of a variable, we must give the variable a preceding `$`.

---

# Quoting

The behaviour of variables inside quotes depends on the type of quotes we use.
If we enclose a `$` variable expression in double quotes, then it's replaced with its value when the line is executed.
If we enclose it in single quotes, then no substitution takes place.

