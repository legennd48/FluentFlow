console.log('working')
// Get the input and output textarea elements
const inputTextarea = document.querySelector('.input1');
const outputTextarea = document.querySelector('.input2');

// Get the language dropdown button and content
const dropdownBtn = document.querySelector('.dropdown-btn');
const dropdownContent = document.querySelector('.dropdown-content');

// Add click event listener to the language dropdown button
dropdownBtn.addEventListener('click', () => {
  // Toggle the display of the language dropdown content
  dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
});

// Add click event listener to the document to hide dropdown when clicked outside
document.addEventListener('click', (event) => {
  if (!event.target.closest('.dropdown-btn') && !event.target.closest('.dropdown-content')) {
    dropdownContent.style.display = 'none';
  }
});

// Add click event listener to the translate button
const translateButton = document.querySelector('.bttns button');
translateButton.addEventListener('click', () => {
  // Get the text from the input textarea
  const textToTranslate = inputTextarea.value;

  // Simulate translation (replace this with actual translation logic)
  const translatedText = `${textToTranslate} translated`; // Placeholder translation

  // Display the translated text in the output textarea
  outputTextarea.value = translatedText;
});

// Add click event listener to the language dropdown items
const languageItems = document.querySelectorAll('.dropdown-content li');
languageItems.forEach((item) => {
  item.addEventListener('click', () => {
    const selectedLanguage = item.querySelector('a').innerText;
    dropdownBtn.innerText = selectedLanguage;
    dropdownContent.style.display = 'none';
  });
});

// Add click event listener to the "Cancel" button
const cancelButton = document.querySelector('.buttns button:nth-of-type(1)');
cancelButton.addEventListener('click', () => {
  // Clear the input and output textareas
  inputTextarea.value = '';
  outputTextarea.value = '';
});