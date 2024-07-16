This directory has three subdirectories:

* `cleanup`: This directory contains Terarform modules for projects that are to be destroyed. You can think of this directory as the recycle bin.
* `projects`: This directory containers Terraform modules for projects to be created in Octopus. The name of the subdirectory is assumed to be the name of the project to be created.
* `template`: This directory contains the Terraform module created by `octoterra` based on the template project. You do not edit the files in this directory, as any changes will be overwritten by the automatic serialization process.

The GitHub Actions workflow loops over the subdirectories in the `projects` directory and creates a Terraform workspace for each project. The workflow then runs `terraform init` and `terraform apply` for each workspace. The workflow also runs `terraform destroy` for each workspace in the `cleanup` directory.

You can copy a directory from `projects` to `cleanup` to have it removed, and from `cleanup` to `projects` to restore it.