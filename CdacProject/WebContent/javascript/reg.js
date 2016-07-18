function fnamecheck(name){
    	var re= /^[a-zA-Z\s]+$/;
     if(!re.test(name)){
    	 document.getElementById("fname").innerHTML = "Invalid Characters";
     }
     else{
    	 document.getElementById("fname").innerHTML ="";
     }
     
    }
function lnamecheck(name){
    	var re= /^[a-zA-Z\s]+$/;
     if(!re.test(name)){
    	 document.getElementById("lname").innerHTML = "Invalid Characters";
     }
     else{
    	 document.getElementById("lname").innerHTML ="";
     }
     
    }
function unamecheck(name){
    	var re= /^[a-zA-Z\s]+$/;
     if(!re.test(name)){
    	 document.getElementById("unameu").innerHTML = "Invalid Characters";
     }
     else{
    	 document.getElementById("unameu").innerHTML ="";
     }
     
    }
 function passlen(s)
   {
    	var s= s;
    	if(s.length< 6)
    		{
    		
    		document.getElementById("passw").innerHTML = "password too short";
    		}
    	if(s.length>=6)
    		{
    		document.getElementById("passw").innerHTML = "password is ok";
    		}
    	if(s.length >= 9){
    		document.getElementById("passw").innerHTML = "password is strong";
    	}
   }
    
    function emailcheck(r)
{
    	
    	var re = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/
    		
        	if(!re.test(r))
        		{
        		document.getElementById("emailc").innerHTML="Email ID not valid";
        	
        		
        		}
        	else{
        		document.getElementById("emailc").innerHTML="";
        	}
}    
function cnamecheck(name){
    	var re= /^[a-zA-Z\s]+$/;
     if(!re.test(name)){
    	 document.getElementById("cname").innerHTML = "Invalid Characters";
     }
     else{
    	 document.getElementById("cname").innerHTML ="";
     }
     
    }

   
  
function phonecheck(phone){
	var re=/^[0-9\-\+]{9,15}$/;
	if(!re.test(phone)){
				document.getElementById("phone").innerHTML="Phone Number is inavalid";
	}
	else{
				document.getElementById("phone").innerHTML="";
		}
   }