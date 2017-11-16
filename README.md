# Terraform AWS R53 (Route 53)

A simple [Hashicorp Terraform](https://www.terraform.io/) plan to create a primary DNS zone into [AWS Route 53](https://aws.amazon.com/route53‎
) and its records through variables from terraform.tfvars file.

* * *

# [*Requirements*](#requirements)

* AWS account
* Terraform => 0.10.8

* * *

# [*DNS record types*](#dns-record-types)

Supported record types as follows:

| Record type   | Supported |
| ------------- | ---------- |
| A             | YES        |
| AAAA          | NO         |
| CAA           | NO         |
| CNAME         | YES        |
| LOC           | NO         |
| MX            | YES        |
| NS            | NO         |
| PTR           | NO         |
| SOA           | NO         |
| SRV           | NO         |
| SPF           | NO         |
| TXT           | YES        |

* * *

## [Quick Start](#quickstart)

Clone the repository

```
git clone --depth 1 git@github.com:therefore-ca/terraform-aws-r53.git
```

Change folder
```
cd terraform-aws-r53
```

Initialize Terraform

```
terraform init
```

Edit *terraform.tfvars* file
```
vim terraform.tfvars
```

Check the plan
```
terraform plan
```

Create resources
```
terraform apply
```

* * *

## [How-to](#how-to)

It is possible to perform any of the actions described below:

### [*Plan*](#how-to-plan)

Plan the creation of resources

```
terraform plan
```

### [*Create*](#how-to-create)

Create the resources

```
terraform apply
```

### [*Destroy*](#how-to-destroy)

Destroy the resources

```
terraform destroy
```

* * *

## [Feedback](#feedback)

### [*Issues*](#issues)

If you have problems, bugs, issues with or questions about this, please open it in [Github issues page](https://github.com/therefore-ca/terraform-aws-r53/issues).

__Needless to say__, please do a little research before posting.

### [*Contributing*](#contributing)

We gladly invite you to contribute for fixes, new features, or updates, large or small; We are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a GitHub issue, especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you a feedback on your design, and help you find out if someone else is working on the same thing.
* * *
