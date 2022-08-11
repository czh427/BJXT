<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>菜单区域</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript">
  		$(function (){
  			var setting = {
  				view:{
  					showIcon:true,
  					showLine:true,
  					showTitle:true
  				},
  				data:{
  					simpleData:{
  						enable:true,
  						idKey:"id",
  						pIdKey:"pId"
  					}
  				}
  			};
  			var zNodes;
  			
  			$.ajax({
  				async:false,
  				url:"getPowerList.action",
  				type:"post",
  				data:{},
  				dataType:"json",
  				success:function (obj){
  					zNodes = obj;
  				}
  			});
  		
  			$.fn.zTree.init($("#zTree"), setting, zNodes);
  		});
  	</script>  
  </head>
  
  <body>
  	<div id="zTree" class="zTree"></div>
  </body>
</html>
