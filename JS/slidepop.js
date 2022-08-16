var slideIndex1 = 0;
showSlides1();

function showSlides1() {
    var i;
    
    var slides1 = document.getElementsByClassName("mySlides1");
  
    for (i = 0; i < slides1.length; i++) {
    	slides1[i].style.display = "block";  
     }
     
     slideIndex1++;
     
     if (slideIndex1 > slides1.length) {slideIndex1 = 1}
     
	
 	slides1[slideIndex1-1].style.display = "none";
     
     setTimeout(showSlides1, 5000);  // Change image every 2 seconds
}
