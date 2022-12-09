# Base Workflows

Base reusable workflows for [Github Actions](https://docs.github.com/en/actions/using-workflows/reusing-workflows).

All can be found unter `.github/workflow`

## Terraform

  - `build_deploy_terraform.yml`: Workflow for terraform deployments
  
## Azure Functions: Python

  - (*build*) `build_python_azure_function.yml`. Builds an Azure Python Function, executes unit tests and uploads .zip artifact
  - (*deploy*) `deploy_python_azure_function.yml`. Deploys built Python Function to Azure.

## Python: Tests

  - `build_python_tests.yml`: Run Python unit tests and linter.
