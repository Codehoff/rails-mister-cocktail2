import ScrollReveal from 'scrollreveal';

const scrollCocktails = () => {
    ScrollReveal().reveal('.card-trip', {
        interval: 100,
        reset: true,
        mobile: false
    });
}

export { scrollCocktails };