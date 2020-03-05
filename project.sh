#!/bin/bash
source function.sh
echo "Press 1 to continue : "
read x

while (($x!=0))
do

clear
cat << EOF
 ----------------------------------------------------
                      HELLO                    
----------------------------------------------------
1- Lister les processus  

2- Afficher les information en relation avec le cpu 

3- Help 

4- Save

5- Menu graphic

6- Animation

0- Quitter !
 ----------------------------------------------------
saisir votre choix :
EOF
read choix
case $choix in


1)            
   		clear
cat << "EOT"
-------------------------------------
       lister les processus
-------------------------------------

1- Lister les processus en cours d'execution

2- Afficher l'etat d'un processus 

3- retour 
--------------------------------------
EOT
read answer
case $answer in
-lp)

cat << EOF
-------------------------------------
processus en cours d'execution
-------------------------------------
EOF
	   funct1 ;;	
	
-spid)
  cat << EOF
-------------------------------------
        état d'un processus
-------------------------------------
   
EOF
        funct2 ;;
3)$1
  ;;
esac 

;;

2) funct3 ;;

-h)
  cat << EOF
-------------------------------------
              HELP
-------------------------------------
EOF
 funct4 ;;

4)
   		clear
cat << "EOT"
-------------------------------------
       save
-------------------------------------

1- save

2- Afficher save 

3- retour 
--------------------------------------
EOT
read answer1
case $answer1 in

-s)
     cat << EOF
-------------------------------------
                 Save
-------------------------------------
   
EOF
   funct5  ;;

-save) 
  cat << EOF
------------------------------------------------------------------------------
                               Afficher save
-------------------------------------------------------------------------------
EOF

  funct6 ;;

3) $1;;
esac 
;;

5)

menu_graphique  ;;

6)
cmatrix;;

0)
x=0 ;;
*)
echo "check help" ;;


esac 

done
