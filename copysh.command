#! /bin/ksh

        print "****************************"
        print "***   DATEIEN KOPIEREN   ***"
        print "****************************"
        print ""
        print 'Auf welches Gerät sollen die Dateien kopiert werden?'
        
        cd /Volumes/
        workingDir=$(dirname $0)
        
    	count=0
        for f in *; do
  			echo "$count -> $f"
  			count=$(( $count + 1 ))
		done
        print "Wohin soll die Datei kopiert werden?"
        read answer  
		   set -A deviceArray *
		   #echo ${deviceArray[$answer]}

		    #  Datei kopieren
	    	
		    cp $workingDir/usb/a.jpg /Volumes/${deviceArray[$answer]}
		    cp $workingDir/usb/b.jpg /Volumes/${deviceArray[$answer]}
		    cp $workingDir/usb/c.jpg /Volumes/${deviceArray[$answer]}
		   	

	print "***   Done    ***"

			