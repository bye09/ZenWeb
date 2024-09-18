const header = document.querySelector("header");

window.addEventListener("scroll", function () {
    header.classList.toggle("sticky", window.scroll > 80)
});

Let menu = document.querySelector('#menu-icon');
Let navbar = document.querySelector('navbar');
menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('open')
};

window.onscroll = () => {
    menu.classList.remove('bx-x');
    navbar.classList.remove('open')
};