# Event Booking App

Event Booking App is a Java desktop application developed as an academic project for managing and booking different types of events.

The application allows users to create accounts, browse available events, view event details, select seats, make payments, and submit ratings and feedback. It also provides management functionality for different event categories.

## Features

- User login and registration
- Browse available events
- View event details
- Seat selection and booking
- Payment processing
- Rating and feedback
- Event management
- Support for movies, concerts, festivals, and exhibitions
- Event image display
- MySQL database integration

## Technologies Used

- Java
- Java Swing
- MySQL
- JDBC
- Apache NetBeans
- phpMyAdmin

## Database

The project uses a MySQL database named `ticket_booking`.

The database structure and data are included in:

`ticket_booking.sql`

Import this file into MySQL or phpMyAdmin before running the application.

The application is currently configured to connect to MySQL using port `3307`. If your MySQL server uses a different port, update the database connection settings in the Java source files accordingly.

## Required Libraries

The required external libraries are included in the `lib/` folder:

- MySQL Connector/J
- rs2xml

These libraries are required for database connectivity and application functionality.

## My Contribution

My main contribution to the project focused on the payment and feedback components. I also contributed to the file export functionality.

## Project Structure

- `src/` – Java source code and application resources
- `lib/` – Required external JAR libraries
- `nbproject/` – NetBeans project configuration
- `test/` – Project test files
- `ticket_booking.sql` – MySQL database
- `build.xml` – NetBeans/Ant build configuration
- `manifest.mf` – Application manifest

## How to Run

1. Import `ticket_booking.sql` into MySQL or phpMyAdmin.
2. Make sure the MySQL server is running.
3. Open the project in Apache NetBeans.
4. Make sure the JAR files inside the `lib/` folder are added to the project libraries.
5. Verify that the MySQL connection uses the correct port. The current project configuration uses port `3307`.
6. Run the application from NetBeans.

## Academic Project

Developed as part of a Computer Science university project at Imam Abdulrahman Bin Faisal University.