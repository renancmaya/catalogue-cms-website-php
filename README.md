# Description

# Database structure

## Tables
  
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

### `service_group_galleries`
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

### `users`
- id
- username
- email
- password
- **role**: defines whether the user can create, edit or delete content, either service related or post related

### `professional`
- id
- name
- description
- function
- url
- image
- **user_id**: Links professional to a user

### `professional_category`
- id
- professional_id
- category_id

### `taxonomies`
- id
- title
- description
- url
- featured_image
- icon(?)

### `posts`
- id
- title
- url
- content
- featured_image
- author
- date_created
- last_edited
- category_id
- taxonomy_id


