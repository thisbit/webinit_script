# SET VARIABLES

# get the name of project interactively
read -p "# ENTER TITLE OF THE PROJECT: " title

# get the project path interactively
read -p "# ENTER THE PROJECT LOCATION (relative or absolute): " path

# get owner of directory
# read -p "# ENTER THE OWNER OF PROJECT (username): " user

# RUN STUFF WITH THESE VARS

# copy template
# cp -R ~/SERVERS/.Templates/staticweb/ $path/$title
# wget -O https://github.com/thisbit/webinit/archive/master.zip $path/$title && unzip $path/$title/master.zip && rm -rf $path/$title/master.zip

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
