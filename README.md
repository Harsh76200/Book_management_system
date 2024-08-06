# Book Management System 📚

## Project Overview

The Book Management System is a web-based application designed to facilitate the management of book information in a library or bookstore. It provides functionalities for book management, including addition, updates, and deletion of book records. The system uses Hibernate for ORM and follows best practices for data integrity and application performance. 🚀

## Project Objectives

### Book Management: 📘
- **Add Books**: Enable admins to add new books to the system with details like title, author, ISBN, and publication date.
- **Update Books**: Allow for the modification of book details as required.
- **Delete Books**: Provide functionality to remove books from the system.

### Admin Management: 🛠️
- **Admin Login**: Secure login for admins to access the management functionalities.
- **Profile Management**: Allow admins to manage their profiles and settings.

### Data Integrity: ✅
- **Validation**: Ensure all book data is validated before being entered into the system.
- **Consistency**: Maintain data consistency through the use of Hibernate for ORM.

### User-Friendly Interface: 🌟
- **Design**: Provide a clean and intuitive user interface for easy navigation and management.
- **Feedback**: Offer clear feedback and error messages to guide users through actions.

### Security: 🔒
- **Authentication**: Implement secure authentication mechanisms to protect sensitive information.
- **Authorization**: Ensure only authorized users can access certain functionalities.

### Scalability: 📈
- **Performance**: Build a system that can handle a growing number of books and users efficiently.

### Reporting: 📊
- **Generate Reports**: Provide functionalities to generate reports on book inventory and management activities.

## Technologies Used

- **Frontend**: HTML, CSS, Bootstrap 🌐
- **Backend**: Java, Spring Boot ☕
- **ORM**: Hibernate 🗄️
- **Database**: PostgreSQL 💾
- **Version Control**: Git & GitHub 🧑‍💻
- **Deployment**: Docker, Heroku 📦

## Setup and Installation

### Prerequisites

- Java 11 or higher ☕
- Maven 🛠️
- PostgreSQL 💾
- Docker (optional, for containerization) 🐳

### Setup Instructions

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/Harsh76200/Book_management_system.git
    cd book-management-system
    ```

2. **Configure the Database**:
    - Create a PostgreSQL database and user for the application.
    - Update the `application.properties` file with your database credentials:
      ```properties
      spring.datasource.url=jdbc:postgresql://localhost:5432/book_db
      spring.datasource.username=your_username
      spring.datasource.password=your_password
      ```

3. **Build the Application**:
    ```bash
    mvn clean install
    ```

4. **Run the Application**:
    ```bash
    mvn spring-boot:run
    ```
    Alternatively, if you are using Docker:
    
    - **Build the Docker Image**:
      ```bash
      docker build -t book-management-system .
      ```
    
    - **Run the Docker Container**:
      ```bash
      docker run -p 8080:8080 book-management-system
      ```

5. **Access the Application**:
    Open your browser and navigate to `http://localhost:8080` to access the Book Management System. 🌍

## Usage

- **Admin Login**: 🛡️ Access the admin dashboard by logging in with your admin credentials.
- **Book Management**: 📚 Add, update, or delete book records as needed.
- **Generate Reports**: 📈 Use the reporting functionalities to generate various reports on book inventory and management.

## Contribution

Feel free to contribute to this project by submitting issues or pull requests. Please follow the guidelines outlined in the `CONTRIBUTING.md` file. 🤝

## Contact

For any questions or feedback, please contact Harsh Jain. 📧
