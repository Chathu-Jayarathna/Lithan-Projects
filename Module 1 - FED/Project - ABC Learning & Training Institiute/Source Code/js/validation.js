var isFormSubmit=true;

// student array
var student=[];


// $("#regis-form").on("submit",function(){
   
//   checkValidation();
  
// });

function checkValidation() {

  
    var firstName = document.getElementById("first-name-regis").value;
    var lastName = document.getElementById("last-name-regis").value;
    var email = document.getElementById("email-regis").value;
    var nic = document.getElementById("nic-regis").value;
    var phone = document.getElementById("phone-regis").value;
    var address = document.getElementById("address-regis").value;
    var course = document.getElementById("course-regis").value;
    var branch = document.getElementById("branch-regis").value;
    
  
// Course
    if (course === "select-valid") {
      document.getElementById("course-error").innerHTML="Select Course"
      document.getElementById("course-error").style.display = "block";
      isFormSubmit=false;
      
    } else {
      document.getElementById("course-error").style.display = "none";
      isFormSubmit=true;
    } 
  

// Branch
    if (branch === "select-valid") {
      document.getElementById("branch-error").innerHTML="Select Course"
      document.getElementById("branch-error").style.display = "block";
      isFormSubmit=false;
    } else {
      document.getElementById("branch-error").style.display = "none";
      isFormSubmit=true;
      
    }


// First Name
    if (firstName === null || firstName === "") {
      document.getElementById("first-name-error").innerHTML="First Name is Required"
      document.getElementById("first-name-error").style.display = "block";
      isFormSubmit=false;
    } else {
      document.getElementById("first-name-error").style.display = "none";
      isFormSubmit=true;
    }
  

// Last Name
    if (lastName === null || lastName === "") {
      document.getElementById("last-name-error").innerHTML="Last Name is Required"
      document.getElementById("last-name-error").style.display = "block";
      isFormSubmit=false;
    } else {
      document.getElementById("last-name-error").style.display = "none";
      isFormSubmit=true;
    }


// Email
    if (email === null || email === "") {
      document.getElementById("email-error").innerHTML="Email is Required"
      document.getElementById("email-error").style.display = "block";
      isFormSubmit=false;
    } else {
    var filter=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
      if(!filter.test(email)){
        document.getElementById("email-error").innerHTML="Invalid Email"
        document.getElementById("email-error").style.display = "block";
        isFormSubmit=false;
      } else {
        document.getElementById("email-error").style.display = "none";
        isFormSubmit=true;
      }
    }


// nic
    if (nic === null || nic === "") {
    document.getElementById("nic-error").innerHTML="NIC is Reqiured"
    document.getElementById("nic-error").style.display = "block";
    isFormSubmit=false;
    } else {

    if(nic.length ==10 || nic.length ==12){
    document.getElementById("nic-error").style.display = "none"; 
    isFormSubmit=true;
    } else {
    document.getElementById("nic-error").innerHTML="Invalid NIC length"
    document.getElementById("nic-error").style.display = "block";
    isFormSubmit=false;
    }

    }


// phone
    if (phone === null || phone === "") {
    document.getElementById("phone-error").innerHTML="Phone Number is Reqiured"
    document.getElementById("phone-error").style.display = "block";
    isFormSubmit=false;
    } else {
    if(phone.length ==10){
    document.getElementById("phone-error").style.display = "none"; 
    isFormSubmit=true;
    } else {
    document.getElementById("phone-error").innerHTML="Invalid phone length"
    document.getElementById("phone-error").style.display = "block";
    isFormSubmit=false;
    }

}


// address
    if (address === null || address === "") {
    document.getElementById("address-error").innerHTML="Address is Reqiured"
    document.getElementById("address-error").style.display = "block";
    isFormSubmit=false;
    } else {
    document.getElementById("address-error").style.display = "none"; 
    isFormSubmit=true;
    }


    
// form submit

if(isFormSubmit==true){

// $("#regis-form").submit()
submitForm(firstName,lastName,email,nic,phone,address,course,branch);

}
}
  
function submitForm(firstName,lastName,email,nic,phone,address,course,branch){
  
// window.localStorage.setItem("first_name",firstName);
// localStorage.setItem("last_name",lastName);
// localStorage.setItem("email",email);
// localStorage.setItem("nic",nic);
// localStorage.setItem("phone",phone);
// localStorage.setItem("address",address);
// localStorage.setItem("course",course);
// localStorage.setItem("branch",branch);

var obj={
  fname : firstName,
  lname : lastName,
  email : email,
  nic : nic,
  phone : phone,
  address : address,
  course : course,
  branch : branch
}


student=JSON.parse(window.localStorage.getItem("studentArray"));
if(student==null){
  student=[];
}
student.push(obj);
window.localStorage.setItem("studentArray",JSON.stringify(student));
$('#regis-form').submit();
}



  