# Git module

I completed the Git module and want to apply these ideas to this DevOps portfolio rather than stopping at memorising commands.

## Order

Working directory > git add > staging area > git commit > local repository > git push > remote repository

## Useful commands

bash
git status
git add README.md
git commit -m "message"
git log --oneline --graph --all
git diff
git diff --staged
git switch -c linux-notes
git merge linux-notes

## Rewriting history vs reversing a commit

- git reset --hard HEAD~1 moves a local branch and discards local uncommitted work; it does NOT undo a pushed commit on GitHub.
- git revert <commit> creates a new commit reversing changes, so it is usually safer for shared history.
- git reflog can help recover local references after mistakes (subject to retention).

## Practices to develop

- Short meaningful commits.
- Feature branches and pull requests for significant work.
- A README explaining the purpose, usage and evidence for each project.
- No passwords, tokens, private keys or credentials in Git history.
