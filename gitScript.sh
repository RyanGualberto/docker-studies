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

COMMIT_OPTIONS="
1 - Add
2 - Rename
3 - Delete
4 - Config
5 - Dependencies
6 - Docs
7 - Feature
8 - Fix
9 - Refactor
10 - Style
11 - Test
12 - Other
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
        read -p "type the new branch name" NEWBRANCH
        git branch -m $NEWBRANCH
        echo "----------------------------------------------------------------"
        echo "created and changed to the new branch"
        echo "------------------------------END-------------------------------"
	;;

	3)
        echo "$COMMIT_OPTIONS"
        read -p "Qual commit deseja fazer?  " COMMIT_OPTION
	;;

	4)
        echo "----------------------------------------------------------------"
        echo "Listing all local branches"
        echo "----------------------------------------------------------------"
		git branch
		read -p "type the branch name" CHANGEBRANCH
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
        read -p "Type name of your current branch" CURRENTBRANCH
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

case "$COMMIT_OPTION" in 
    1)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Add $NEWCOMMIT"
        git status
    ;;

    2)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Rename $NEWCOMMIT"
        git status
    ;;

    3)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Delete $NEWCOMMIT"
        git status
    ;;

    4)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Config $NEWCOMMIT"
        git status
    ;;

    5)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Dependencies $NEWCOMMIT"
        git status
    ;;

    6)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Docs $NEWCOMMIT"
        git status
    ;;

    7)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Feature $NEWCOMMIT"
        git status
    ;;

    8)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Fix $NEWCOMMIT"
        git status
    ;;

    9)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Refactor $NEWCOMMIT"
        git status
    ;;

    10)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Style $NEWCOMMIT"
        git status
    ;;

    11)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Test $NEWCOMMIT"
        git status
    ;;

    12)
        read -p "Type the commit name" NEWCOMMIT    
		git add .
        git commit -m "Other $NEWCOMMIT"
        git status
    ;;

    *)
        echo "Opção $COMMIT_OPTION desconhecida!"
        exit 1
        git status
    ;;
esac