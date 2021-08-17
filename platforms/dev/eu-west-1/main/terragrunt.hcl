# Terragrunt will copy the Terraform configurations specified by the source parameter, along with any files in the
# working directory, into a temporary folder, and execute your Terraform commands in that folder.
terraform {
  source = "${get_parent_terragrunt_dir()}/main/"

  before_hook "before_hook" {
    commands     = ["apply", "plan", "init" ,"destroy"]
    execute      = ["echo","Running Terraform"]
  }

  after_hook "after_hook" {
    commands     = ["apply", "plan", "init" ,"destroy"]
    execute      = ["echo", "Finished running Terraform"]
    run_on_error = true
  }

}
# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

