#!/bin/sh

echo "Hello, welcome to the access configuration script."
echo "This script will set up automaticlly the rights(permisos) to work with web projects."
echo "NOTE: This script works only for xampp configuration on linux and NEEDS TO RUN AS A ROOT"



echo -n "Enter the name of your project "
read -r name

DIRECTORY=/opt/lampp/htdocs/$name

if [ -d "$DIRECTORY" ]; then { 
    # Control will enter here if $DIRECTORY exists.
    
    chown -R www-data.www-data $DIRECTORY
    chmod -R 755 $DIRECTORY

    echo "Its a laravel project? (y/n)"
    read -r laravel

    if [ $laravel = "y" ]; then {
        
        chmod -R 777 $DIRECTORY/storage        
    }
    fi

    echo "Done"
    echo "Thanks for using me UwU"

}
  else
  echo "The path $DIRECTORY its not valid or not exist"
fi





