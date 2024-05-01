function validateForm() {
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;

  if (username === "" || password === "") {
      alert("Please fill in all fields.");
      return false;
  }
  return true;
}

const currentPageUrl = window.location.href;
const homeLink = document.querySelector('.topmenu a[href="index.html"]');
if (homeLink && currentPageUrl.includes('index.html')) {
  homeLink.closest('li').classList.add('active');
}

function editForm() {
  var inputs = document.getElementById('patientForm').getElementsByTagName('input');
  // Loop through input elements and remove readonly attribute
  for (var i = 0; i < inputs.length; i++) {
      inputs[i].removeAttribute('readonly');
  }
  // Same for textarea elements
  var textareas = document.getElementById('patientForm').getElementsByTagName('textarea');
  for (var i = 0; i < textareas.length; i++) {
      textareas[i].removeAttribute('readonly');
  }
}

function makeReadOnly() {
  document.getElementById('first-name').readOnly = true;
}
