Using this example

To use this exampel run:

 "vagrant up"
 "cd /vagrant"
 "rbenv local 1.9.3-p484"
 "bundle install" 
 "beaker -h hosts.yaml -t tests/"

If your on CentOS 6 or similar, you will need a new version of ruby, if you are on a recent ubuntu, you should be fine with just a bundle install



First, we need a somewhat up2date version of Ruby - 

yum install -y rubygem-nokogiri  gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel gcc-c++ gcc openssl-devel libyaml-devel readline-devel zlib-devel

Install rbenv 
https://github.com/sstephenson/rbenv#installation

(tldr) 
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
 source ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 1.9.3-p484
