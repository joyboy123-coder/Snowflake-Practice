# Snowflake Data Governance Guidelines

## 1. Role-Based Access Control (RBAC)
- Assign least privilege access using **roles**.
- Use predefined roles like `ACCOUNTADMIN`, `SECURITYADMIN`, `SYSADMIN`.
- Create **custom roles** for different user groups.

## 2. Data Masking & Row-Level Security
- Use **Dynamic Data Masking** to protect sensitive data.
- Apply **Row Access Policies** to control data visibility.

## 3. Auditing & Monitoring
- Enable **Query Logging** for tracking user actions.
- Use **Access History Views** to monitor permissions.

## 4. Encryption & Secure Storage
- Snowflake encrypts all data **at rest** and **in transit**.
- Use **External Stages** securely for data import/export.
