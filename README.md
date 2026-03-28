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
- taxonomies
- terms
- posts
- emails
- categories_professionals
- categories_posts
- posts_terms

## Tables
  
### `categories`
- id
- title
- icon(?)
- created_at
- updated_at


### `service_groups`
- id
- title
- category_id
- featured_image
- description
- short_description(?)
- url
- created_at
- updated_at


### `service_group_galleries`
- id
- service_group_id
- url
- alt
- order
- created_at

### `services`
- id
- title
- group_id
- short_description
- price
- created_at
- updated_at


### `users`
- id
- username
- email
- password
- **role**: defines whether the user can create, edit or delete content, either service related or post related
- created_at


### `professionals`
- id
- name
- description
- function
- url
- image
- created_at
- **user_id**: Links professional to a user

### `posts`
- id
- title
- url
- content
- excerpt
- featured_image
- status
- created_at
- published_at
- updated_at
- professional_id

### `taxonomies`
- id
- url
- title
- created_at
- updated_at

### `terms`
- id
- taxonomy_id
- name
- url
- description
- featured_image
- created_at
- updated_at

### `messages`
- id
- sender_name
- sender_email
- sender_phone
- created_at
- message

## Joining tables

### `categories_professionals`
- id
- professional_id
- category_id

### `categories_posts`
- id
- category_id
- post_id
 
### `posts_terms`
- id
- post_id
- term_id


