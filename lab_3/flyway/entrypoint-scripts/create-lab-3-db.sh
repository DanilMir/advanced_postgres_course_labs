#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
    -- create database
    CREATE DATABASE lab_3;

    -- restrict public access
    REVOKE CREATE ON SCHEMA public FROM PUBLIC;
    REVOKE ALL ON DATABASE lab_3 FROM PUBLIC;
    
    -- create admin role
    CREATE ROLE admin;
    GRANT ALL PRIVILEGES ON DATABASE lab_3 TO admin;
    
    -- create readonly role
    CREATE ROLE readonly;
    GRANT CONNECT ON DATABASE lab_3 TO readonly;
    
    -- create readwrite role
    CREATE ROLE readwrite;
    GRANT CONNECT ON DATABASE lab_3 TO readwrite;
    
    -- create admin users
    CREATE USER dbadmin WITH PASSWORD 'password';
    GRANT admin TO dbadmin;
    
    -- create reader users
    CREATE USER dbreader WITH PASSWORD 'password';
    GRANT readonly TO dbreader;
    
    -- create writer users
    CREATE USER dbwriter WITH PASSWORD 'password';
    GRANT readwrite TO dbwriter;
EOSQL