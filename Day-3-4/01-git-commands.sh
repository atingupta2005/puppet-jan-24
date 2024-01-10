# GIT Commands. Note: Update your name and email id on below 2 lines
git config --global user.name "My Name"
git config --global user.email myemail@gmail.com

mkdir ~/gitPractice
cd ~/gitPractice
mkdir mygitrepo2
cd mygitrepo2
git init
git status
touch hello.txt
echo Hello, world! > hello.txt
git add hello.txt
git status
git commit -m "Add my first file"
git status
cd  ~/gitPractice

### Activity: Participants need to import below repo:
	#https://github.com/atingupta2005/hello-world.git


## Now run the command by puppting your github account login id on CLI. Below is the template:
   ### git clone https://github.com/<your-github-account-name>/hello-world.git
### Example if your github login id is prasanna
   ### git clone https://github.com/prasanna/hello-world.git

## Note before running below commands please make sure that you have ran the git clone command as mentioned above
cd hello-world

### The full address of that remote can be viewed with:
git remote -v

## Make some changes in any of the the files

## Generate password token on github by visiting below URL:
- https://github.com/settings/tokens/new
- In select scopes chose all options for - repo
- Specify the purpose of this token in the inputbox - note
- Scroll down and click - "Generate Token"
- Copy the generated token and paste it in you local notepad

### To put changes from local repo in the remote repo
git add *
git commit -am "-my chages"
git push origin master

## The above push command will ask your login id and password. Specify the login id and password. 
  ## Note: When you paste the password, it will not show anything on screen

###Activity: Open Github to inspect the changes

###Activity: Now do some changes in github

### From remote repo to get most recent changes
git pull origin main