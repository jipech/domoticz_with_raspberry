<h1>Temperature sensor for domoticz with RaspBerry Pi and I2C sensor</h1>
<h2>Preparing Domoticz</h2>
<p>For the dummy device, create new virtual sensor and set it as temperature sensor. Go to the list of  sensors (menu Setup / Device) and write down idx of this sensor.</p>
<h2>Preparing RaspBerry Pi</h2>
<p>Because Raspberry Pi has no analog ports, the only possibility is using I2C sensor. It is used TC74A0 here. Plug in to RaspBerry as is described <a href="http://embedded-lab.com/blog/using-tc74-microchip-thermal-sensor-for-temperature-measurement/">here</a> or <a href="http://embedded-lab.com/blog/chipkit-tutorial-6-inter-integrated-circuit-i2c-communication/">here</a>. After start Raspberry detect the address by the command <code> i2cdetect -y 0</code> or <code> i2cdetect -y 1</code>. The address of TC74AO is <code>0x48</code>. Remember it. You can check it by the command:</p>
<p><code>i2cget -y 0 0x48 0 b</code><p>
<p>The answer is temerature in hexa number system in Celsius</p>
<p>Upload the file temperature.py to your linux computer. Place it e.g to <code>/usr/local/bin</code> and set it as executable <code>chmod a+x /usr/local/bin/temperature.py</code>. Edit it and change IP address of the server, port and idx of sensor. If it is needed change address of this sensor (value 0x48). Run this script. </p>
