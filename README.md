# Description
This project is a website with a catalogue, blog and CRUD system. Users can add, edit or remove categories, service groups, services and blog posts according to their role.

# Stack
### Font-end
- HTML
- CSS
- Tailwind(?)
- Javascript

### Back-end
- PHP
- Laravel(?)
- MySQL

# Database structure

## Summary
- categories
- service-groups
- services
- service-group-galleries
- professionals
- users
- taxonomies(?)
- posts
- categories_professionals

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

### `professionals`
- id
- name
- description
- function
- url
- image
- **user_id**: Links professional to a user

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

## Joining tables

### `categories_professionals`
- id
- professional_id
- category_id


