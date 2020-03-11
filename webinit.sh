# SET VARIABLES
# user friendly version would be to add the file to global sylinks:
# mkdir ~/.my_scripts/ && cd my_scripts && mv /path/to/file/webinit.sh ~/.my_scripts/ && sudo chmod +x webinit.sh
# now that the file works do this: 
# cd /usr/local/bin/ && sudo ln -s ~/.my_scripts/webinit.sh webinit
# and go back to user dir

# get the name of project interactively
read -p "# ENTER TITLE OF THE PROJECT: " title

# get the project path interactively
read -p "# ENTER THE PROJECT LOCATION (relative or absolute): " path

# get owner of directory
# read -p "# ENTER THE OWNER OF PROJECT (username): " user

# change project owner
# sudo chown -R $user $title

mkdir $path/$title

# enter the project
cd $path/$title

# copy template
wget https://github.com/thisbit/webinit/archive/master.zip && unzip master.zip && rm master.zip && mv webinit-master/* . && rm -rf webinit-master


# get latest normalize.css
wget -O assets/css/normalize.css https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css


# enter sublimetext into project
subl .
