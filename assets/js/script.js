const navbar = document.querySelector('.nav'),
toggleBtn = document.querySelector('.toggleBtn'),
navMenu = document.querySelector('.nav-menu'),
toggleBtnIcon = toggleBtn.querySelector('.bx')

window.onscroll = () => {
    if (window.scrollY > 120) {
        navbar.classList.add('nav-active')
    } else {
        navbar.classList.remove('nav-active')
    }
}

let status = true
toggleBtn.onclick = () => {
    navMenu.classList.toggle('nav-menu-active')
    if (status) {
        toggleBtnIcon.classList.remove('bx-menu')
        toggleBtnIcon.classList.add('bx-x')
        status = false
    }else {
        toggleBtnIcon.classList.remove('bx-x')
        toggleBtnIcon.classList.add('bx-menu')
        status = true
    }
}