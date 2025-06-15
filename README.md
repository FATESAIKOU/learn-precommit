# Learn Pre-commit Hooks

A practice project for learning and experimenting with Git pre-commit hooks functionality in Python development.

## Purpose

This project is designed to:
- **Learn Git hooks**: Understand how pre-commit hooks work and how to implement custom validation rules
- **Practice code quality enforcement**: Implement automated checks that run before each commit
- **Explore Python development best practices**: Learn about syntax checking, code style enforcement, and TODO management

## Features

The pre-commit hook in this project performs the following checks:
- **TODO Detection**: Blocks commits containing TODO comments to ensure clean code
- **Python Syntax Validation**: Compiles Python files to catch syntax errors before commit
- **Indentation Style Check**: Enforces 4-space indentation (blocks tab usage)

## Project Structure

```
learn-precommit/
├── setup-hooks.sh          # Script to install the pre-commit hook
├── hooks/
│   └── pre-commit         # Custom pre-commit hook script
├── src/
│   └── main.py           # Simple Python application for testing
└── .gitignore            # Git ignore file for Python projects
```

## How to Use

### 1. Install the Pre-commit Hook

Run the setup script to install the custom pre-commit hook:

```bash
./setup-hooks.sh
```

This script will:
- Create a symbolic link from `.git/hooks/pre-commit` to `hooks/pre-commit`
- Make the hook executable
- Display a success message

### 2. Test the Hook

Try making commits with different scenarios to see the hook in action:

#### Test Case 1: Normal Commit (Should Pass)
```bash
git add src/main.py
git commit -m "Add main function"
```

#### Test Case 2: Commit with TODO (Should Fail)
Add a TODO comment to `src/main.py`:
```python
# TODO: Add more features
```
Then try to commit - it should be blocked.

#### Test Case 3: Commit with Syntax Error (Should Fail)
Introduce a syntax error in `src/main.py` and try to commit.

#### Test Case 4: Commit with Tab Indentation (Should Fail)
Replace spaces with tabs in `src/main.py` and try to commit.

### 3. Bypass the Hook (If Needed)

To bypass the pre-commit hook during development:
```bash
git commit -m "Your message" --no-verify
```

## Learning Outcomes

By working with this project, you will learn:

1. **Git Hooks Fundamentals**
   - How to create and install custom Git hooks
   - Understanding the pre-commit hook lifecycle
   - Using symbolic links for hook management

2. **Code Quality Automation**
   - Implementing automated code quality checks
   - Creating meaningful error messages for developers
   - Setting up different types of validation rules

3. **Python Development Best Practices**
   - Syntax validation using `py_compile`
   - Code style enforcement (indentation rules)
   - Managing development workflow with automated checks

4. **Shell Scripting**
   - Writing bash scripts for automation
   - File system operations and conditional logic
   - Exit codes and error handling

## Requirements

- Git
- Python 3.x
- Bash shell
- Basic understanding of Git workflow

## Notes

- The hook only checks Python files (`.py` extension)
- All checks must pass for a commit to succeed
- The hook provides clear feedback about what caused the failure
- You can modify the `hooks/pre-commit` script to add your own custom checks

## Contributing

This is a learning project. Feel free to experiment with:
- Adding new validation rules
- Improving error messages
- Testing edge cases
- Exploring other Git hooks (post-commit, pre-push, etc.)
