#!/bin/bash
echo "***********************************************************************"
echo "Hello,what do you want to deploy today:"
echo "1.- NGINX"
echo "2.- Websphere Application Server"
echo "3.- IBM Integration Bus"
echo "4.- IBM App Connect Enterprise"
echo "***********************************************************************"


read varname

case "$varname" in
        1)
            echo "********** DELETING NGINX **********"
            oc delete -f NGINX/nginx.yaml
            echo "********** DONE NGINX**********"
            ;;
        2)
            echo "********** DELETING WAS **********"
            oc delete -f WAS/was.yaml
            echo "********** DONE WAS**********"
            ;;
        3)
            echo "********** DELETING IIB **********"
            oc delete -f IIB/iib.yaml
            echo "********** DONE IIB**********"
            ;;
        4)
            echo "********** DELETING ACE **********"
            oc delete -f ACE/ace.yaml
            echo "********** DONE ACE**********"
            ;;
         
        *)
            echo "Not a valid option"
            exit 1
 
esac
