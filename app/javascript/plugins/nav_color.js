const navColor = () => {
  const navbar = document.querySelector('.navbar');
  let position = 0
  window.addEventListener('scroll', (event) => {
    position = window.scrollY
    if (position > 729) {
      navbar.classList.remove('bg-orange')
    } if (position < 729) {
      navbar.classList.add('bg-orange')
    }
  })
}

export { navColor };
