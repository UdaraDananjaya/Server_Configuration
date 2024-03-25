# install .NET 6 on server

### Install .NET 6:

1. **Add Microsoft's package repository:**

```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
```

2. **Update the package index:**

```bash
sudo apt update
```

3. **Install the .NET 6 SDK:**

```bash
sudo apt install -y dotnet-sdk-6.0
```

4. **Verify the installation:**

```bash
dotnet --version
```
This should display the installed .NET version, confirming that .NET 6 is installed correctly.