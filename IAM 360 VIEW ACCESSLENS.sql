-- FACT TABLE
CREATE TABLE fact_access_logs (
    access_log_id INT PRIMARY KEY,
    user_id INT,
    resource_id INT,
    action_id INT,
    access_time DATETIME,
    duration_seconds INT,
    ip_address VARCHAR(45),
    is_compliant BIT,
    tenant_id INT,
    framework_id INT
);

-- DIMENSION TABLES
CREATE TABLE dim_user (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    role_id INT,
    department_id INT
);

CREATE TABLE dim_user_role (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50),
    privilege_level VARCHAR(50)
);

CREATE TABLE dim_department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    cost_center VARCHAR(50)
);

CREATE TABLE dim_resource (
    resource_id INT PRIMARY KEY,
    resource_name VARCHAR(100),
    resource_type_id INT,
    environment_id INT
);

CREATE TABLE dim_resource_type (
    resource_type_id INT PRIMARY KEY,
    type_name VARCHAR(100)
);

CREATE TABLE dim_environment (
    environment_id INT PRIMARY KEY,
    environment_name VARCHAR(100),
    region VARCHAR(100)
);

CREATE TABLE dim_action (
    action_id INT PRIMARY KEY,
    action_type VARCHAR(50),
    sensitivity_level VARCHAR(50)
);

CREATE TABLE dim_tenant (
    tenant_id INT PRIMARY KEY,
    tenant_name VARCHAR(100),
    industry VARCHAR(100),
    subscription_plan VARCHAR(50)
);

CREATE TABLE dim_compliance_framework (
    framework_id INT PRIMARY KEY,
    framework_name VARCHAR(100),
    description TEXT,
    region_applicability VARCHAR(100)
);

-- FOREIGN KEY CONSTRAINTS
ALTER TABLE fact_access_logs
ADD FOREIGN KEY (user_id) REFERENCES dim_user(user_id),
    FOREIGN KEY (resource_id) REFERENCES dim_resource(resource_id),
    FOREIGN KEY (action_id) REFERENCES dim_action(action_id),
    FOREIGN KEY (tenant_id) REFERENCES dim_tenant(tenant_id),
    FOREIGN KEY (framework_id) REFERENCES dim_compliance_framework(framework_id);

ALTER TABLE dim_user
ADD FOREIGN KEY (role_id) REFERENCES dim_user_role(role_id),
    FOREIGN KEY (department_id) REFERENCES dim_department(department_id);

ALTER TABLE dim_resource
ADD FOREIGN KEY (resource_type_id) REFERENCES dim_resource_type(resource_type_id),
    FOREIGN KEY (environment_id) REFERENCES dim_environment(environment_id);
