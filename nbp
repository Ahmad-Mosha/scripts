#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Usage: create_backend_project <project_name>"
    exit 1
fi

project_name=$1

nest new $project_name --package-manager yarn

yarn create nest-app $project_name

cd $project_name

yarn add @nestjs/typeorm @nestjs/config typeorm pg mysql2 sqlite3 bcrypt class-transformer class-validator dotenv passport passport-jwt passport-local @nestjs/jwt @nestjs/passport

echo "Backend dependencies installed successfully!"

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

echo "Next steps:"
echo "1. Update ormconfig.postgres.json as needed for other databases (SQLite, MySQL)."
echo "2. Create your entities and run migrations using 'yarn typeorm'."
