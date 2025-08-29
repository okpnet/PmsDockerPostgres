\c test_avocado
CREATE SCHEMA tests;
CREATE SCHEMA auth;
CREATE EXTENSION pgcrypto;
CREATE EXTENSION pgjwt;
CREATE EXTENSION pg_graphql;
CREATE ROLE tester WITH LOGIN PASSWORD 'tester';
CREATE ROLE tester_admin WITH LOGIN PASSWORD 'tester_admin';
GRANT ALL PRIVILEGES ON SCHEMA tests TO tester_admin;
GRANT ALL ON SCHEMA public TO tester_admin;
GRANT USAGE ON SCHEMA tests TO tester;
GRANT ALL ON SCHEMA auth TO tester_admin;