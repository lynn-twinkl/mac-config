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

## Resyncing Local Directory to Existing Repo
For context, this is something I had to do a lot when I bought the new computer. Since my work directories are in iCloudDrive but I was working from a new machine, directories that had originally been synced to a GH repo on my old mac were not synced on the new one. The steps below show you how to resync a directory to an existing GH Repo and ensure it's synced to the last commit.

1. cd into the directory you want to sync
2. `git init`
3. `git remote add origin https://github.com/username/repo-name.git`
4. Fetch the latest changes from the repo: `git fetch origin`
5. Clean any local, untracked files:  `git clean -fd`
6. Reset local directory to match the latest commit: `git reset --hard origin/main`
7. `git pull origin main`
