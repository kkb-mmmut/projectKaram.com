 var images=["slider1.jpg","slider2.jpg","slider3.jpg","slider4.jpg","slider5.jpg","slider6.jpg"];
 var i=0;
 function moveSlider()
 {
     if(i==images.length)
     {
         i=0;
     }
     document.getElementById("slide").src="images/"+images[i];
     i++;
     window.setTimeout("moveSlider()",2000);
 }
 


