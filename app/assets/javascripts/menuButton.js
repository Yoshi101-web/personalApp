document.addEventListener('DOMContentLoaded', function () {
  document.getElementById('menuButton').addEventListener('click', function (ev) {
    ev.preventDefault();
    this.classList.toggle('active');
  });
});
