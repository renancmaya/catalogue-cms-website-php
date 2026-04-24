-- ==============================================================================
-- DIGITAL CATALOGUE - DATABASE SEED SCRIPT
-- ==============================================================================
-- This script populates the database with dummy content fos testing.
-- Insertion rule: Level 1 (Root) -> Level 2 -> Level 3
-- ==============================================================================

-- ==========================================
-- Level 1: Root tables (No FKs)
-- ==========================================

INSERT INTO options (`key`, value) VALUES
('business_name', 'Espaço Valter Cardoso'),
('logo', 'public/assets/branding/logo.svg'),
('favicon', 'public/assets/branding/favicon.svg'),
('address1', 'Rua Presidente Getúlio Vargas 84'),
('address2', 'Jd. Santa Helena'),
('city', 'Suzano'),
('state', 'SP'),
('postal_code', '00000-000'),
('phone', '(11) 4746-2656'),
('whatsapp', '(11) 99580-1268'),
('slogan', 'Cuidando de pessoas desde 1992');


INSERT INTO list_items
INSERT INTO service_categories
INSERT INTO professionals
INSERT INTO specialties

-- ==========================================
-- Level 2: Direct dependants and pivot tables
-- ==========================================

INSERT INTO service_groups
INSERT INTO categories_professionals
INSERT INTO professionals_specialties

-- ==========================================
-- Level 3: Complex dependants
-- ==========================================

INSERT INTO services
INSERT INTO service_group_galleries