# Description

# Database structure

## Tables
- categories
- service_groups
- services
  
### `categories`
- id
- title
- icon(?)

### `service_groups`
- id
- title
- category_id
- featured_image
- description
- short_description(?)
- url

## `service_group_galleries`
- id
- service_group_id
- url
- alt
- order

### `services`
- id
- title
- group_id
- short_description
- price

### `professionals`
