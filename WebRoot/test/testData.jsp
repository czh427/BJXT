<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>zTree简单数据</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.core.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.excheck.js"></script>
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
  				},
  				data:{
  					simpleData:{
  						enable:true,
  						idKey:"id",
  						pIdKey:"pId"
  					}
  				},
  				check:{
  					enable:true,
  					chkStyle:"checkbox"
  				}
  			};
  			var zNodes = [
  				{id:1, pId:0, name:"八维管理系统", open:true},
  				{id:2, pId:1, name:"学生管理", iconOpen:"../zTree/css/zTreeStyle/img/diy/1_open.png", iconClose:"../zTree/css/zTreeStyle/img/diy/1_close.png"},
  				{id:21, pId:2, name:"学生列表", icon:"../zTree/css/zTreeStyle/img/diy/5.png"},
  				{id:22, pId:2, name:"添加学生信息"},
  				{id:3, pId:1, name:"教师管理"},
  				{id:31, pId:3, name:"加分"},
  				{id:32, pId:3, name:"开除"},
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
