console.log('working')
// Get the file input element and image box element
const fileInput = document.getElementById('image-upload');
const imageBox = document.getElementById('image-box');

// Add an event listener to the file input for the 'change' event
fileInput.addEventListener('change', function(event) {
    // Check if a file is selected
    if (event.target.files && event.target.files[0]) {
        // Create a FileReader object
        const reader = new FileReader();

        // Set up the FileReader onload event handler
        reader.onload = function(e) {
            // Create a new image element
            const img = document.createElement('img');

            // Set the image source to the data URL
            img.src = e.target.result;

            // Append the image to the image box
            imageBox.innerHTML = '';
            imageBox.appendChild(img);
        };

        // Read the selected file as a data URL
        reader.readAsDataURL(event.target.files[0]);
    }
});