This repository provides an example GitHub Actions workflow that creates and destroys Octopus projects based on a template Config-as-Code project.

See the [README.md](projects/k8s-helm/README.md) in the `projects/k8s-helm` directory for a detailed description of the Terraform directory structure.

The template Octopus project OCL files are located in the [k8s-helm-template](.octopus/templates/k8s-helm-template) directory.

The workflow file is found at [serialize-k8s-helm-template.yaml](.github/workflows/serialize-k8s-helm-template.yaml)