# GitHub Terminal Commands

## Creating New Repo
This command allows you to create a repo fully form the command line, without having to go to gihthub. For this command to work, GitHub CLI will need to be installed.

1. Create or go to the local directory you want to make a repository from.
2. Once there, use `git init` to initialize github.
3. To create a new repository: `gh repo create <repository-name> --public --source=. --remote=origin`
4. From here you can go ahead and add a **README** file and a **gitignore** file.
5. When running the first commit:

`git add .`
`git commit -m "Commit message"`
`git push -u origin main`
