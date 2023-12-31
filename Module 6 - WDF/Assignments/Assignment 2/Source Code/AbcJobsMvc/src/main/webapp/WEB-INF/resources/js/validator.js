const email = document.getElementById("email");
const firstName = document.getElementById("fname");
const lastName = document.getElementById("lname");

function checkValidation() {
  const inputEmail = email.value.trim();
  const inputPassword = password.value.trim();
  const inputFName = firstName.value.trim();
  const inputLName = lastName.value.trim();

  // Email
  if (inputEmail === null || inputEmail === "") {
    document.querySelector(".errorEmail").style.display = "block";
    email.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorEmail").style.display = "none";
    email.classList.remove("error-border");
  }
  
  // Password
  if (inputPassword === null || inputPassword === "") {
    document.querySelector(".errorPassword").style.display = "block";
    password.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorPassword").style.display = "none";
    password.classList.remove("error-border");
  }
  
  // First Name
  if (inputFName === null || inputFName === "") {
    document.querySelector(".errorFname").style.display = "block";
    firstName.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorFname").style.display = "none";
    firstName.classList.remove("error-border");
  }

  // Last Name
  if (inputLName === null || inputLName === "") {
    document.querySelector(".errorLname").style.display = "block";
    lastName.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorLname").style.display = "none";
    lastName.classList.remove("error-border");
  }

  return true;
}
 