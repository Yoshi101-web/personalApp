
document.addEventListener('DOMContentLoaded', function () {
  document.getElementById('menuButton').addEventListener('click', function (ev) {
    ev.preventDefault();
    getElementsByClassName('sidebar-item').classList.toggle('active');
  });
});
