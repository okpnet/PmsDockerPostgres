\c avocado
CREATE SCHEMA stores;
CREATE SCHEMA auth;
CREATE EXTENSION pgcrypto;
CREATE EXTENSION pgjwt;
CREATE EXTENSION pg_graphql;
CREATE ROLE stores_user WITH LOGIN PASSWORD 'stores_user';
CREATE ROLE stores_admin WITH LOGIN PASSWORD 'stores_admin';
GRANT ALL PRIVILEGES ON SCHEMA stores TO stores_admin;
GRANT USAGE ON SCHEMA stores TO stores_user;
GRANT ALL ON SCHEMA public TO stores_user;
GRANT ALL ON SCHEMA auth TO stores_user;