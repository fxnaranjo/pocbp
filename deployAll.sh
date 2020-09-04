#!/bin/bash
echo "***********************************************************************"
echo "Hello,what do you want to deploy today:"
echo "1.- NGINX"
echo "2.- IBM Websphere Application Server"
echo "3.- IBM Integration Bus"
echo "4.- IBM App Connect Enterprise"
echo "5.- IBM Operational Decision Manager for Developers"
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
        4)
            echo "********** DEPLOYING ACE **********"
            oc apply -f ACE/ace.yaml
            echo "********** DONE ACE**********"
            ;;
        5)
            echo "********** DEPLOYING ODM **********"
            oc apply -f ODM/odm.yaml
            echo "********** DONE ODM**********"
            ;;
        *)
            echo "Not a valid option"
            exit 1
 
esac
