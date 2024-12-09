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

````plaintext
/terraform_project
├── main.tf           # Main Terraform configuration file
├── variables.tf      # Variable definitions
├── terraform.tfvars  # Actual values for variables
├── backend.tf        # Backend configuration for S3
├── README.md         # Project documentation

---

## How to Run

### Step 1: Clone the Repository
Clone this repository to your local machine:
```bash
git clone <repository-url>
cd terraform_project
````
