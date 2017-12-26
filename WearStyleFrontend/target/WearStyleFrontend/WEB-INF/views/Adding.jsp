<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN</title>
</head>
<style type="text/css">
body
{
    background: url('${pageContext.request.contextPath}/resources/backgroundnew.jpg') fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
   
} 


</style>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<div class="container">
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#category">Category</a></li>
  <li><a data-toggle="tab" href="#supplier">Supplier</a></li>
  <li><a data-toggle="tab" href="#product">Product</a></li>
  <li><a data-toggle="tab" href="#update">Update</a></li>
</ul>

<div class="tab-content">



  <div id="category" class="tab-pane fade in active">
    <form method="post" action="AddCategory" >
    <h3 class="input-title"><font color="white">Category Name</font></h3>
    <input class="form-control" type="text" name="catgName" required/>
    <h3 class="input-title"><font color="white">Category Description</font></h3>
    <input class="form-control" type="text" name="catgDescrip" required/>
    <br>
    <br>
    <center>
    <button class="btn btn-lg btn-primary" type="submit">Save</button>
    <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
    </center>
    </form>
  </div>
  
  
  
  <div id="supplier" class="tab-pane fade">
  <form method="post" action="AddSupplier">
  <h3 class="input-title"><font color="white">Supplier Name</font></h3>
  <input class="form-control" type="text" name="splrName" required/>
  <h3 class="input-title"><font color="white">Supplier Address</font></h3>
  <input class="form-control" type="text" name="splrAdd" required/>
  <br><br>
  <center>
    <button class="btn btn-lg btn-primary" type="submit">Save</button>
    <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
    </center>
  </form>
  </div>
  
  
  
  
  <div id="product" class="tab-pane fade">
 <%--  <form  action="InsertProduct" enctype="multipart/form-data" method="post">
  <h3 class="input-title"><font color="white">Product Name</font></h3>
  <input class="form-control" type="text" name="productName" required/>
  <h3 class="input-title"><font color="white">Product Description</font></h3>
  <input class="form-control" type="text" name="productDesc" required/>
  <h3 class="input-title"><font color="white">Product Stock</font></h3>
  <input class="form-control" type="number" name="stock" required/>
  <h3 class="input-title"><font color="white">Product Price</font></h3>
  <input class="form-control" type="number" name="price" required/>
    
<div class="form-group">
    <h4><font color="white">Select Category</font></h4><br>
    <select class="form-control" name="cat" required>
    <option value="">------SELECT----------</option>
    <c:forEach items="${categoryList}" var="category">
    <option value="${category.catgId}">${category.catgName}</option>
    </c:forEach>
    </select>
</div>

<div class="form-group">
    <h4><font color="white">Select Supplier</font></h4><br>
    <select class="form-control" name="sup" required>
    <option value="">------SELECT-----------</option>
    <c:forEach items="${supplierList}" var="supplier">
    <option value="${supplier.splrId}">${supplier.splrName}</option></c:forEach>
    </select>
</div>
<br><br>

<div class="fileinput fileinput-new" data provides="fileinput">
    <tr>
    <td><font color="white">Image File</font></td>
    <td><input class="form-control" type="file" name="pimage" accept="image/*"></td>
    </tr>
</div>

<br>
<br>

   <center>
    <button class="btn btn-lg btn-primary" type="submit">Save</button>
    <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
    </center>
</form> --%>

<%-- <form class="form-horizontal"  method="POST" action="${pageContext.request.contextPath}/admin/InsertProduct" enctype="multipart/form-data">



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
  <div class="col-md-4">
  <input id="product_name" name="productName" placeholder="PRODUCTNAME" class="form-control input-md" required="true" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION </label>  
  <div class="col-md-4">
  <input id="product_name_fr" name="productDesc" placeholder="PRODUCT DESCRIPTION " class="form-control input-md" required="" type="text">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="stock">STOCK</label>  
  <div class="col-md-4">
  <input id="available_quantity" name="stock" placeholder="STOCK" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="price">PRICE</label>  
  <div class="col-md-4">
  <input id="available_quantity" name="price" placeholder="PRICE" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
  <div class="col-md-4">
    <select id="product_categorie" name="cat" class="form-control">
     <option value="">------SELECT----------</option>
    <c:forEach items="${categoryList}" var="category">
    <option value="${category.catgId}">${category.catgName}</option>
    </c:forEach>
    </select>
  </div>
</div>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="product_categorie">PRODUCT SUPPLIER</label>
  <div class="col-md-4">
    <select id="product_categorie" name="sup" class="form-control">
    <option value="">------SELECT-----------</option>
    <c:forEach items="${supplierList}" var="supplier">
    <option value="${supplier.splrId}">${supplier.splrName}</option></c:forEach>
    </select>
  </div>
</div>






<div class="fileinput fileinput-new" data provides="fileinput">
<label class="col-md-4 control-label" for="product_categorie">SELECT IMAGE</label>
  <div class="col-md-4">
   <tr>
    <td><font color="white">Image File</font></td>
    <td><input class="form-control" type="file" name="pimage" accept="image/*"></td>
    </tr>
    
</div>
</div>
</div>

<br>
<br>

   <center>
    <button class="btn btn-lg btn-primary" type="submit">Save</button>
    <button class="btn btn-lg btn-primary" type="reset">Cancel</button>
    </center>
</form>  --%>

<form id="Product" action="InsertProduct" method="post" role="form" style="display: block;" enctype="multipart/form-data">
			<div class="form-group">
				<input type="text" name="productname" id="productName" tabindex="2" class="form-control" placeholder="Enter Book name">
			</div>

			<div class="form-group">
				<input type="text" name="productDesc" id="productDescription" tabindex="2" class="form-control" placeholder="About the Book">
			</div>

			<div class="form-group">
				<input type="number" name="stock" id="quantity" tabindex="2" class="form-control" placeholder="enter quantity">
			</div>

			<div class="form-group">
				<input type="number" name="price" id="price" tabindex="2" class="form-control" placeholder="enter price">
			</div>

			

				<div class="form-group">
				    Choose Category: 
     			<select name="cat">
                    <option>SELECT CATEGORY</option>
        			<c:forEach items="${categoryList }" var="c">
     						 <option value="${c.catgId}">${c.catgName}</option>
         			 </c:forEach>
                 </select>

               </div>
               
				<div class="form-group">
				    Choose Publisher: 
     			<select name="sup">
                    <option>SELECT PUBLISHER</option>
        			<c:forEach items="${supplierList }" var="c">
     						 <option value="${c.splrId}">${c.splrName}</option>
         			 </c:forEach>
                 </select>

               </div>
            <div class="form-group">
					BOOK Image
					<input type="file" name="pimage">
			</div>
 			<div class="form-group">
					
					<input type="submit" class="button">
			</div>

</form>


  </div>
  </br>
  
  
   <div id="update" class="tab-pane fade">
     <a href="category?status="><font color="black"><h4>Category List</h4></font></a><br/>
     <a href="supplier?status="><font color="black"><h4>Supplier List</h4></font></a><br/>
     <a href="product?status="><font color="black"><h4>Product List</h4></font></a><br/>
   
  </div>
  
</div>
</div>

<br><br><br>
<br><br><br><br>
<br>
<br><br><br>
<br><br><br><br><br><br>
<br><br>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>