# Base Workflows

Base reusable workflows for [Github Actions](https://docs.github.com/en/actions/using-workflows/reusing-workflows).

## Workflows

- Python: build tests, build and deploy Azure Functions, build packages
- Bicep: validate bicep files, deploy bicep files
- Azure: create resources in Azure using a common service principal

All workflows will be located in `.github/workflows`. There are also utility scripts release in `release` and bicep common files in `bicep` directories respectively.