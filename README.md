# Terraform Project

---

## **Infrastructure Components**

### **1. S3 Bucket**

- Stores the Terraform state file (`tfstate`).
- Versioning is enabled to track changes over time.
- DynamoDB table is configured for state locking to prevent concurrent updates.

### **2. VPC and EC2 Instance**

- Custom VPC with a public subnet.
- EC2 instance with:
  - Public IP for SSH access.
  - Security group allowing:
    - SSH (port 22).
    - HTTP/HTTPS traffic (optional).
- Uses variables for flexible AMI ID and instance type configuration.

---

## **Project Structure**

```plaintext
/terraform_project
├── main.tf           # Main Terraform configuration file
├── variables.tf      # Variable definitions
├── terraform.tfvars  # Actual values for variables
├── backend.tf        # Backend configuration for S3
├── README.md         # Project documentation


```

---

## How to Run

### Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yogurt98/INFO8870_final
cd INFO8870_final
```

### Step 2: Create terraform.tfvars

Create the terraform.tfvars file to store necessary info.
Here is an example:

```plaintext
region         = "us-east-1"
ami_id         = "ami-12345678"
instance_type  = "t2.micro"
bucket_name = "jingxu-terraform-state"
```

### Step 3: Initialize Terraform

Initialize the project and configure the backend:

```bash
terraform init
```

### Step 4: Review the Plan

Preview the resources that will be created:

```bash
terraform plan
```

### Step 5: Apply the Configuration

Deploy the infrastructure:

```bash
terraform apply
```
