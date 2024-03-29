const fileInput = document.getElementById('image-upload');
const imageBox = document.getElementById('image-box');
const translateButton = document.querySelector(".buttn[type='submit']");
const languageSelect = document.querySelector('.butt[name="Target_Language"]');

// Display selected image
fileInput.addEventListener('change', function (event) {
  if (event.target.files && event.target.files[0]) {
    const fileReader = new FileReader();
    fileReader.onload = function (e) {
      const image = document.createElement('img');
      image.src = e.target.result;

      // Replace only the existing image
      const existingImage = imageBox.querySelector('img');
      if (existingImage) {
        imageBox.replaceChild(image, existingImage);
      } else {
        imageBox.appendChild(image);
      }
    };
    fileReader.readAsDataURL(event.target.files[0]);
  }
});

// Translate image text using AJAX
translateButton.addEventListener('click', async function (event) {
  event.preventDefault(); // Prevent form submission

  // Only proceed if an image is selected
  if (fileInput.files && fileInput.files[0]) {
    const formData = new FormData();
    formData.append("image", fileInput.files[0]);
    formData.append("Target_Language", languageSelect.value);

    try {
      const response = await fetch("/ocr", {
        method: "POST",
        body: formData,
      });

      if (response.ok) {
        const data = await response.json();
        document.getElementById("result-text").value = data.translatedText;
        // Reset dropdown to initial state
        languageSelect.selectedIndex = 0;
      } else {
        console.error("Error:", response.statusText);
        // TODO: Handle errors appropriately (e.g., display error message)
      }
    } catch (error) {
      console.error("Error:", error);
      // TODO: Handle network errors (e.g., display error message)
    }
  } else {
    // Handle the case where no image is selected
    alert("Please select an image to translate.");
  }
});
