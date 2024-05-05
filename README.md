# basic-poll
## Setup RHEL9
### Prerequisites:
Make sure you have Python and pip installed. If not, install them using the following commands:
```bash
sudo yum install python3 python3-pip git
```
### Creating a Virtual Environment:
Create a virtual environment to isolate your Django project dependencies:
```bash
cd ~
```
```bash
python3 -m venv .basic_poll_venv
```
Activate the virtual environment
```bash
source ~/.basic_poll_venv/bin/activate
```
Update pip in the virtual environment
```bash
python3 -m pip install --upgrade pip
```
Exit a virtual environment 
```bash
deactivate
```
### Configure Git
Before you can start using Git, you’ll need to configure it with your name and email address. Run the following commands, replacing Your Name with your actual name and you@example.com with your email address:
```bash
git config --global user.name "Your Name"
```
```bash
git config --global user.email "you@example.com"
```
### Clone this repository
```bash
git clone https://github.com/pgustafs/basic-poll.git
```
### Installing Django
Make sure that your python virtual environment is active, install Django using pip:
```bash
python3 -m pip install Django
```
or
```bash
python3 -m pip install -r basic-poll/requirements.txt
```
### Checking Django Version
Verify that Django is installed correctly and check its version:
```bash
django-admin --version
```
### The development server
Let’s verify your Django project works. Change into the *basic-poll* directory, if you haven’t already, and run the following commands:
```bash
cd basic-poll
```
```bash
python3 manage.py runserver 0.0.0.0:8000 
```
or using gunicorn
```bash
gunicorn base.wsgi:application --bind 0.0.0.0:8000
```