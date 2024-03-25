# installing NVM (Node Version Manager)

### Install NVM (Node Version Manager):

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

### Set Environment Variables for NVM:

```bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

### Download and Install Node.js:

```bash
nvm install 18
```

### Verify Node.js Version:

```bash
node -v
```
This command should print `v18.19.1` if Node.js is installed correctly.

### Verify NPM Version:

```bash
npm -v
```
This command should print `10.2.4` if npm is installed correctly.

### Install Serve Globally:

```bash
npm install -g serve
```
This command installs the `serve` package globally, which is useful for serving static files from a local server.