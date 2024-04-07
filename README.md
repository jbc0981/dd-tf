
# Datadog-Terraform (dd-tf)

### Purpose:
This is a repo that shows an exaple of how to use Terraform to manage Datadog resources. In this specific example it is to create a Log Monitor in Datadog. This is also deployed using GitHub Actions based on various labels and PR states.

### Assumptions
* You have another IaC process that creates the needed AWS IAM role with the appropriate permissions needed to configure the Terraform state in AWS S3 and DynamoDB. An example of the permissions needed can be found [here](https://developer.hashicorp.com/terraform/language/settings/backends/s3).
* You will need a Datadog API Key and Secret that are stored in the Github secrets. This is needed in order for the GitHub actions to run the plan and apply.
