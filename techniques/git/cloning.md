# Git 

## Git Cloning via SSH
There's five prerequisites for cloning via SSH. 
1. Generate an SSH private/public key pair
2. Setup SSH-based Single Sign-On (SSO)
3. Add your SSH public key to GitHub
4. Configure Git settings
5. Clone the repo using SSH

### Generate an SSH Private/Public Key Pair
SSH key pairs can be created using a virtual machine hosted by a Cloud Service Provider (e.g., Microsoft Azure).  

**Step 1.** Generate an SSH key pair.  `-t` defines the key pair type. `-b` defines the key lengths (i.e., the number of bits). `-C` is used to include a comment.   
```bash
ssh-keygen -t rsa -b 4096 -C "Laptop"
```

**Step 2.** Press "Enter" to save your private key to the default location (i.e., under `.ssh/id_rsa` within your home directory).  
  
**Step 3.** Enter a passphrase to encrypt the private key.  

### Setup SSH-Based SSO
Setting up SSH-based SSO allows you to present your SSH private key automatically during authentication (e.g., when authenticating with GitHub).

**Step 1.** Open your BASH configuration file using your favorite text-editor
```bash
vim .bashrc
```

**Step 2.** Append the commands below to your BASH configuration file (they will be executed every time you login).
```bash
eval "$(ssh-agent -s)" # start the SSH authentication agent
ssh-add ~/.ssh/id_rsa  # add my SSH private key to the SSH authentication agent
```

### Add Your SSH Public Key to GitHub
**Step 1.** Print your SSH public key.
```bash
cat ~/.ssh/id_rsa.pub
```

**Step 2.** Highlight and copy your SSH public key.  

**Step 3.** Open a browser and login to GitHub.  

**Step 4.** Click your profile (top-right icon) and click "Settings."  

**Step 5.** Click "SSH and GPG keys" in the pane on the left-hand side.  

**Step 6.** Click "New SSH key."  

**Step 6.** Enter a "Title" (e.g., "Personal laptops").  

**Step 7.** Click "Add SSH key" and go back to the CLI.

**Step 8.** Reload your environment (to simulate a logoff/login and load your private key into memory).
```bash
source .bashrc
```

### Configure Git Settings
**Step 1.** Set your email.
```bash
git config --global user.email "goober@dev.edu"
```

**Step 2.** Set your username.
```bash
git config --global user.name "cyberphor"
```

### Clone the Repo Using SSH
**Step 1.** Clone a GitHub repo.
```bash
git clone git@github.com:cyberphor/knowledge-base &&\
cd knowledge-base
```