#install curl 

 sudo apt install curl

# install rust 
 curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

 source $HOME/.cargo/env

 rustc --version
sudo rustup update

sudo apt install cargo

# install lsd 

 cargo install lsd

# install atuin 
cargo install atuin

 echo 'eval "$(atuin init zsh)"' >> ~/.zshrc

 echo 'eval "$(atuin init bash)"' >> ~/.bashrc

 # install eza
 
  cargo install eza

# install fzf

  sudo apt install fzf

   echo 'eval "$(fzf --zsh)"' >> ~/.zshrc

 echo 'eval "$(fzf --bash)"' >> ~/.bashrc

# install zoxide

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh


# install yazi 

cargo install --locked yazi-fm yazi-cli

echo 'function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}' >> ~/.bashrc


echo 'function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}' >> ~/.zshrc

# install GO ( need for lazydocker )

 curl https://go.dev/dl/go1.23.5.linux-amd64.tar.gz

 rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz

 export PATH=$PATH:/usr/local/go/bin

 go version


# install lazydocker with go

   go install github.com/jesseduffield/lazydocker@latest

   go version

   echo "alias lzd='lazydocker'" >> ~/.zshrc

   echo "alias lzd='lazydocker'" >> ~/.bashrc

#install k9s , NOTE: The dev version will be in effect!

  go install github.com/derailed/k9s@latest

# install btop

  sudo apt install btop

# install trippy

  cargo install trippy --locked

# install ripgrep
  #installation of binstall
  
  curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

  #install ripgrep 

     cargo binstall ripgrep

# install broot

  cargo install broot


  

  
  



 
