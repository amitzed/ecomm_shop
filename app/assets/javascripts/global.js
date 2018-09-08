document.addEventListener("turbolinks:load", function() {

  const notification = document.querySelector('.global-notification');

  if(notification) {
    window.setTimeout(function() {
      notification.style.display = "none";
    }, 2500);
  }

});
