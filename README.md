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
git config --global user.name "Your Name"
```
