#!/bin/bash
# Start the web server

# Update app
cd git/Database-Case-Studies/
git pull

# Copy script to user directory
cd Old_Time_Movie_Rentals/applications/web_catalog/
cp startserver.sh ~
chmod u+x ~/startserver.sh

# Start server
cd web-catalog/public/
npm start