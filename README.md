# ndtech-workstations
Workstations for various ndtech development and operations use cases

These are workstations with VS Code running inside a docker container that is pre-configured for specific ndtech use cases to simplify setup, development and ongoing operations.

# Pre-Requisites
## Docker Desktop
Install docker desktop here - https://docs.docker.com/docker-for-windows/install/
## VcXsrv
Install VcXsrv here - https://sourceforge.net/projects/vcxsrv/

# Running a workstation
Clone this repo and change folders into it then change directories into the root folder for the workstation you would like to run, run build.ps1 to build and run.ps1 to execute

```
git clone https://github.com/22ndtech/ndtech-workstations.git
cd ndtech-workstations
cd ./ndtech-go-development-workstation
./build.ps1
./run.ps1
```