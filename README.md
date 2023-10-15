# scripts
GitHub Repository: NestJS Scripts
This GitHub repository provides a collection of scripts to streamline various tasks related to managing a NestJS project and GitHub repositories.

Scripts:
1. nbp - NestJS Project Setup
This script automates the setup of a new NestJS project by creating the necessary project structure and installing required dependencies. It also sets up a database configuration file

2. gac - Git Add, Commit, and Push
This script automates the process of adding all changes, committing them, and pushing to a specified GitHub repository and branch.

Usage:
Run the Script:

Run the gac script followed by the commit message and branch name:
gac "Commit message" "branch_name"




3. cnr - Create a GitHub Repository
This script automates the creation of a new GitHub repository using the GitHub API.

4. dr - Delete a GitHub Repository
This script automates the deletion of a GitHub repository using the GitHub API.



Installtion
For macOS and Linux:
1. Clone the Repository:
 git clone git@github.com:<your_username>/nestjs-scripts.git
 cd scripts
2.Grant Execution Permissions:
 chmod +x nbp gac create_github_repo.sh delete_github_repo.sh
3. Run the Scripts:
   ./nbp project_name
   ./gac "Commit message" "branch_name"
   ./create_github_repo.sh repo_name
   ./delete_github_repo.sh repo_name


For Windows:
1. Clone the Repository:
  Open Git Bash or a terminal of your choice and run:
  git clone git@github.com:<your_username>/nestjs-scripts.git
  cd scripts

2. Run the Scripts:
   bash nbp project_name
   bash gac "Commit message" "branch_name"
   bash create_github_repo.sh repo_name
   bash delete_github_repo.sh repo_name



   

