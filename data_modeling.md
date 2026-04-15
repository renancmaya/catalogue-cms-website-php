# 1. CONTEXT

<details>
<summary># 2. ENTITY-RELATIONSHIP MODEL</summary>

## Entity
**Entity**                  | **Atributes**
- SERVICE               | id, name, description, price
- SERVICE GROUP         | id, name, description, url, featured image, gallery*
- SERVICE CATAGORY      | id, name, description, url
- PROFESSIONAL          | id, name, specialty, description, url
*(\*) Might need a new table*

## Relationship
- SERVICE belongs to SERVICE GROUP
- SERVICE GROUP belongs to CATEGORY
- PROFESSIONAL performs SERVICE
- PROFESSIONAL belongs do CATEGORY
</details>

# 3. ENTITY-RELATIONSHIP DIAGRAM

# LOGICAL MODEL

# NORMALIZATION

# DATA DICTIONARY

# PHYSICAL MODEL