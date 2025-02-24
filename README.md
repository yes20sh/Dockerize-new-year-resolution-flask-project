# New-Year-Resolution-2tier-flask-Project

This is a simple Flask web application to manage your New Year resolutions. You can add, display, update, and delete your resolutions.

## Description

The New-Year-Resolution-Project is designed to help users manage their New Year resolutions. It provides a web interface where users can add new resolutions, view all resolutions, update existing resolutions, and delete resolutions they no longer want to keep.

## Features

- Add new resolutions with a title and description.
- Display all resolutions.
- Update existing resolutions.
- Delete resolutions.

## Requirements

- Python 3.12
- Flask 2.0.3
- Flask-SQLAlchemy 2.5.1
- PyMySQL 1.0.2
- Docker (optional, for containerized deployment)
- Jenkins (for CI/CD pipeline)

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/New-Year-resolution-project.git
    cd New-Year-resolution-project
    ```

2. Create a virtual environment:
    ```sh
    python -m venv env
    ```

3. Activate the virtual environment:
    - On Windows:
        ```sh
        .\env\Scripts\activate
        ```
    - On macOS and Linux:
        ```sh
        source env/bin/activate
        ```

4. Install the required packages:
    ```sh
    pip install -r requirements.txt
    ```

5. Configure the database connection in [app.py](http://_vscodecontentref_/1):
    ```python
    DB_USERNAME = "your_db_username"
    DB_PASSWORD = "your_db_password"
    DB_HOST = "your_db_host"
    DB_PORT = "3306"
    DB_NAME = "project_db"
    ```

6. Initialize the database:
    ```sh
    python app.py
    ```

## Usage

1. Run the application:
    ```sh
    python app.py
    ```

2. Open your web browser and go to `http://127.0.0.1:5000`.

3. Use the web interface to add, display, update, and delete your resolutions.

## Docker Deployment

To run the application using Docker, follow these steps:

1. Build the Docker image:
    ```sh
    docker-compose build
    ```

2. Start the containers:
    ```sh
    docker-compose up
    ```

3. Open your web browser and go to `http://127.0.0.1:5000`.

## Automation Script

To automate Docker installation, container creation, and deployment, you can use the provided Bash script:

1. Make the script executable:
    ```sh
    chmod +x docker-automation.sh
    ```

2. Run the script:
    ```sh
    ./docker-automation.sh
    ```

## Jenkins CI/CD Pipeline

To set up a Jenkins CI/CD pipeline for this project, follow these steps:

1. Install Jenkins on your server or local machine.
2. Install the necessary Jenkins plugins:
    - Docker Pipeline
    - Pipeline
    - Git
    - SonarQube Scanner
    - OWASP Dependency-Check
    - Trivy

3. Create a new Jenkins pipeline job and configure the pipeline script from SCM, pointing to your repository.

4. Add the following environment variables in Jenkins:
    - `DOCKER_IMAGE`: The name of your Docker image.
    - `DOCKER_CREDENTIALS_ID`: The ID of your Docker Hub credentials in Jenkins.
    - `AWS_CREDENTIALS_ID`: The ID of your AWS credentials in Jenkins.
    - `SONARQUBE_URL`: The URL of your SonarQube server.
    - `SONARQUBE_CREDENTIALS_ID`: The ID of your SonarQube credentials in Jenkins.

5. Use the provided [Jenkinsfile](http://_vscodecontentref_/2) for the pipeline configuration.

## Project Structure

- [app.py](http://_vscodecontentref_/3): The main application file.
- [templates](http://_vscodecontentref_/4): Contains HTML templates for the web pages.
- [static](http://_vscodecontentref_/5): Contains static files like images.
- [requirements.txt](http://_vscodecontentref_/6): Lists the required Python packages.
- [docker-compose.yml](http://_vscodecontentref_/7): Docker Compose configuration file.
- Dockerfile: Dockerfile for building the Docker image.
- [docker-automation.sh](http://_vscodecontentref_/8): Bash script to automate Docker installation, container creation, and deployment.
- [Jenkinsfile](http://_vscodecontentref_/9): Jenkins pipeline configuration file.

## License

This project is licensed under the MIT License.