- In all interactions and commit messages, be extremely concise and sacrifice
  grammar for the sake of concision.

## PR Description

- MUST be factual, and concise, stick to facts and highlight area that need more
  attention

## PR Comments

- When tagging Claude in GitHub issues, use '@claude'

# Tests

- Tests should be efficient and concise
- Prevent duplication by creating reusable structures or method to generate mock
  data

## GitHub

- Your primary method for interacting with GitHub should be the GitHub CLI
  (`gh`).
- When creating branches, prefix them with pastjean/ to indicate ownership.

## Plans

- At the end of each plan, use AskUserQuestion to ask a list of unresolved
  questions to answer, if any. Make the questions extremely concise. Sacrifice
  grammar for the sake of concision.

Use AskUserQuestion:

```
{
  questions: [
    {
      question:
        'Did this batch reveal any patterns that should apply to ALL future migrations?',
      header: 'Global decisions',
      multiSelect: false,
      options: [
        {
          label: 'Yes, capture decisions',
          description:
            'I identified patterns (component wrapping, deferral rules, ESLint ignores, etc.) that should apply to future batches',
        },
        {
          label: 'No patterns identified',
          description:
            "This batch didn't reveal new patterns applicable to future migrations",
        },
      ],
    },
  ]
}
```
