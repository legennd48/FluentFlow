function handleImageUpload() {
    const input = document.getElementById('image-upload');
    const resultArea = document.getElementById('result-text');
    
    input.addEventListener('change', function() {
        const file = input.files[0];
        const reader = new FileReader();
        
        reader.onload = function(e) {
            const image = new Image();
            image.src = e.target.result;
            image.style.maxWidth = '100%';
            resultArea.innerHTML = '';
            resultArea.appendChild(image);

            // Log a message when an image is uploaded
            console.log('Image uploaded successfully:', file.name);
        };
        
        reader.readAsDataURL(file);
    });
}

// Function to handle text translation
function handleTextTranslation() {
    const translateButton = document.getElementById('translate-button');
    const resultArea = document.getElementById('result-text');
    
    translateButton.addEventListener('click', function() {
        const text = prompt('Enter text to translate:');
        // Perform translation logic here
        // For demonstration purposes, we'll just display the text in the result area
        resultArea.innerHTML = text;

        // Log the translated text
        console.log('Translated text:', text);
    });
}

// Initialize functions on page load
window.onload = function() {
    handleImageUpload();
    handleTextTranslation();

    // Log a message to indicate that the JavaScript code is running
    console.log('JavaScript code is linked and running.');
};