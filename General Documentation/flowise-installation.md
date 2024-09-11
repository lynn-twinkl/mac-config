# Flowise Installation Using NPM

-  Install Node JS - I installed it using the terminal command line: `brew install node@20` — this is was the latest LTS version at the time of installation.   
-  I exported node version to PATh (.zhrc): `echo export PATH="/opt/homebrew/opt/node@20/bin:$PATH"' >> ~/.zshrc`  
-  Updated npm `npm install -g npm@latest`  
-  Skipped Chrome download from puppetteer and skipped depreacted dependencies: `PUPPETEER_SKIP_DOWNLOAD=true npm install -g flowise --legacy-peer-deps`  
-  I installed dos2unix `brew install dos2unix`  
- Converted line ending using real path, not homebrew symlink: `dos2unix /opt/homebrew/lib/node_modules/flowise/bin/run`  
