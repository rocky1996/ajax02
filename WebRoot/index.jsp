<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<title>二级联动</title>  
  </head>
  <body>
  	<select id="province" name="province">
  		<option value="">请选择......</option>
  	</select>
  	<select id="city" name="city">
  		<option value="">请选择......</option>
  	</select>
  	
  	<script type="text/javascript">
  		window.onload=function(){
  			//得到服务器返回的xml文件
  			var xhr = createXmlHttpRequest();
  			xhr.onreadystatechange = function(){
  				if(xhr.readyState == 4){
  					if(xhr.status == 200 || xhr.status == 304){
  						var data = xhr.responseText;
  						alert(data);
  					}
  				}
  			}
  			
  			xhr.open("GET","/ajax02/servlet/DemoServlet?time="+new Date().getTime());
  			xhr.send(null);
  			
  		}
  		
  		function createXmlHttpRequest(){
  			var xmlHttp;
  			try{
  				xmlHttp = new XMLHttpRequest();
  			}catch(e){
  				try{
  					xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
  				}catch(e){
  					try{
  						xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  					}catch(e){
  						
  					}
  				}
  			}
  			return xmlHttp;
  		}
  	</script>
  </body>
</html>
