commandArray = {}

DomDevice = 'rpi2led'
<<<<<<< HEAD
IP = '192.168.1.229'
=======
IP = 'a.b.c.d'
>>>>>>> 762f7050b132218ec9fa007e50b116710ee24bb6
Port = '8888'
runcommand=""

if devicechanged[DomDevice] then
   if(devicechanged[DomDevice]=='Off') then
     print ("Turning off " .. DomDevice)
<<<<<<< HEAD
     runcommand = "echo 0  | nc 192.168.1.229 8888"
   else
     print ("Turning on " .. DomDevice)
     runcommand = "echo 1  | nc 192.168.1.229 8888 "
=======
     runcommand = "echo 0  | nc " .. IP .. " 8888"
   else
     print ("Turning on " .. DomDevice)
     runcommand = "echo 1  | nc " .. IP .. " 8888 "
>>>>>>> 762f7050b132218ec9fa007e50b116710ee24bb6
   end
   print (runcommand)
   os.execute(runcommand)
 end
return commandArray

