# General Packages

This is a list of general packages I like to run on my terminal as well as their respective installation guides. For usage guides -- such as common commands -- refer to each specfic package's respective document in the "General Documentation" directory, 

## Package list

1. **Homebrew** - Package Manager  
2. **Glow** - Markdown Viewer 
3. **ImageMagick** - Image Editor
4. **LibreOffice** - Document Editor

---

# Flowise Installation (NPM Method)

1. **Install Node JS --** I installed it using the terminal command line: `brew install node@20` — this is was the latest LTS version at the time of installation.   
<br>
2. **Export Node to PATH (.zhrc) --** `echo export PATH="/opt/homebrew/opt/node@20/bin:$PATH"' >> ~/.zshrc`  
<br>
3. **Updated npm --** `npm install -g npm@latest`  
<br>
4. **Skipped Chrome download from puppetteer and skipped depreacted dependencies --** `PUPPETEER_SKIP_DOWNLOAD=true npm install -g flowise --legacy-peer-deps`  
5. **Instaled dos2unix --** `brew install dos2unix` 
<br>
6. **Convert path line ending using real path, not homebrew symlink --** `dos2unix /opt/homebrew/lib/node_modules/flowise/bin/run`  

# Jupyter Lab

This guide explains how to install Jupyter Lab using a **virtual environment** in order to avoid any potnetial interference with Homebrew's Python interpreter or the system's default Python interpreter.

## 1. Creating Virtual Environment

1. **Create virtual environemnt --** `python3 -m venv ~/myenv` —– this will crate a python envirnment at HOME directory.
<br>
2. **Activate virtual environment --** `source ~/myenv/bin/activate` –– after activation, the terminal prompt should change ot indicate the environment has been initialised.
<br>
3. **Deactivate env --** `deactivate`

## 2. Installing Jupyter Lab

1. With the virtual environment ON, run `pip3 install jupyterlab`
2. Run `jupyter lab`

## 3. Install Pyton Modules

1. Activate virtual environment
<br>
2. Run `pip3 install module_name` 
