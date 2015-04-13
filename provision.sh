# Remove files

# Install packges
apt-get update && apt-get install -y software-properties-common
add-apt-repository ppa:git-core/ppa && add-apt-repository ppa:pi-rho/dev
apt-get update && apt-get install -y openssh-server zsh vim git curl autoconf tar wget \
    zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev \
    sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev \
    python-software-properties libffi-dev tmux

# Change shell to zsh
chsh -s /bin/zsh vagrant

su - vagrant -c "curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh"
su - vagrant -c "git clone --recursive https://github.com/sorin-ionescu/prezto.git /home/vagrant/.zprezto && \
  git clone https://github.com/ababup1192/dotfiles.git /tmp/dotfiles && \
  cp -r /tmp/dotfiles/.??* /home/vagrant"
rm -rf /var/tmp/dotfiles

# Install ruby
su - vagrant -c "git clone git://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && \
    exec /bin/zsh"

su - vagrant -c "rbenv install 2.0.0-p643 && rbenv global 2.0.0-p643" && \
    echo "gem: --no-ri --no-rdoc" > ~/.gemrc && /bin/zsh -c "gem install bundler"

su - vagrant -c "gem install rubocop refe2 && bitclust setup"

# heroku install
su - vagrant -c "wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh"
