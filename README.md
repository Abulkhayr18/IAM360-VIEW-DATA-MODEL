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

