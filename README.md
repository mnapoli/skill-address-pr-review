# Address PR Review

A Claude Code skill that reviews pull request comments and CI failures, then addresses them automatically.

```
/address-pr-review
```

- Fixes CI failures
- Reads inline pull request comments (ignores resolved comments)
- Makes code changes
- Pushes and replies in each thread

## Prerequisites

- [GitHub CLI](https://cli.github.com/) (`gh`) installed and authenticated
- Claude Code

## Installation

Clone into your Claude Code skills directory:

```bash
git clone git@github.com:mnapoli/skill-address-pr-review.git ~/.claude/skills/address-pr-review
```

## Usage

From a branch with an open PR:

```
/address-pr-review
```

Claude will fetch unresolved threads and CI failures, fix the issues, and reply to reviewers.

## Limitations

- CI failure extraction is designed for GitHub Actions — other CI systems may not work
- Install path is fixed at `~/.claude/skills/address-pr-review/`
