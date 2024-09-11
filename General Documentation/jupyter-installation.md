# How To Install Jupyter

This document shows how to install jupyter on an Apple Silicon MacBook without interfering with Homebrew or default system python packages by using a **virtual environment**.

## Creating Virtual Environment
This virtual environment allows us to run python safely. It can be used for jupyter projcet s as well as for running any other python scripts safely.

1. Create a virtual environemnt using: `python3 -m venv ~/myenv` —– this will crate a python envirnment at HOME directory.
<br>
2. Activate virtual environment running `source ~/myenv/bin/activate` –– after activation, the terminal prompt should change ot indicate the environment has been initialised.
<br>
3. deactivate env by running `deactivate`

## Installing Jupyet Lab

1. With the virtual environment ON, run `pip3 install jupyterlab`
<br>
2. Run `jupyter lab`

## Install Modules

1. With the venv **active**, run `pip3 install module_name` 
