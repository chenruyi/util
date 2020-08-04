# install gitlab
# copy from: https://about.gitlab.com/install/

# download dependencies
sudo dnf install -y curl policycoreutils openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd

# Check if opening the firewall is needed with: sudo systemctl status firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
sudo dnf install postfix
sudo systemctl enable postfix
sudo systemctl start postfix



# install from here
# add repository
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | bash

# install by yum
yum -y install gitlab-ee

# init config
gitlab-ctl reconfigure

# gitlab-ctl start
gitlab-ctl start


# show status
gitlab-ctl status


# Done!
# visit the ip from broswer, and more details: https://about.gitlab.com/install/#centos-8
# Note: check if allow the Security group permissions(aliyun)


