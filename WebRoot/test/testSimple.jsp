<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>zTree简单数据</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.core.js"></script>
  	<script type="text/javascript">
  		$(function (){
  			var setting = {
  				callback:{
  					onClick:function (event, treeId, treeNode){
  						//alert(treeNode.url);
  					}
  				},
  				view:{
  					showIcon:true,
  					showLine:true,
  					showTitle:true
  				}
  			};
  		
  			var zNodes = [
  				{
  					name:"八维管理系统",
  					url:"www.baidu.com",
  					children:[
  						{
  							name:"用户管理",
  							children:[
  								{name:"用户列表", url:"getList.action"},
  								{name:"添加用户"}
  							]
  						},
  						{name:"角色管理"},
  						{name:"权限管理"},
  					]
  				}
  			];
  		
  			$.fn.zTree.init($("#zTree"), setting, zNodes);
  		});
  		
  		function test(event, treeId, treeNode){
  			alert("你好");
  		}
  	</script>
  </head>
  
  <body>
  	<div id="zTree" class="zTree"></div>
  </body>
</html>
