// Function to validate the login form
function validateForm() {
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;

  if (username === "" || password === "") {
      alert("Please fill in all fields.");
      return false;
  }
  return true;
}

// Get the current page URL
const currentPageUrl = window.location.href;

// Find the "Home" link
const homeLink = document.querySelector('.topmenu a[href="index.html"]');

// Add the "active" class to the "Home" link
if (homeLink && currentPageUrl.includes('index.html')) {
  homeLink.closest('li').classList.add('active');
}
