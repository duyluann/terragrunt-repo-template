# 🚧 Terraform Project Template

This repository provides a structured template for Terraform projects, enabling consistent and scalable infrastructure deployments. The template is equipped with best practices, CI/CD integration, and environment-specific configurations to streamline your infrastructure management.

## 📁 Repository Structure

```bash
.
├── backend.tf                          # 🔧 Defines the backend configuration for Terraform
├── CHANGELOG.md                        # 📝 Change log of the project
├── .checkov.yml                        # 🔒 Configuration file for Checkov security scanner
├── CODEOWNERS                          # 👥 Defines the code owners for the repository
├── .devcontainer                       # 🐳 Development container configuration
│   ├── devcontainer.json               # 📦 Devcontainer configuration file
│   └── Dockerfile                      # 🐋 Dockerfile for the dev environment
├── .editorconfig                       # 🖊️ Configuration for consistent coding styles
├── environments                        # 🌍 Holds environment-specific variables
│   ├── dev
│   │   └── dev.tfvars                  # 🛠️ Development environment variables
│   ├── prod
│   │   └── prod.tfvars                 # 🚀 Production environment variables
│   └── qa
│       └── qa.tfvars                   # 🔍 QA environment variables
├── .github                             # 🛠️ GitHub-specific configurations
│   ├── dependabot.yml                  # 🤖 Dependabot configuration
│   ├── ISSUE_TEMPLATE                  # 📝 GitHub issue template
│   │   └── issue_template.md           # 📝 Issue template file
│   ├── pull_request_template.md        # 📝 Pull request template
│   └── workflows                       # ⚙️ GitHub Actions workflows
│       ├── lint-pr.yaml                # 🧹 Linting workflow for pull requests
│       ├── pre-commit-auto-update.yaml # 🔄 Pre-commit hook auto-update workflow
│       ├── release.yaml                # 🚀 Release workflow
│       ├── stale.yaml                  # ⏳ Stale issue management workflow
│       ├── template-repo-sync.yaml     # 🔄 Template repository sync workflow
│       └── terraform-aws.yml           # ☁️ Terraform AWS workflow
├── .gitignore                          # 🚫 Files and directories to be ignored by Git
├── LICENSE                             # ⚖️ License for the project
├── locals.tf                           # 🛠️ Local variables for Terraform
├── main.tf                             # 🌐 Main Terraform configuration
├── modules                             # 📦 Custom Terraform modules
│   └── module1
│       ├── main.tf                     # 🌐 Main configuration for module1
│       ├── outputs.tf                  # 📤 Output definitions for module1
│       └── variables.tf                # 📥 Input variables for module1
├── .pre-commit-config.yaml             # 🛠️ Pre-commit hooks configuration
├── providers.tf                        # ☁️ Provider configurations for Terraform
├── README.md                           # 📖 Project documentation (this file)
├── .releaserc.json                     # 🚀 Semantic release configuration
├── .terraform.lock.hcl                 # 🔒 Terraform lock file
├── .tflint.hcl                         # 🛠️ Terraform linting configuration
├── variables.tf                        # 📥 Input variables for the project
└── .vscode                             # 🖥️ VSCode-specific configurations
    └── extensions.json                 # 🛠️ Recommended extensions for VSCode
```

## 🚀 Getting Started

### 🧰 Prerequisites

- Terraform: Ensure you have Terraform installed.
- Docker: Required for the development container setup.
- VSCode: Recommended for development, with the Dev Containers extension.

### 🖥️ Development Environment

To get started with development, you can use the pre-configured development container:

1. Open in VSCode:

- Install the Dev Containers extension.
- Open the repository in VSCode.
- You should see a prompt to reopen the project in the dev container.

2. Build and Run:

- The dev container is pre-configured with all the necessary tools and extensions.
- You can start writing and testing your Terraform configurations immediately.

### 🛠️ Terraform Configuration

- Backend Configuration: The `backend.tf` file configures the remote state storage for Terraform.
- Environment Variables: The `environments/` directory contains environment-specific variable files (`.tfvars`).
- Modules: Reusable Terraform modules are stored in the `modules/` directory.

### ✅ Pre-Commit Hooks

Pre-commit hooks are set up to ensure code quality and consistency. To install the pre-commit hooks:

```bash
pre-commit install
```

## ⚙️ Semantic Commit Messages
This project uses [Semantic Commit Messages](https://www.conventionalcommits.org/) to ensure meaningful and consistent commit history. The format is as follows:

```php
<type>(<scope>): <subject>
```

### Types

- `feat`: A new feature (e.g., `feat: add login functionality`).
- `fix`: A bug fix (e.g., `fix: resolve login button issue`).
- `docs`: Documentation changes (e.g., `docs: update API documentation`).
- `style`: Code style changes (formatting, missing semi-colons, etc.) without changing logic (e.g., `style: fix indentation`).
- `refactor`: Code changes that neither fix a bug nor add a feature (e.g., `refactor: update user controller structure`).
- `test`: Adding or updating tests (e.g., `test: add unit tests for login service`).
- `chore`: Changes to build process, auxiliary tools, or libraries (e.g., `chore: update dependencies`).

### Scope

Optional: The part of the codebase affected by the change (e.g., `feat(auth): add OAuth support`)

### Subject

A brief description of the change, using the imperative mood (e.g., `fix: resolve issue with user authentication`).

## 🚀 Semantic Release

This project is configured with [Semantic Release](https://semantic-release.gitbook.io/semantic-release) to automate the release process based on your commit messages.

### How It Works

1. Analyze commits: Semantic Release inspects commit messages to determine the type of changes in the codebase.
2. Generate release version: Based on the commit type, it will automatically bump the version following semantic versioning:
- fix → Patch release (e.g., 1.0.1)
- feat → Minor release (e.g., 1.1.0)
- BREAKING CHANGE → Major release (e.g., 2.0.0)
3. Create release notes: It generates a changelog from the commit messages and includes it in the release.
4. Publish: It automatically publishes the new version to the repository (and any other configured registries, e.g., npm).

## 🤝 Contributing

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Submit a pull request with a detailed description of the changes.

## 📜 License

This project is licensed under the [MIT License](LICENSE).
