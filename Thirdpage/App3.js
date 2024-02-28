// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});
// Scroll reveal animation for elements
ScrollReveal().reveal('.reveal', {
    delay: 200,
    distance: '20px',
    easing: 'cubic-bezier(0.5, 0, 0, 1)',
    interval: 600
});