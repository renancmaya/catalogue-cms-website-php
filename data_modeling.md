<style>
    h1, h2, h3 {font-family: serif; font-weight: 400; text-transform: uppercase; border: none;}
    h1 {font-size: 30px;}
    h1:not(:first-of-type) {margin-top: 40px}
    h2 {font-size: 22px; margin-top: 20px;}
    h2:not(h1+h2) {margin-top:40px !important}
    ul {padding-left: 20px;}
    th, td {border: 1px solid color-mix(in srgb, currentColor 10%, transparent) !important;}
    th {background-color: color-mix(in srgb, currentColor 5%, transparent) !important;}
    strong {font-weight: 600;}
    em {color: color-mix(in srgb, currentColor 50%, transparent) !important;}
</style>
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