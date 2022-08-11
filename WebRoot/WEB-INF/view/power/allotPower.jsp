<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分配权限</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/zTree/js/jquery.ztree.excheck.min.js"></script>
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
  				},
  				check:{
  					enable:true,
  					chkStyle:"checkbox"
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
  			
  			$.ajax({
  				async:false,
  				url:"getPowerByRid.action",
  				type:"post",
  				data:{rid:2},
  				dataType:"json",
  				success:function (obj){
  					var treeObj = $.fn.zTree.getZTreeObj("zTree");
  					for (var i in obj) {
  						var node = treeObj.getNodeByParam("id", obj[i].id);
  						treeObj.checkNode(node, true, false);
  						/*if(node.isParent){
							treeObj.checkNode(node, true, false);
  						}else{
  							treeObj.checkNode(node, true, true);
  						}*/
					}
  				}
  			});
  			
  			$("#btn").click(function (){
  				var treeObj = $.fn.zTree.getZTreeObj("zTree");
  				var checkedNodes = treeObj.getCheckedNodes(true);
  				for ( var i in checkedNodes) {
					alert(checkedNodes[i].id);
				}
  			});
  		});
  	</script>  
  </head>
  
  <body>
  	<div id="zTree" class="zTree"></div>
  	<input type="button" value="提交" id="btn" />
  </body>
</html>
