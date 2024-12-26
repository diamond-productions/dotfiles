# My Dotfiles
I am using stow to manage symlinks 

```bash
export DOT=
cd $DOT
stow -v -R -t ~ git

cd $DOT 
stow --adopt nvim 
```
```
LINK: .gitattributes => code/dotfiles/git/.gitattributes
LINK: .gitconfig => code/dotfiles/git/.gitconfig
```
