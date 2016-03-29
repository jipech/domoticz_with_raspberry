<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<HTML>
<HEAD>
<TITLE>Switch for Domoticz in PHP</TITLE>
<BODY>
<H1>Led for Domoticz</H1>
<P>Demonstration example, writing in HTML and PHP</P>
<?php
     $led_status=$_GET['led'];
     system ( "gpio -g mode 27 out" );
?>
<P> Actually LED is <?php echo $led_status; ?></p>
<?php
     if ($led_status == "ON")
       {system ( "gpio -g write 27 1" );}
     else
       {system ( "gpio -g write 27 0" );};
?>
<P>Turn the LED <A HREF="./index.php?led=ON">ON</A></P>
<P>Turn the LED <A HREF="./index.php?led=OFF">OFF</A></P>
</BODY>
</HTML>
