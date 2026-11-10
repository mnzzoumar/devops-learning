# Linux permissions and ownership

Linux permissions control which users can **read**, **write**, or **execute** files and directories.

## Read a permission string

Example: `-rwxr-xr-x`

- Owner permissions: `rwx`.
- Group permissions: `r-x`.
- Others' permissions: `r-x`.

Numeric modes: read=4, write=2, execute=1. So `644` means owner read/write, group read-only, others read-only.