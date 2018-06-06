#! /bin/bash
#Author : - Shashank Srivastava
#Date : - 29th September
#set -x
echo ""
echo "Welcome to FileSizeCalc()! Enter your choice below in form of a digit followed by K/M/G (in caps)."
echo ""
echo "For example, if you want to search for files bigger than 100 MBs, enter 100M."
echo -n "Enter your pattern... "
read CHOICE
#Intentionally removing space in case user adds a space before K/M/G
SIZE=`echo $CHOICE | sed 's/ //g'`
echo -n "Enter the filesystem. For example, /home... /"
read FS_CHOICE
echo "Great! You chose to search for file(s) greater than $SIZE in /$FS_CHOICE!"
echo "Below are the file(s) with size greater than $SIZE in /$FS_CHOICE!"
numRes=`find /$FS_CHOICE -xdev -size +$SIZE -exec ls -ltrh {} \; | wc -l`
find /$FS_CHOICE -xdev -size +$SIZE -exec ls -ltrh {} \;
if [ $numRes -eq 0 ]
then
  echo "Sorry, there were not any files bigger than $SIZE. Please try with a lower size."
else
  echo ""
  echo "Thanks for using FileSizeCalc(). Hope to see you soon :-)"
fi
