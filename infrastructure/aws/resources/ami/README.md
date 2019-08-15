# Create aws ami using packer and ansible

Packer와 ansible을 이용해 배포에 사용할 AWS AMI을 생성한다.

## Installation

사전 설치 필요

- `go`

```bash
$ wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
$ tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz
```

- `packer`

```bash
$ wget https://releases.hashicorp.com/packer/1.4.2/packer_1.4.2_linux_amd64.zip
$ unzip packer_1.4.2_linux_amd64.zip
$ mv packer /usr/local/bin
```

- `ansible`

```bash
$ wget https://files.pythonhosted.org/packages/1f/eb/bdc25ca4d1918a2fb914de188b28374825f415643c69aa108d557203b901/ansible-2.8.3.tar.gz
$ tar -C /usr/local -xzf ansible-2.8.3.tar.gz
```


```bash
$ vim .bash_profile

# 아래 내용 추가
export PATH=$PATH:/usr/local/go/bin

$ source .bash_profile
```

## Usage

```bash
export VPC_ID=${YOUR_VPC_ID}
export SUBNET_ID=${YOUR_SUBNET_ID}
export AWS_ACCOUNT_ID=${YOUR_AWS_ACCOUNT_ID}
export SECURITY_GROUP_ID=${YOUR_SECURITY_GROUP_ID}

```

```bash
$ pwd
infrastructure/aws/resources/ami

$ packer build jdk8.json
```
