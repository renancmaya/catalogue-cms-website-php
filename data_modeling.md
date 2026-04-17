# 1. Context

# 2. Entity-Relationship Model

## 2.1. Entity

| Entity                | Atributes |
| ----------            | ------------- |
| SERVICE               | id, name, description, price | 
| SERVICE GROUP         | id, name, description, url, featured image, gallery* |
| SERVICE CATEGORY      | id, name, description, url |
| PROFESSIONAL          | id, name, specialty, description, url, instagram |
| OPTIONS               | id, key, value |

*(\*) Needs a new table*

## 2.2. Relationship
- SERVICE *belongs to* SERVICE GROUP
- SERVICE GROUP *belongs to* CATEGORY
- PROFESSIONAL *performs* SERVICE
- PROFESSIONAL *belongs to* CATEGORY

# 3. Entity-Relationship Diagram
![alt text](media/github/entity-relationship-diagram-1.png)

# 4. Logical model

## services

| id | service_group_id | name | description | duration_minutes | price |
|---|---|---|---|---|---|
| 1 | 1 | Corte feminino 1 | Service description... | 30 | 90.00 |
| 2 | 1 | Corte feminino 2 | Service description... | 60 | 120.00 |
| 3 | 1 | Corte feminino 3 | Service description... | 90 | 180.00 |
| 4 | 4 | Tintura 1 | Service description... | 120 | 150.00 |
| 5 | 4 | Tintura 2 | Service description... | 150 | 200.00 |
| 6 | 4 | Tintura 3 | Service description... | 180 | 280.00 |
| 8 | 5 | Mechas 1 | Service description... | 360 | 90.00 |
| 9 | 5 | Mechas 2 | Service description... | 420 | 90.00 |

## service_groups

| id | category_id | name | description | url | featured_image |
|---|---|---|---|---|---|
| 1 | 1 | Corte feminino | | /{category}/corte-feminino | /media/.../corte-feminino-cover.jpeg |
| 2 | 1 | Corte masculino | | /{category}/corte-masculino | /media/.../corte-masculino-cover.jpeg |
| 3 | 1 | Corte infantil | | /{category}/corte-infantil | /media/.../corte-infantil-cover.jpeg |
| 4 | 1 | Tintura | | /{category}/tintura | /media/.../tintura-cover.jpeg |
| 5 | 1 | Loiros | | /{category}/loiros | /media/.../loiros-cover.jpeg |

## service_group_galleries

| id | service_group_id | url | alt |
|---|---|---|---|
| 1 | 1 | /media/.../corte-feminino-01.jpeg | alt description... |
| 2 | 1 | /media/.../corte-feminino-02.jpeg | alt description... |
| 3 | 1 | /media/.../corte-feminino-03.jpeg | alt description... |
| 4 | 2 | /media/.../corte-masculino-01.jpeg | alt description... |
| 5 | 2 | /media/.../corte-masculino-02.jpeg | alt description... |
| 6 | 2 | /media/.../corte-masculino-03.jpeg | alt description... |
| 7 | 3 | /media/.../corte-infantil-01.jpeg | alt description... |
| 8 | 3 | /media/.../corte-infantil-02.jpeg | alt description... |
| 9 | 4 | /media/.../tintura-01.jpeg | alt description... |
| 10 | 5 | /media/.../loiros-01.jpeg | alt description... |
| 11 | 5 | /media/.../loiros-02.jpeg | alt description... |

## service_categories

| id | name | description | url | featured_image | icon |
|---|---|---|---|---|---|
| 1 | Cabelo | | /cabelo | /media/.../.cabelo-cover.jpeg | /media/.../cabelo.svg |
| 2 | Estética | | /estetica | /media/.../estetica-cover.jpeg | /media/.../estetica.svg |
| 3 | Unhas | | /unhas | /media/.../unhas-cover.jpeg | /media/.../unhas.svg |

## professionals

| id | name | specialty | description | instagram | url | featured_image |
|---|---|---|---|---|---|---|
| 1 | Núbia | Esteticista | | nubia | /profissionais/nubia | /media/.../nubia.jpeg |
| 2 | Juliana | Cabeleiro(a) | | juliana | /profissionais/juliana | /media/.../juliana.jpeg |
| 3 | Valter | Cabeleiro(a) | | valter | /profissionais/valter | /media/.../valter.jpeg |
| 4 | Cristiane | Manicure | | cristiane | /profissionais/cristiane | /media/.../cristiane.jpeg |
| 5 | Adriana | Cabeleiro(a) | | adriana | /profissionais/adriana | /media/.../adriana.jpeg |

## list_items

| id | heading | text | icon | type |
|---|---|---|---|---|
| 1 | Feature heading 01 | Lorem ipsum dolor sit amet... | /media/.../feature-01.svg | feature |
| 2 | Feature heading 02 | Lorem ipsum dolor sit amet... | /media/.../feature-02.svg | feature |
| 3 | Feature heading 03 | Lorem ipsum dolor sit amet... | /media/.../feature-03.svg | feature |
| 4 | Talking point heading 01 | Lorem ipsum dolor sit amet... | /media/.../talking-point-01.svg | talking-point |
| 5 | Talking point heading 02 | Lorem ipsum dolor sit amet... | /media/.../talking-point-02.svg | talking-point |
| 6 | Talking point heading 03 | Lorem ipsum dolor sit amet... | /media/.../talking-point-03.svg | talking-point |

## options

| id | key | value | updated_at | updated_by |
|---|---|---|---|---|
| 1 | address | Rua Presidente Getúlio Vargas... | 2026-04-14 | user01 |
| 2 | phone | (11) 90000-0000 | 2026-04-14 | user01 |
| 3 | email | example@business.com.br | 2026-04-15 | user01 |
| 4 | call-to-action-heading | ... | 2026-04-16 | user02 |
| 5 | call-to-action-text | ... | 2026-04-16 | user02 |
| 6 | call-to-action-button | Click here | 2026-04-16 | user02 |

## categories_professionals

| category_id | professional_id |
|---|---|
| 1 | 2 |
| 1 | 3 |
| 1 | 5 |
| 1 | 1 |
| 2 | 1 |
| 3 | 4 |


# Normalization

# Data dictionary

# Physical model