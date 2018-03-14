# Setup

Exec the following command.

```
$ ./setup.sh
```

# SSH Key Gen & Register to GitHub

Create ssh keys with RSA.

```
$ ssh-keygen -t rsa
```

Copy to clipboard.

```
$ cat ~/.ssh/id_rsa.pub | pbcopy
```

Register this on https://github.com/settings/ssh .

Test connection to github.

```
$ ssh -T git@github.com
```

# Font

Install necessary fonts for power line theme.

```
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
```

# Others

## Karabiner

Download from https://pqrs.org/osx/karabiner and Install.
 
