#!/bin/bash

default_branch="main"


MENU="
1 - Update
2 - Create a new branch
3 - Commit on current branch
4 - Change Branch
5 - Upload my code
6 - List branches
"

echo "$MENU"

read -p "Escolha uma opção do menu: " OPCAO

case "$OPCAO" in 
	1)
        git add .
        git commit -m "save and change default branch to update"
        echo "----------------------------------------------------------------"
        echo "saving current changes to agency and switching to agency default"
        echo "----------------------------------------------------------------"
		git checkout default_branch 
        echo "----------------------------------------------------------------"
        echo "saved and changed to default branch"
        echo "----------------------------------------------------------------"
        git pull origin default_branch
        echo "----------------------------------------------------------------"
        echo "saving current changes to agency and switching to agency default"
        echo "------------------------------END-------------------------------"
	;;

	2)
        echo "----------------------------------------------------------------"
        echo "updating"
        echo "----------------------------------------------------------------"
		git pull origin master
        echo "----------------------------------------------------------------"
        echo "updated and creating the new branch"
        echo "----------------------------------------------------------------"
        read -p "type the new branch name " NEWBRANCH
        git branch $NEWBRANCH
        git checkout $NEWBRANCH
        echo "----------------------------------------------------------------"
        echo "created and changed to the new branch"
        echo "------------------------------END-------------------------------"
	;;

	3)
		git add .
        read -p "Type your commit" NEWCOMMIT
        git commit -m "$NEWCOMMIT"
        git status 
	;;

	4)
        echo "----------------------------------------------------------------"
        echo "Listing all local branches"
        echo "----------------------------------------------------------------"
		git branch
		read -p "type the branch name " CHANGEBRANCH
        git add .
        git commit -m "save and changing branch"
        echo "----------------------------------------------------------------"
        echo "saving current changes to branch and switching to branch chosed"
        echo "----------------------------------------------------------------"
        git checkout $CHANGEBRANCH
        echo "----------------------------------------------------------------"
        echo "Changed branch"
        echo "------------------------------END-------------------------------"
	;;
    
    5)
        git branch --show-current
        read -p "Type name of your current branch " CURRENTBRANCH
        echo "----------------------------------------------------------------"
        echo "saving current changes on current branch"
        echo "----------------------------------------------------------------"
        git add .
        git commit -m "Upload $CURRENTBRANCH"
        echo "----------------------------------------------------------------"
        echo "saved"
        echo "----------------------------------------------------------------"
        git push -u origin $CURRENTBRANCH
        echo "----------------------------------------------------------------"
        echo "Finished upload"
        echo "------------------------------END-------------------------------"
	;;

    6)
        echo "----------------------------------------------------------------"
        echo "Listing all local branches"
        echo "----------------------------------------------------------------"
		git branch
    ;;

	*)
		echo "Opção $OPCAO desconhecida!"
		exit 1
	;;
esac