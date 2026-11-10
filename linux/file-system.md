# File system navigation and file operations

## Five commands I keep coming back to

| Command | Purpose | Example |
| `pwd` | Print my current working directory | `pwd` |
| `ls -lah` | Show hidden items, permissions and human-readable sizes | `ls -lah` |
| `cd` | Change directory | `cd /var/log` |
| `find` | Recursively search by attributes | `find . -type f -name '*.txt'` |
| `file` | Inspect the likely type of a file | `file data.txt` |

## Reading files

| Command | Purpose | Example |
| `cat` | Read contents of a file | `cat filename` |
| `head -n 20` | Read first 20 lines of a file | `head -n 20 filename` |
| `tail -n 20` | Read last 20 lines of a file | `tail -n 20 filename` |

## Relative and absolute paths

- `/home/oumar/projects` is an absolute pathname: it starts at filesystem root `/`.
- `./report.txt` refers to a file in the current directory.
- `../report.txt` refers to a file one directory above.
- `~/report.txt` is expanded by the shell to a pathname in the home directory.

## Unusual filenames

A file literally named `-` can confuse programs such as `cat`, because some treat `-` as standard input.

cat ./-                  # pathname rather than stdin marker
cat -- -notes.txt        # for tools supporting the -- end-of-options convention
cat 'my notes.txt'       # quote a name with spaces
cat my\ notes.txt        # alternatively, escape its spaces
