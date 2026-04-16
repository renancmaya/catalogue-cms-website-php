# 1. Context

# 2. Entity-Relationship Model

## 2.1. Entity

| **Entity**            | Atributes |
| ----------            | ------------- |
| SERVICE               | id, name, description, price | 
| SERVICE GROUP         | id, name, description, url, featured image, gallery* |
| SERVICE CATAGORY      | id, name, description, url |
| PROFESSIONAL          | id, name, specialty, description, url |

*(\*) Might need a new table*

## 2.2. Relationship
- SERVICE *belongs to* SERVICE GROUP
- SERVICE GROUP *belongs to* CATEGORY
- PROFESSIONAL *performs* SERVICE
- PROFESSIONAL *belongs to* CATEGORY

# 3. Entity-Relationship Diagram

# Logical model

# Normalization

# Data dictionary

# Physical model