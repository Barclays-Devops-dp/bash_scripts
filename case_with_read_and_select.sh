case expression in  #experession
 1st pattern)
       #execute a code if the 1st pattern matches the experssion
       ;;
 2nd pattern)
         # execute a code if pattern 2 matches  the experssion
         ;;
 3rd pattern)
         # execute a code if pattern 3 matches  the experssion
         ;;
*)
# command if no pattern matches (default case)
;;

esac

#==============================
#simple expression matching
#==============================
case 3 in  #experession
    1)
        #execute a code if the 1st pattern matches the experssion
        echo "your expression matched the FIRST pattern"
        ;;
    2)
            # execute a code if pattern 2 matches  the experssion
            echo "your expression matched the SECOND pattern"
        ;;
        
    3)
            # execute a code if pattern 3 matches  the experssion
            echo "your expression matched the THIRD pattern"
            ;;
    *)
    # command if no pattern matches (default case)
    echo "your expression DIDN'T MATCH any pattern"
    ;;

esac


#==============================
#READ STATEMENT WITH CASE STATEMENT
#==============================

read -p "Enter a region you want to provision your ec2-instances: " region

case $region in  #experession
    "eu-west-2")
        #execute a code if the 1st pattern matches the experssion
        echo "your expression ($region) matched the FIRST pattern"
        echo "And we are provisiong 20 instance...!!!"
        ;;
   "us-east-1")
            # execute a code if pattern 2 matches  the experssion
            echo "your expression ($region)   matched the SECOND pattern"
            echo "And we are provisiong 100 instances...!!!"
        ;;
        
    "as-west-2")
            # execute a code if pattern 3 matches  the experssion
            echo "your expression ($region)   matched the THIRD pattern"
            echo "And we are provisiong 9 instances...!!!"
            ;;
    *)
    # command if no pattern matches (default case)
    echo "your expression ($region)  DIDN'T MATCH any pattern"
    echo "so we are not provisioning any resources!"
    ;;

esac

#==============================
#READ STATEMENT WITH CASE STATEMENT 2 
#==============================
read -p "Enter a file extentions: " ext
filename="filefromcase"

case $ext in  #experession
    *.jpg | *.png)
        #execute a code if the 1st pattern matches the experssion
        echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
       touch ${filename}.$ext
        ;;
   *.txt)
            # execute a code if pattern 2 matches  the experssion
              echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
             touch ${filename}.$ext
        ;;
        
    *.tf)
            # execute a code if pattern 3 matches  the experssion
              echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
             touch ${filename}.$ext
            ;;
    *)
    # command if no pattern matches (default case)
    echo "your expression ($region)  DIDN'T MATCH any pattern"
    echo "so we are not we are not creating any file!"
    ;;

esac



#==============================
#READ STATEMENT WITH CASE STATEMENT 2 
#==============================
# echo "Select an extension"
PS3="Select an extension: "  # repeats the instructions after every executivion 
select ext in .jpg .png .txt .tf quit

do 
   filename="filefromcase"
        case $ext in  #experession
            *.jpg | *.png)
                #execute a code if the 1st pattern matches the experssion
                echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
            touch ${filename}.$ext
                ;;
        *.txt)
                    # execute a code if pattern 2 matches  the experssion
                    echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
                    touch ${filename}.$ext
                ;;
                
            *.tf)
                    # execute a code if pattern 3 matches  the experssion
                    echo "your extension is $ext. and we are going to create a file for the $ext for you.  "
                    touch ${filename}.$ext
                    ;;
            quit)
                    # execute a code if pattern 3 matches  the experssion
                   break
                    ;;
            *)
            # command if no pattern matches (default case)
            echo "your expression ($region)  DIDN'T MATCH any pattern"
            echo "so we are not we are not creating any file!"
            ;;

        esac

done
