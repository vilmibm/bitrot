@i=split //,(pop @ARGV);print@i,"\n"and$i[rand int $#i]=chr((int rand 94)+32)while($ARGV[0]--);
