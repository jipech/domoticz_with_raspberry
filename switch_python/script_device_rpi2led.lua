commandArray = {}

DomDevice = 'rpi2led'
IP = 'a.b.c.d'
Port = '8888'
runcommand=""

if devicechanged[DomDevice] then
   if(devicechanged[DomDevice]=='Off') then
     print ("Turning off " .. DomDevice)
     runcommand = "echo 0  | nc " .. IP .. " 8888"
   else
     print ("Turning on " .. DomDevice)
     runcommand = "echo 1  | nc " .. IP .. " 8888 "
   end
   print (runcommand)
   os.execute(runcommand)
 end
return commandArray

