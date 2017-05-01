<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<% AdminUI adminUi = (AdminUI)session.getAttribute("adminUi"); 
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Verdana,sans-serif; font-color: white; margin:0; background-color:#686868}
#banner{
  width:100%;
  background-image:url(http://i.imgur.com/TsQQMTp.png);
  background-size:880px 680px;
  background-repeat:no-repeat;
  background-position:60% 46%;
  height: 99px;
  background-color: #333333;
}

.slide {display:none}
.slideshow-container {
  max-width: 640px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2s;
}

@-webkit-keyframes fade {
  from {opacity: .2} 
  to {opacity: 1}
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: center;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 10px 17px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
</head>
<body>
<div id="banner">
</div>
<ul>
  <li><a class="active" href="ManageUniversityMenu.jsp">Manage University</a></li>
  <li><a class ="active" href="ManageUserMenu.jsp">Manage User</a></li>
  <li><a class ="active" href="AdminLogOut.jsp">Log Out</a></li>
</ul>
<br>
<div align="center" style="color:white">
Hello Admin <%out.println(adminUi.viewProfile().getUsername()); %> 
<br>
<br>
</div>
<div class="slideshow-container">

<div class="slide fade">
  <img src="http://hac.bard.edu/travel/index.php?action=getfile&id=7663364&disposition=inline&type=image" style="width:100%">
  <div class="text">Bard University</div>
</div>

<div class="slide fade">
  <img src="http://hcap.artstor.org/collect/cic-hcap/index/assoc/p418.dir/Sacred%20Heart%20Chapel%20%28view%20from%20the%20west,%20toward%20cloister%20walk%29,%20College%20of%20Saint%20Benedict-large.jpg" style="width:100%">
  <div class="text">College of Saint Benedict</div>
</div>

<div class="slide fade">
  <img src="http://www.ivyboost.com/wp-content/uploads/2011/10/yale_university2.jpg" style="width:100%">
  <div class="text">Yale University</div>
</div>

<a class="prev" onclick="nextSlides()">&#10094;</a>
<a class="next" onclick="prevSlides()">&#10095;</a>

</div>
<br>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function nextSlides() {
  slideIndex++;
  showSlides(slideIndex);
}

function prevSlides(){
	slideIndex--;
	showSlides(slideIndex);
}

function showSlides(index) {
  var i;
  var slides = document.getElementsByClassName("slide");
  if (index > slides.length) {slideIndex = 1}    
  if (index < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
}
</script>
<footer style="color:white; font-size:12px">
<center>
<br>
<img src="http://i.imgur.com/l2IaWyd.png" style="width:250px; height:200px" />
<br>
  Choose My College <br>
  Created by Team DASC
  </center>
</footer>
</body>
</html> 
