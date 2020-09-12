#!/bin/bash
echo "***********************************************************************"
echo "Hello,what do you want to deploy today:"
echo "1.- NGINX"
echo "2.- IBM Websphere Application Server"
echo "3.- IBM Integration Bus"
echo "4.- IBM Integration Bus + MQ"
echo "5.- IBM App Connect Enterprise"
echo "6.- IBM Operational Decision Manager for Developers"
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
            echo "********** DEPLOYING IIB+MQ **********"
            oc apply -f IIB-MQ/iib-mq.yaml
            echo "********** DONE IIB+MQ**********"
            ;;
        5)
            echo "********** DEPLOYING ACE **********"
            oc apply -f ACE/ace.yaml
            echo "********** DONE ACE**********"
            ;;
        6)
            echo "********** DEPLOYING ODM **********"
            oc apply -f ODM/odm.yaml
            echo "********** DONE ODM**********"
            ;;
        *)
            echo "Not a valid option"
            exit 1
 
esac
