funct1()
{
ps -aux
}

funct2 ()
{
echo "PID du proccesus :"
read argument
ps -p  $argrument -o pid,ppid,cmd,stat
}

funct3 ()
{
cat /proc/cpuinfo
}

funct4()
{
cat << EOF
Bienvenue dans notre Application Scripting
* "-lp" liste les processus en cours d'exécution
* "-s pid" affiche l'état d'un processus don't le pid est un argument
* "-lcpu" affiche les information en relation avec le cpu30
EOF
}

funct5 ()
{
ps -aux > savei.txt
awk 'NR=1{print $2,$3,$8,$11}' savei.txt > save.txt
cat /proc/cpuinfo
}

funct6 ()
{
cat save.txt
}

menu_graphique()
{
#!/bin/bash

yad --image="/home/motaz/Desktop/project/img1.jpg" \
--button="-lp":2 \
--button="-s pid":3 \
--button="-lcpu":4 \
--button="-help":5 \
--button="-save":6 \
--button="-affiche":7 \

var=$?

if [[ $var -eq 2 ]]; then
ps -aux > v.txt
yad --height 750 --width 950 \
--text-info --filename="v.txt" \

elif [[ $var -eq 3 ]]; then
argrument=$(yad --entry --entry-label=PID --entry-text="type here")
argrument1=$(echo $argrument)
ps -p  $argrument1 -o pid,ppid,cmd,stat > v.txt
#cat /proc/$argument1/status 
yad --height 750 --width 950 \
--text-info --filename="v.txt" \

elif [[ $var -eq 4 ]]; then
cat /proc/cpuinfo > v.txt
yad --height 750 --width 950 \
--text-info --filename="v.txt" \

elif [[ $var -eq 5 ]]; then 
yad --height 750 --width 950 \
--text-info --filename="help.txt" \

elif [[ $var -eq 6 ]]; then
ps -aux > savei.txt
awk 'NR=1{print $2,$3,$8,$11}' savei.txt > save.txt
cat /proc/cpuinfo  >> save.txt
 
elif [[ $var -eq 7 ]]; then
yad --height 750 --width 950 --text-info --filename="save.txt"

fi
}
