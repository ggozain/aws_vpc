# Organization VPC and Networking Infrastructure

This repository contains Terraform scripts to create an organization's VPC (Virtual Private Cloud) and networking components on AWS (Amazon Web Services). The infrastructure created by these scripts will provide a secure and isolated network environment for your organization's applications and services.

## Prerequisites

Before running the Terraform scripts, make sure you have the following prerequisites set up:

1. AWS Account: You should have an AWS account where you want to create the VPC and networking infrastructure.
2. Terraform Cloud Account: Sign up for a Terraform Cloud account at [https://app.terraform.io/signup/account](https://app.terraform.io/signup/account). Terraform Cloud will be used to manage the execution and state of your Terraform infrastructure.
3. AWS IAM Credentials: Set up an IAM user with appropriate permissions and obtain the necessary access key and secret key to authenticate with AWS. Refer to the AWS documentation for instructions on creating IAM users and obtaining credentials.

## Getting Started

To use these Terraform scripts with Terraform Cloud on AWS, follow the steps below:

1. Clone this repository to your local machine using the following command:

    ```shell
   git clone https://github.com/ggozain/aws_vpc


2. Change to the repository's directory:

    ```shell
   cd aws_vpc

3. Configure the AWS IAM credentials by exporting the necessary environment variables or updating the `vpc.auto.tfvars` file with the appropriate values. Refer to the AWS documentation for details on the required variables.

4. Customize the `main.tf` file to match your organization's requirements. You may need to adjust the VPC CIDR blocks, subnet configurations, security groups, or any other networking components based on your needs. Review the comments within the file for guidance.

5. Initialize the Terraform project by running the following command:

    ```shell
   terraform init


6. Log in to Terraform Cloud using the Terraform CLI:
    ```shell
   terraform login

7. In the Terraform Cloud web interface, create a new workspace and connect it to this repository.

8. Configure the workspace settings, including the AWS IAM credentials and any required variables.

9. Queue a plan in Terraform Cloud to validate the changes.

10. Apply the changes in Terraform Cloud to create the VPC and networking components.

 **Note:** Creating the VPC and networking components may take some time. Monitor the Terraform Cloud workspace logs for progress and completion.

11. Once the Terraform apply command completes successfully, your organization's VPC and networking infrastructure will be created on AWS.

## Maintenance and Updates

If you need to make changes to the networking infrastructure, follow these steps:

1. Update the Terraform configuration files (`main.tf`, etc.) as per your requirements.

2. Commit and push the changes to this repository.

3. Terraform Cloud will automatically detect the changes and queue a new plan.

4. Apply the changes in Terraform Cloud to update the VPC and networking components.

Remember to review the changes carefully before applying them to your infrastructure.

## Destroying the Infrastructure

If you want to tear down the created infrastructure, you can trigger the destroy operation in Terraform Cloud. This will permanently delete all the resources created by these Terraform scripts. Proceed with caution and ensure you have backups or snapshots of any valuable data.

## Contributions

Contributions to this repository are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. Feel free to modify and use the provided scripts according to
