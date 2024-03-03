// Get references to the form elements
const inputText = document.querySelector('.input1');
const dropdown = document.querySelector('.dropdown-btn');
const translatedText = document.querySelector('.input2');

// Add event listener to the translate button
document.querySelector('.bttns button').addEventListener('click', translateText);

function translateText(event) {
  // Prevent default form submission
  event.preventDefault();

  document.getElementById('translation-status').style.display = 'block';

  // Store the entered text and selected language in variables
  const originalText = inputText.value;
  const targetLanguage = dropdown.value;

  // Send the data to the server using AJAX
  fetch('/translate', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      originalText,
      targetLanguage,
    })
  })
  .then(response => response.json())
  .then(data => {
    // Update the translated text element with the returned translated text
    translatedText.value = data.translatedText;
    document.getElementById('translation-status').style.display = 'none';
  })
  .catch(error => {
    console.error('Error:', error);
  });
}
