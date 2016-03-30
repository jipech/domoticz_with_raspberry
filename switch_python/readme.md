<h1>Creating switch on RaspBerry Pi for Domoticz by the using Python</h1>
<p>For this example it is needed instaled <a href="https://gpiozero.readthedocs.org/en/v1.1.0/">gpiozero python library</a>. Then you have to upload led2pi.py file to your RaspBerry. Place it to the folder which is in PATH e.g. in the folder <code>/usr/local/bin</code>. Set up it as executable <code>chmod a+x /usr/local/bin/rpi2led.py</code>. Change IP address (ServerName). Here it is IP address of this switch not Domoticz. Connect the LED diode (or relay). In this example + led or data relay is connected to the gpio pin 21. Plug VCC (if you have relay) to 5V and GND to GND. Now you can run this script. If you need start it on boot, you can change <i>crontab</i>. Run <code>crontab -e</code> and add there line:</p>
<p><code>@reboot /usr/local/bin/led2pi.py</code></p>
<p>If you have other linux (or OS X) computer you can test it now by the command:</p>
<p><code>echo 1  | nc ip.switch 8888</code></p>
<p>and</p>
<p><code>echo 0  | nc ip.switch 8888</code></p>
