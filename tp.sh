#!/bin/bash
echo "BIENVENUE  SUR MON PROJET6";
echo "choisir l'option à executer";
   echo "a-info sur les utilisateurs enregistrés il y a 3 jours";
   echo  " b-acquisition,installation et lancement de l'environnement xamp";
   echo  " c-archivage des elements du repertoire personnel qui ont été modifié par l'utilisateur sudo il y a deux jrs dans un périphérique externe";
 echo   "d-info sur l'utilisation du disque,de la mémoire,le processeur et de la swap";
echo  " q-quitter";
   read x;
       while(test  $x !=q) do
           if(test $x=a) then
            echo "les info sur les users";
              ls /home;
            else
              if(test $x=b) then
             echo "mot de passe";
         sudo wget http://www.apachefriends.org/fr/download_succes.html/xampp-linux-x64-5.6.30-1-installer.run;
            echo"Fin";
            echo"debut de l'installation";
            sudo chmod 777 xamp-linux-x64-5.6.30-1-installer.run;
            echo"Fin";
            echo"demarrage de xamp";
             sudo /lamp/lamp start;
           echo"terminé";
          else 
             if(test $x=c) then
          echo"archivage en cour";
       sudo find .  -ctime -2>fic | tar cvf fic.tar fic;
       else
          if(test $x=d) then
        echo"info sur le disque,memoire,cpu";
        top/ head -6;
          df -m;
       else
        echo"enter une lettre valide";
      fi
     fi
    fi
   fi
 echo"enter un nouveau une valeur";
  read x;               
 done