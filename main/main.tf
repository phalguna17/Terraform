module "test_policy"
source = "s3::https://s3-eu-west-1.amazonaws.com/s3-terraform-515780219458-ids-dev/hidmodules_v3.0.zip//hidmodules/iam/policy"
policy_name = "myfirstpolicy"
policy_description = "Policy creation for testing"
policy_path = "templates/policies/mytestpolicy.json"
policy_file = "mytestpolicy"
policy_tags = {
    "Name" = "test"
    "Purpose" = "Documentation"
    "User"    = "TerraPhal"
}