# Base Workflows

Base reusable workflows for [Github Actions](https://docs.github.com/en/actions/using-workflows/reusing-workflows).

All can be found unter `.github/workflow`

## List of worfklows

### Terraform deployment 

  - `build_deploy_terraform.yml`: 
  - Workflow for terraform deployments
  
### Build Python Azure Function

  - `build_python_azure_function.yml`
  - Builds an Azure Python Function, executes unit tests and uploads .zip artifact

### Deploy Python Azure Function

  - `deploy_python_azure_function.yml`
  - Deploys built Python Function to Azure

### Run Python Tests

  - `build_python_tests.yml`:
  - Run Python unit tests and linter.
