# New-Year-resolution-project

This is a simple Flask web application to manage your New Year resolutions. You can add, display, update, and delete your resolutions.

![diagram-export-2-22-2025-2_17_43-PM](https://github.com/user-attachments/assets/c7181a12-4d98-459f-9d7b-c307737e377f)


## Features

- Add new resolutions with a title and description.
- Display all resolutions.
- Update existing resolutions.
- Delete resolutions.

## Requirements

- Python 3.12
- Flask 2.3.2
- Flask-SQLAlchemy 3.0.3
- PyMySQL 1.0.3
- Docker
- Docker Compose

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

2. Open your web browser and go to `http://127.0.0.1:8000`.

3. Use the web interface to add, display, update, and delete your resolutions.

## Docker Setup

1. Build and run the Docker containers:
    ```sh
    docker-compose up --build
    ```

2. Open your web browser and go to `http://127.0.0.1:8000`.

## Project Structure

- [app.py](http://_vscodecontentref_/2): The main application file.
- [templates](http://_vscodecontentref_/3): Contains HTML templates for the web pages.
- [static](http://_vscodecontentref_/4): Contains static files like images.
- [requirements.txt](http://_vscodecontentref_/5): Lists the required Python packages.
- [docker-compose.yml](http://_vscodecontentref_/6): Docker Compose configuration file.
- [dockerfile](http://_vscodecontentref_/7): Dockerfile for building the Docker image.

## License

This project is licensed under the MIT License.
