$(document).ready(function () {
    $("form").on("submit", function (event) {
      event.preventDefault();
      const valid = validateRegisForm();
  
      if (valid === true) {
        if (confirm("Submit Form?")) {
          $.post("load_page.jsp", function () {
            loadPage("#user/thank-you");
            localStorage.setItem(
              `formData${Math.random() * 100}`,
              JSON.stringify({
                firstName: $("#first-name-regis").val(),
                lastName: $("#last-name-regis").val(),
                email: $("#email-regis").val(),
                nic: $("#nic-regis").val(),
                address: $("#address-regis").val(),
                phone: $("#phone-regis").val(),
                selectCourse: $("#select-regis").val(),
              })
            );
          });
        }
      }
    });
  });
  
  function validateRegisForm() {
    const firstName = $("#first-name-regis");
    const lastName = $("#last-name-regis");
    const email = $("#email-regis");
    const nic = $("#nic-regis");
    const address = $("#address-regis");
    const phone = $("#phone-regis");
    const selectCourse = $("#select-regis");
  
    const inputFirstName = firstName.val().trim();
    const inputLastName = lastName.val().trim();
    const inputEmail = email.val().trim();
    const inputnic = nic.val().trim();
    const inputAddress = address.val().trim();
    const inputPhone = phone.val().trim();
    const inputSelectCourse = selectCourse.val();
  
    
    if (inputFirstName === null || inputFirstName === "") {
      firstName.addClass("error-border").addClass("error-message");
      firstName.attr("placeholder", "Enter your First Name Here");
      return false;
    } else {
      firstName.removeClass("error-border");
    }
    if (inputLastName === null || inputLastName === "") {
      lastName.addClass("error-border").addClass("error-message");
      lastName.attr("placeholder", "Enter your Last Name Here");
      return false;
    } else {
      lastName.removeClass("error-border");
    }
    if (inputEmail === null || inputEmail === "") {
      email.addClass("error-border").addClass("error-message");
      email.attr("placeholder", "Add your email");
      return false;
    } else {
      email.removeClass("error-border");
    }
    if (inputnic === null || inputnic === "") {
        nic.addClass("error-border").addClass("error-message");
        nic.attr("placeholder", "Please fill your nic");
        return false;
      } else {
        nic.removeClass("error-border");
      }
      if (inputphone === null || inputphone === "") {
        phone.addClass("error-border").addClass("error-message");
        phone.attr("placeholder", "Please fill your number");
        return false;
      } else {
        phone.removeClass("error-border");
      }
    if (inputAddress === null || inputAddress === "") {
      address.addClass("error-border").addClass("error-message");
      address.attr("placeholder", "Please fill your address");
      return false;
    } else {
      address.removeClass("error-border");
    }
  
    if (inputSelectCourse === "select-valid") {
      selectCourse.addClass("error-border");
      $(".select-validator").css("display", "block").html("Select any course");
      return false;
    }
  
    return true;
    }

  
  
