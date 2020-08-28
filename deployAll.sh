#!/bin/bash
echo "***********************************************************************"
echo "Hello,what do you want to deploy today:"
echo "1.- NGINX"
echo "2.- Websphere Application Server"
echo "3.- IBM Integration Bus"
echo "***********************************************************************"


read varname

case "$varname" in
        1)
            echo "********** DEPLOYING NGINX **********"
            oc apply -f NGINX/nginx.yaml
            echo "********** DONE NGINX**********"
            ;;
        2)
            echo "********** DEPLOYING WAS **********"
            oc apply -f WAS/was.yaml
            echo "********** DONE WAS**********"
            ;;
        3)
            echo "********** DEPLOYING IIB **********"
            oc apply -f IIB/iib.yaml
            echo "********** DONE IIB**********"
            ;;
         
        *)
            echo "Not a valid option"
            exit 1
 
esac
