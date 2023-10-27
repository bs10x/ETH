// Store the original hue value
let originalHue = 120;

// Store the target hue value
let targetHue = originalHue;

// EventListener to change background color as the user scrolls
window.addEventListener('scroll', function () {
    const scrollPercent = window.pageYOffset / (document.documentElement.scrollHeight - document.documentElement.clientHeight);
    const hue = 120 + (scrollPercent * 120);
    document.body.style.backgroundColor = `hsl(${hue}, 100%, 50%)`;
});


// reset the background color when scrolling back up
window.addEventListener('scroll', function () {
    if (window.pageYOffset === 0) {
        // Reset the background color to white with a smooth transition
        document.body.style.transition = 'background-color 0.3s ease-out'; // Adjust transition duration as needed
        
        // Reset the targetHue to the originalHue
        targetHue = originalHue;
    }
});


