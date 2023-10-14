#!/bin/bash

# Usage: create_backend_project <project_name>

if [ "$#" -ne 1 ]; then
    echo "Usage: create_backend_project <project_name>"
    exit 1
fi

project_name=$1

nest new $project_name --package-manager yarn

# Create a new NestJS project
yarn create nest-app $project_name

# Navigate to the project directory
cd $project_name

# Install necessary dependencies
yarn add @nestjs/typeorm @nestjs/config typeorm pg mysql2 sqlite3 bcrypt class-transformer class-validator dotenv passport passport-jwt passport-local @nestjs/jwt @nestjs/passport

echo "Backend dependencies installed successfully!"

# Modify the TypeORM configuration (ormconfig.json) for PostgreSQL
echo '{
  "type": "postgres",
  "host": "localhost",
  "port": 5432,
  "username": "your_postgres_username",
  "password": "your_postgres_password",
  "database": "your_database_name",
  "entities": ["dist/**/*.entity{.ts,.js}"],
  "synchronize": true
}' > ormconfig.postgres.json

echo "TypeORM configuration updated for PostgreSQL!"

# Print next steps for the user
echo "Next steps:"
echo "1. Update ormconfig.postgres.json as needed for other databases (SQLite, MySQL)."
echo "2. Create your entities and run migrations using 'yarn typeorm'."
