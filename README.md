# Project Setup Guide

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Node.js](https://nodejs.org/) (version 14 or higher)
- [npm](https://www.npmjs.com/) (comes with Node.js)
- [Composer](https://getcomposer.org/) (for PHP dependencies)
- [Laravel](https://laravel.com/docs/8.x/installation) (if not already installed)

## Installation Steps

1. **Clone the Repository**

   Open your terminal and run the following command to clone the repository:

   ```bash
   git https://github.com/Naimur444/dbms_project
   cd dbms_project
   ```

2. **Install PHP Dependencies**

   Run the following command to install the PHP dependencies using Composer:

   ```bash
   composer install
   ```

3. **Install Node.js Dependencies**

   Navigate to the project directory and install the Node.js dependencies:

   ```bash
   npm install
   ```

4. **Configure Environment Variables**

   Copy the `.env.example` file to `.env` and update the necessary environment variables, such as database credentials and application settings:

   ```bash
   cp .env.example .env
   ```

   Then, generate the application key:

   ```bash
   php artisan key:generate
   ```

5. **Run Database Migrations**

   If your project uses a database, run the migrations to set up the database schema:

   ```bash
   php artisan migrate
   ```

6. **Build Assets**

   Use the following command to build your assets with Tailwind CSS and other configurations:

   ```bash
   npm run dev
   ```

   For production builds, you can run:

   ```bash
   npm run build
   ```

7. **Start the Development Server**

   Finally, start the Laravel development server:

   ```bash
   php artisan serve
   ```

   You can now access your application at `http://localhost:8000`.

## Additional Configuration

### Tailwind CSS

This project uses Tailwind CSS for styling. The configuration file is located at `postcss.config.js`. Ensure that the Tailwind CSS and Autoprefixer plugins are correctly set up as shown below:
