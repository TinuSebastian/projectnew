<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>WearStyle</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:1000px;height: 500px">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
       
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="width:1500px;height: 600px">
      <div class="item active" style="width:1500px;height: 600px">
        <img src="${pageContext.request.contextPath}\resources\ethnicwearnew.jpg" alt="ethnicwear" style="width:1800px;height: 600px">
      <div class="text">ETHNIC WEAR</div>
      
      </div>

      <div class="item" style="width:1500px;height: 600px">
        <img src="${pageContext.request.contextPath}\resources\kidswear.jpg" alt="kidswear" style="width:1800px;height: 600px">
      </div>
    
      <div class="item" style="width:1500px;height: 600px"">
        <img src="${pageContext.request.contextPath}\resources\mens wear.jpg" alt="menswear" style="width:1800px;height: 600px">
      </div>
   
 <div class="item" style="width:1500px;height: 600px">
        <img src="${pageContext.request.contextPath}\resources\sports and gymnew.jpg" alt="gentswear" style="width:1800px;height: 600px"">
      </div>
  
    <div class="item" style="width:1500px;height: 600px">
        <img src="${pageContext.request.contextPath}\resources\western new.jpg" alt="wedding wear" style="width:1800px;height: 600px">
      </div>
       <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
      </div>
    
    </div>
     
    <!-- Left and right controls -->
    

 

  
<jsp:include page="Footer.jsp"></jsp:include>
</body>

</html>
