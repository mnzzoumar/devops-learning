# Troubleshooting journal: problems I encountered

These are examples drawn from my Linux and Git learning.

## Why did a push ask for GitHub credentials after SSH worked?

**Reason:** The repository remote was still HTTPS. Testing SSH does not automatically rewrite a Git remote URL.

```bash
git remote -v
# If desired, change the URL to the actual SSH URL shown on GitHub:
# git remote set-url origin git@github.com:USERNAME/REPO.git
```

## Why did `cat -` appear to hang?

**Reason:** `cat` interprets a standalone `-` as standard input. `cat ./-` names an actual file called `-` in the current directory.

## What happens after `git reset --hard HEAD~1`?

**Reason:** Local history moves back one commit; the remote history doesn't automatically change. A normal push may be rejected. Prefer `git revert` for already-shared history; only use `--force-with-lease` when history rewriting is intentional and safe.
