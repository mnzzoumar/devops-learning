# Error Handling and Debugging

## Overview

Error handling allows Bash scripts to identify failures and respond appropriately. It's important in DevOps, where scripts may execute automatically without someone monitoring every command.

## Exit Codes

Every command returns an exit status.

- `0` indicates success.
- A non-zero value indicates an error.

The exit status of the previous command is stored in `$?`.

```bash
ls /etc/passwd
echo $?
```

A successful command normally returns `0`.

### Checking Exit Codes

```bash
if ls /etc/passwd > /dev/null 2>&1; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
```

The condition checks the command's exit status directly. This is preferable to running another command before inspecting `$?`, because `$?` always refers to the most recently completed command.

### Redirecting Output

```bash
command > output.txt         # Redirect stdout
command 2> errors.txt        # Redirect stderr
command &> all-output.txt    # Redirect both (Bash syntax)
command 2> /dev/null         # Discard errors
```

## Division by Zero

Arithmetic scripts should validate denominators before division.

```bash
if (( denominator == 0 )); then
    echo "Error: Cannot divide by zero" >&2
    exit 1
fi
```

Bash arithmetic uses integers by default, so `5 / 2` produces `2` rather than `2.5`.

## Debugging Scripts

Bash provides useful debugging options.

```bash
bash -n script.sh   # Check syntax without executing
bash -x script.sh   # Trace commands during execution
```

The `-x` option helps reveal variable values and the commands being executed.

Be careful when using it with scripts containing passwords or tokens, as tracing can expose sensitive values.

## Strict Mode

Some scripts begin with:

```bash
set -euo pipefail
```

- `-e` exits on certain unhandled command failures.
- `-u` reports unset variable expansions.
- `pipefail` makes a pipeline report failure when any component fails.

These options can help detect errors, but they have exceptions and require careful handling of expected failures and they are not a replacement for input validation and deliberate error handling.
