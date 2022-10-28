# Base Workflows

Base reusable workflows for [Github Actions](https://docs.github.com/en/actions/using-workflows/reusing-workflows).

All can be found unter `.github/workflow`

## List of worfklows

- `build_deploy_terraform.yml`: 
  - *name*: Terraform Deployment
  - *description*: Workflow for terraform deployments
- `build_python_azure_function.yml`
  - *name*: Build Python Azure Function
  - *description*: Builds an Azure Python Function, executes unit tests and uploads .zip artifact
- `deploy_python_azure_function.yml`
  - *name*: Deploy Python Azure Function
  - *description*: Deploys built Python Function to Azure
- `build_python_tests.yml`:
  - *name*: Build Python Tests
  - *description*: Run Python unit tests and linter.