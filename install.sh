#!/bin/bash

# Installation script, run it as a normal user 
# ############################################


# HANDLING OF THE LANG FILE

# This is the directory where we need to put the syntax file.
# Change to "gtksourceview-2.0" if you're using Gnome 2.x
rep=$HOME/.local/share/gtksourceview-3.0/language-specs

# We create it if it doesn't exist yet.
mkdir -p $rep

# We copy the file to its final destination. 
cp ./ezpublish-template.lang "$rep/ezpublish-template.lang"



# HANDLING OF THE XML FILE
# We need to declare a new mime type.

rep_mime=$HOME/.local/share/mime/packages
mkdir -p $rep_mime
cp ./ezpublish-template.xml "$rep_mime/ezpublish-template.xml"

# We need to update the mime database to allow the handling 
# of smarty template files.
update-mime-database $HOME/.local/share/mime
