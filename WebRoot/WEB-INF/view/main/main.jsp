<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>主页</title>
	
  </head>
  
  <frameset rows="12%, *" border="1px solid #000">
  	<frame noresize="noresize" name="top" src="showTop.action"/>
  	<frameset cols="15%, *">
  		<frame noresize="noresize" name="left" src="showLeft.action"/>
  		<frame name="right" src="showRight.action"/>
  	</frameset>
  </frameset>
</html>
