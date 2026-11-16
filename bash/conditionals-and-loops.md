# Conditional Statements and Loops

## Conditional Statements

Conditional statements allow scripts to make decisions based on whether a condition evaluates to true or false.

### If, Elif and Else

```bash
#!/bin/bash

age=19

if [ "$age" -lt 13 ]; then
    echo "You are a child"
elif [ "$age" -lt 18 ]; then
    echo "You are a teenager"
else
    echo "You are an adult"
fi
```

Only the first matching branch executes.

## Comparison Operators

### Integer Comparisons

| Operator | Meaning |
|---|---|
| `-eq` | Equal to |
| `-ne` | Not equal to |
| `-gt` | Greater than |
| `-ge` | Greater than or equal to |
| `-lt` | Less than |
| `-le` | Less than or equal to |

### String Comparisons

```bash
name="Oumar"

if [[ "$name" == "Oumar" ]]; then
    echo "Names match"
fi
```

`==` compares strings inside `[[ ... ]]`, while `-eq` performs numerical equality comparisons.

Bash also supports arithmetic conditions using parenthesis:

```bash
if (( age >= 18 )); then
    echo "Adult"
fi
```

## For Loops

A `for` loop is useful when iterating through a known range or collection.

```bash
for ((i=1; i<=5; i++)); do
    echo "Iteration: $i"
done
```

This prints numbers 1 through 5.

### Iterating Through Values

```bash
for server in web01 web02 web03; do
    echo "Checking $server"
done
```

This structure is useful when processing known lists of servers, files, or environments.

## While Loops

A `while` loop repeats while a condition remains true.

```bash
count=1

while [ "$count" -le 5 ]; do
    echo "Count: $count"
    ((count += 1))
done
```

A `while` loop is useful when the number of iterations is unknown.

## Break and Continue

`break` exits a loop early.

```bash
for ((i=1; i<=10; i++)); do
    if (( i == 5 )); then
        break
    fi

    echo "$i"
done
```

`continue` skips the remainder of the current iteration.

```bash
for ((i=1; i<=5; i++)); do
    if (( i == 3 )); then
        continue
    fi

    echo "$i"
done
```