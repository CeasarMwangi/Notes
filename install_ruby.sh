# Install system libraries.
sudo apt-get install zlib1g-dev openssl libssl-dev libreadline-dev git-core

# Install rbenv.
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

# Setup bash.
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

# Install rbenv plugins.
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install Ruby version 1.8.7.
CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline --with-openssl-dir=/usr/include/openssl" rbenv install 1.8.7-p374

# Update shims.
rbenv rehash

# Set global (default) Ruby version.
rbenv global 1.8.7-p374

# Test Ruby version.
rbenv which ruby
