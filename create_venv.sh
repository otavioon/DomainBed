#!/bin/bash

set -x

# Create a virtual environment for DomainBed
echo "Creating a virtual environment named 'domainbed-venv'..."
python -m venv domainbed-venv
source domainbed-venv/bin/activate

# Upgrade pip and install required packages
echo "Upgrading pip and installing required packages..."
python -m pip install --upgrade pip
python -m pip install -r domainbed/requirements.txt

echo "Virtual environment 'domainbed-venv' created and activated."./