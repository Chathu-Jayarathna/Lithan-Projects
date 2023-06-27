var studentArray=[];
$(document).ready(function(){
    showStudents();
  
});

function showStudents(){
    //print students
studentArray=JSON.parse(window.localStorage.getItem("studentArray"));
if(studentArray==null){
studentArray=[];
}

document.getElementById("table-body").innerHTML="";

for(var i=0; i<studentArray.length;i++){
    var studentObj=studentArray[i];
    
    var tablebody=document.getElementById("table-body");
    var trelement=document.createElement("tr");
// first name
    var fnametd=document.createElement("td");
    var fnametext=document.createTextNode(studentObj.fname);

    fnametd.appendChild(fnametext);
    trelement.appendChild(fnametd);
    tablebody.appendChild(trelement);

    // last name
    var lnametd=document.createElement("td");
    var lnametext=document.createTextNode(studentObj.lname);

    lnametd.appendChild(lnametext);
    trelement.appendChild(lnametd);
    tablebody.appendChild(trelement);
// email
    var emailtd=document.createElement("td");
    var emailtext=document.createTextNode(studentObj.email);

    emailtd.appendChild(emailtext);
    trelement.appendChild(emailtd);
    tablebody.appendChild(trelement);
// nic
    var nictd=document.createElement("td");
    var nictext=document.createTextNode(studentObj.nic);

    nictd.appendChild(nictext);
    trelement.appendChild(nictd);
    tablebody.appendChild(trelement);
// phone
    var phonetd=document.createElement("td");
    var phonetext=document.createTextNode(studentObj.phone);

    phonetd.appendChild(phonetext);
    trelement.appendChild(phonetd);
    tablebody.appendChild(trelement);
// address
    var addresstd=document.createElement("td");
    var addresstext=document.createTextNode(studentObj.address);

    addresstd.appendChild(addresstext);
    trelement.appendChild(addresstd);

// Edit
    var tdbutton=document.createElement("td");
    var btnUp=document.createElement("button");
    btnUp.setAttribute("class","btn btn-primary");
    btnUp.setAttribute("onclick","editStudent(this)");
    var textbtnUp=document.createTextNode("Edit");
    
    btnUp.appendChild(textbtnUp);
    tdbutton.appendChild(btnUp);
    trelement.appendChild(tdbutton);
// Delete
    
    var btnDel=document.createElement("button");
    btnDel.setAttribute("class","btn btn-danger");
    btnDel.setAttribute("onclick","deleteStudent(this)");
    var textbtnDel=document.createTextNode("Delete");
    
    btnDel.appendChild(textbtnDel);
    tdbutton.appendChild(btnDel);
    trelement.appendChild(tdbutton);
    
    tdbutton.appendChild(btnDel);
    tablebody.appendChild(trelement);

}

}

function editStudent(element){
var rowIndex=$(element).closest("td").parent().index();
var studentObj=studentArray[rowIndex];

$("#fname").val(studentObj.fname);
$("#lname").val(studentObj.lname);
$("#email").val(studentObj.email);
$("#nic").val(studentObj.nic);
$("#phone").val(studentObj.phone);
$("#address").val(studentObj.address);
$("#rowIndex").val(rowIndex);
    
}
function editDetails(){
    var fname=$("#fname").val();
    var lname=$("#lname").val();
    var email=$("#email").val();
    var nic=$("#nic").val();
    var phone=$("#phone").val();
    var address=$("#address").val(); 
    var rowIndex=$("#rowIndex").val();
    var newStudent={ 
        fname : fname,
        lname : lname,
        email : email,
        nic : nic,
        phone : phone,
        address : address,
        course : "",
        branch : ""
    }
    studentArray[rowIndex]=newStudent; 
    window.localStorage.setItem("studentArray",JSON.stringify(studentArray));
    showStudents();
}

function deleteStudent(element){
var rowIndex=$(element).closest("td").parent().index();
studentArray.shift(rowIndex,1);
window.localStorage.setItem("studentArray",JSON.stringify(studentArray));
$(element).closest("td").parent().remove();
   
    
}


function addStudent(){
    
    var fname=$("#fname").val();
    var lname=$("#lname").val();
    var email=$("#email").val();
    var nic=$("#nic").val();
    var phone=$("#phone").val();
    var address=$("#address").val(); 
    var newStudent={ 
        fname : fname,
        lname : lname,
        email : email,
        nic : nic,
        phone : phone,
        address : address,
        course : "",
        branch : ""
    }
    studentArray.push(newStudent);
    window.localStorage.setItem("studentArray",JSON.stringify(studentArray));

// var newRow="<tr><td>" + fname + "</td><td>" + lname +
//              "</td><td>" + email + "</td><td>" + nic + "</td><td>" + phone + "</td><td>" + address + 
//              "</td><td></td><td></td><td><button class='btn btn-primary' onclick='editStudent(this)'>Edit</button></td><td><button class='btn btn-danger' onclick='deleteStudent(this)'>Edit</button></td></tr>";
// var tbody= $("#table-body").append(newRow);

    showStudents();

    $('.update-student input').val('');

}

var isFormSubmit=true;

function checkValidation() {
  
    var firstName = document.getElementById("fname").value;
    var lastName = document.getElementById("lname").value;
    var email = document.getElementById("email").value;
    var nic = document.getElementById("nic").value;
    var phone = document.getElementById("phone").value;
    var address = document.getElementById("address").value;

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
        addStudent();
    }

}