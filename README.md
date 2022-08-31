# betterproto-hangs

## Steps to reproduce

```shell
# 1)
pipenv install

# 2) compilation using betterproto plugin
pipenv run protoc_bp
# Although output file seems to be generated correctly, 
# it hangs here, requiring termination signal by Ctrl + C to finish.

# verify compilation in same situation without betterproto plugin
pipenv run protoc_plain
```

## Envrionment

* OS: Windows 10 x64
* Python: 3.9.13
* betterproto: 1.2.5
* protoc-wheel-0: 21.1
* tried several methods of protoc invocation with same result: cmd.exe, powershell, subprocess.call


## Steps to reproduce 2 (Docker image)
It actually does not lead to same issue, so 

```shell
# compiles and runs new docker image with python environment and required packages installed
docker build -t bphangs .

docker run -it bphangs bash

# within shell session attached to container from previous step, run:
test.sh
```