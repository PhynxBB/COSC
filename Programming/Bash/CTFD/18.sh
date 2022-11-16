#!/bin/bash

# Making Folder and Files
mkdir $HOME/ZIP
touch $HOME/ZIP/file1
touch $HOME/ZIP/file2
touch $HOME/ZIP/file3
md5sum "12345" > $HOME/ZIP/file1
md5sum "6789" > $HOME/ZIP/file2
md5sum "abcdef" > $HOME/ZIP/file3
