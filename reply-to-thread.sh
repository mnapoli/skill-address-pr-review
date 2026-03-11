#!/usr/bin/env bash
# Replies to a PR review thread.
# Usage: reply-to-thread.sh <thread_id> <body>
set -euo pipefail

THREAD_ID="$1"
BODY="$2"

QUERY='mutation($threadId: ID!, $body: String!) {
  addPullRequestReviewThreadReply(input: { pullRequestReviewThreadId: $threadId, body: $body }) {
    comment { url }
  }
}'

gh api graphql -f query="$QUERY" -f threadId="$THREAD_ID" -f body="$BODY" \
  --jq '.data.addPullRequestReviewThreadReply.comment.url'
