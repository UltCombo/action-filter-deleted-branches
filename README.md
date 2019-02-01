# GitHub Action to filter deleted branches

Stops workflow if push event is triggered by deleting a branch.

This action solves the problem of GitHub running the Actions workflow for the `push` event on the default branch whenever any branch is deleted, which could potentially have unexpected consequences (unintentional deployments etc.).

## Usage

Add this action to the beginning of the workflow. It does not require any arguments, environment variables or secrets.

```
action "Filter deleted branches" {
  uses = "UltCombo/action-filter-deleted-branches@master"
}
```

## Related

- [Delete merged branch](https://github.com/SvanBoxel/delete-merged-branch#delete-merged-branch): GitHub App/Action to automatically deleted merged branches.
