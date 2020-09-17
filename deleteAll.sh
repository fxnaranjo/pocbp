#!/bin/bash
echo "***********************************************************************"
echo "Hello,what do you want to delete today:"
echo "1.- NGINX"
echo "2.- Websphere Application Server"
echo "3.- IBM Integration Bus"
echo "4.- IBM Integration Bus + MQ"
echo "5.- IBM App Connect Enterprise"
echo "6.- IBM App Connect Enterprise + MQ" 
echo "7.- IBM Operational Decision Manager for Developers"
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
            echo "********** DELETING IIB+MQ **********"
            oc delete -f IIB-MQ/iib-mq.yaml
            echo "********** DONE IIB+MQ**********"
            ;;
        5)
            echo "********** DELETING ACE **********"
            oc delete -f ACE/ace.yaml
            echo "********** DONE ACE**********"
            ;;
        6)
            echo "********** DELETING ACE+MQ **********"
            oc delete -f ACE-MQ/ace-mq.yaml
            echo "********** DONE ACE+MQ**********"
            ;;
        7)
            echo "********** DEPLOYING ODM **********"
            oc apply -f ODM/odm.yaml
            echo "********** DONE ODM**********"
            ;;
         
        *)
            echo "Not a valid option"
            exit 1
 
esac
