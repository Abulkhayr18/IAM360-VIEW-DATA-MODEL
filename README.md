# IAM360-VIEW-DATA-MODEL

 Cloud Compliance Warehouse
A cloud-focused data warehouse designed to track, evaluate, and visualize cloud compliance performance across multiple providers using SQL Server.

📂 Project Overview
This project implements a data warehouse schema to:

Record and analyze compliance incidents

Track cloud control effectiveness

Manage cloud policy violations

Aggregate compliance scores by region, service, and provider

🧱 Key Components
✅ Fact Tables
fact_cloud_incidents – Logs incidents per cloud service.

fact_compliance_score – Captures scores for various compliance categories.

fact_cloud_control_monitoring – Monitors control implementations.

fact_cloud_policy_violations – Stores policy violation data with timestamps.

📊 Dimension Tables
dim_cloud_provider, dim_compliance_category, dim_region, dim_service, and more.

🛠️ Tools & Tech
Microsoft SQL Server

Star Schema Modeling

Data Warehouse Design

🚀 How to Use
Clone the Repo

bash
Copy
Edit
git clone https://github.com/your-username/cloud-compliance-warehouse.git
Load in SSMS (SQL Server Management Studio)

Execute the SQL Script

Run CLOUD_COMPLIANCE_WAREHOUSE.sql to generate the schema.

🎯 Use Cases
Evaluate cloud security compliance posture

Identify high-risk regions and services

Generate reports for audits and policy monitoring

