# REQUIREMENTS

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.oh-my-zsh/custom/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

```bash
https://github.com/ohmyzsh/ohmyzsh
```



# Docker Commands and Utilities

```
docker --version
systemctl start docker
```

To expose a port, run the following command along with other commands below:
- `-p <host_machine_port_that_is_free>:<docker_image_port_to_expose>`
- Example: `docker run -t -d -p 3000:27017 --name myCustomImage debian`

```
docker pull <os_name>
docker run -t -d --name <image_name> <os_name>
docker ps -a
docker exec -it <image_name> /bin/sh
docker stop <image_name>
docker start <image_name>

use --privileged to run the image as a privileged
docker stats

docker image
docker image ls
docker rm -f <image_id>

docker ps -a
docker inspect <container_name> | grep IPAddress
```

## DOCKER COMMIT:
```
docker commit <container_id> <docker_useraname>/<repository_name>:<version_name (use:- latest)>
docker push  <docker_useraname>/<repository_name>:<version_name>
docker images
docker image rm --force <docker_commit_image_id>
```

## Add GUI to your docker container:
```
xhost +
docker run -t -d --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name test debian
```

## AFTER INSTALL:
```
apt update -y && apt upgrade -y && apt --fix-broken install && apt autoremove -y && apt install systemd -y

apt-get install libgtk2.0-dev -y
apt --fix-broken install
apt-get install python3-pip python-dev -y
apt install wget -y && apt install fish -y && apt install nano -y && apt install curl -y && apt install vim -y

apt install nodejs -y && apt install npm -y && npm cache clean -f && npm install -g n && npx n stable && hash -r && node --version
```

## Make Fish Default
To make fish default shell, first run: `which fish`
Then take the output of the command above and type this: `chsh -s <command_from_the_step_above>`

When running a .sh file, add this to the top: `#!/bin/sh`

# TMUX

```
tmux attach -t 0
```
- Navigate around all windows & sessions -- `leader, w`
- Overview of all windows & sessions -- `leader, s`
- Delete a window from the navigation -- `leader, x`
- New window -- `leader, c`
- Next window -- `leader, n`
- Previous window -- `leader, p`
- Change window name -- `leader, ,`
- Delete a window -- `leader, &`
- Detach -- `leader, D`
- Split vertically -- `leader, \`
- Split vertically -- `leader, -`
- Move around -- `ctrl+h j k l`
- Move around -- `leader, Q`
- Move around -- `leader, NUMBER`
- Change size of panel -- `leader, h j k l`
- Pre-selected layouts -- `leader, alt+NUMBER`
- Delete a panel -- `leader, X`
- List all sessions -- `tmux ls`
- Start session -- `tmux new -s nameHere`
- Start session & window -- `tmux new -t nameHere`
- Kill session -- `tmux kill-session -t nameHere`
- Change session number `rename-session -t [old-number] [new-number]`

# Miscellaneous

- Prevent SSH session from freezing: [StackExchange Answer](https://unix.stackexchange.com/a/200256)
- Increase nginx file upload size: [StackOverflow Answer](https://stackoverflow.com/a/26717238)
- Open port OCI instance: [StackOverflow Answer](https://stackoverflow.com/a/54810101)
- Upload & Download files to and from your server: [SuperUser Answer](https://superuser.com/a/850743)
- To run commands on startup: [StackExchange Answer](https://unix.stackexchange.com/a/637875)

How to download files using cli: `wget -O [file name with extension] [url]`
- Example: `wget -O filename.html googl.com`

Copy files between host and container: `docker cp [souce dir] [containerID]:[docker dir to copy to]`
- Example: `docker cp '/home/atharvavyas/Downloads/data.csv' 'abc123:/home/'`

## Install VS-Code Extensions for the docker image:
1. Hit: `Ctrl+Shift+P` to open command palette
2. Search: "Remote: Install Local Extensions" and select the first option
3. Select all extensions, and click OK; Then wait for all the extensions to install

## Python conda:
```
conda create --name <name_for_your_env> python=<python_version>
conda activate <your_env>
conda info --envs
conda install <package_name> (like tensorflow, requests, etc.)
conda remove <package_name>
conda deactivate
conda env remove -n <your_environment_name>
```

### conda after install: (execute commands in bash)
- [StackOverflow Answer 1](https://stackoverflow.com/a/64815977)
  ```
  source ~/miniconda3/etc/profile.d/conda.sh
  ```
- [StackOverflow Answer 2](https://stackoverflow.com/a/58760411)
  ```
  conda init fish
  ```
- [StackOverflow Answer 3](https://stackoverflow.com/a/54560785)
  ```
  conda config --set auto_activate_base false
  ```

## Python pyenv Virtual Environment:
```
pyenv install 3.10.0
pyenv virtualenv 3.10.0 myproject
pyenv activate myproject
which python
which pip

pyenv virtualenv-delete <name_of_your_env>
pyenv versions
```

## How to keep EC2 instance running after SSH is terminated:
[How to keep EC2 instance running after SSH is terminated](https://dev.to/akhileshthite/how-to-keep-ec2-instance-running-after-ssh-is-terminated-45k8)


## Test API GET and POST requests:
https://httpbin.org/get
