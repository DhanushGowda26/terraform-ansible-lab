# Terraform Core Concept

This guide covers the **core concepts, ideas, and best practices** we explored, so you have a clear mental map before diving deeper into hands-on work.

---

## Introduction

Terraform is an **Infrastructure as Code (IaC)** tool that allows you to define, provision, and manage cloud infrastructure declaratively. Using Terraform, we can create, update, and version our infrastructure consistently across environments.

Key concepts covered today:

- Terraform configuration structure  
- Providers and versions  
- Modules for reusable code  
- Workspaces for environment separation  
- Variables and `.tfvars` files for flexibility  
- Outputs for inter-module communication  
- Best practices for state management and Git workflows

---

## Terraform Basics

1. **Providers** – Terraform uses providers to interact with cloud platforms like AWS, Azure, or GCP.  
   - The provider is specified in `main.tf` with a required version.  
   - AWS credentials are passed via environment variables or secure files.  

2. **Terraform Blocks** – Every root configuration includes a `terraform` block defining required version and providers.

3. **Resources** – Resources represent actual infrastructure components, e.g., `aws_vpc`, `aws_instance`.  
   - Each resource has a **type** (`aws_vpc`) and a **name** (`main`).  
   - Tags are often used to organize resources (`Name`, `Environment`, `Project`).

---

## Modules

Modules are **self-contained units of Terraform code** that can be reused across projects or environments.  

- **Module variables** define what the module needs to function (`vpc_cidr`, `vpc_name`, etc.).  
- **Root variables** provide environment-specific values for modules.  
- A common practice is to **merge tags**, so every resource automatically gets a `Name` tag from the module variable.

Example concept:

- Module defines `aws_vpc` with variables for CIDR, DNS support, and tags.  
- Root configuration calls the module, passing in environment-specific variables.  
- Outputs from the module (like `vpc_id`) can be used elsewhere.

---

## Workspaces

Workspaces allow you to **maintain separate states for multiple environments** like `dev`, `prod`, or `staging`.  

- Each workspace has its own state file, preventing conflicts.  
- You can switch between workspaces using `terraform workspace select <name>`.  
- Default workspace exists automatically.  

This ensures that the **same Terraform code can deploy different environments safely**.

---

## Variables

Variables are used to **parameterize your configuration**:

- **Module variables** → what the module requires to run.  
- **Root variables** → what values are provided for a specific environment.  
- **Defaults** in modules allow the module to work even if root variables are not specified.  

- `.tfvars` files are commonly used to store **environment-specific values**, keeping secrets out of code.  

Conceptually:

- Modules define **what they need**.  
- Root configuration defines **what the module gets** in a particular environment via .tfvars.  

This separation makes Terraform configurations **reusable, flexible, and easy to maintain**.

---

## Outputs

Outputs allow you to **export information** from a module:

- Example: `vpc_id` and `vpc_cidr_block`.  
- Useful for referencing resources in other modules or external systems.  
- Output values can also be viewed with `terraform output`.

---

## Best Practices Learned

1. **Keep sensitive information out of Git**: `.tfstate`, `.tfvars`, keys.  
2. **Use modules for reusable code**: makes infrastructure maintainable.  
3. **Use workspaces** for separate environments.  
4. **Merge tags** in modules for consistent naming and environment identification.  
5. **Default values in modules** prevent errors when root variables are not set.  
6. **Remote backends** like S3 + DynamoDB locks are best for team collaboration.  

---

## Git Practices

- Commit: `modules/`, root `.tf` files, `outputs.tf`, `variables.tf`  
- Ignore: `.terraform/`, `.tfstate`, `.tfvars` with secrets  
- Keep example `.tfvars` files for sharing with teammates  

---

## Takeaways

- You understood how Terraform **modules, variables, and workspaces** work together.  
- Learned how **root configurations interact with modules**.  
- Started building a **VPC module**, passing variables, and defining outputs.  
- Saw how **Terraform plans, applies, and maintains state**.  

> Conceptually, the pattern is:  
> `Module defines what it needs` → `Root provides environment-specific values` → `Terraform deploys resources in AWS`.
> `Root module is the entry point.` → `Root defines what values to pass to the child module.` → `The child module expects variables.`.

---

This guide forms the foundation for **hands-on Terraform practice** with AWS. The next steps include adding **subnets, internet gateways, route tables, security groups, and EC2 instances**, and applying these concepts in real deployments.

---

**Author:** Dhanush Gowda  
**Date:** October 2025

