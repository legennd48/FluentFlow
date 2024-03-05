import unittest
from unittest.mock import patch

from flask import Flask, request
from app.master import FluentFlow
from fluentflow import app  # Assuming app is defined in fluentflow.py

# Mock the translate method of FluentFlow
@patch.object(FluentFlow, 'translate')
class TestFluentFlowApp(unittest.TestCase):

    def test_translate_post_success(self, mock_translate):
        # Mock the translated text
        mock_translate.return_value = "Hola (Spanish)"

        # Prepare test data
        original_text = "Hello"
        target_language = "es"
        data = {'originalText': original_text, 'targetLanguage': target_language}

        # Test the POST request
        with app.test_client() as client:
            response = client.post('/translate', json=data)

        # Assert expected behavior
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json, {'translatedText': 'Hola (Spanish)'})
        mock_translate.assert_called_once_with(original_text, target_language, is_image=False)

    def test_translate_post_error(self, mock_translate):
        # Mock an exception during translation
        mock_translate.side_effect = Exception('Translation failed')

        # Prepare test data
        original_text = "Hello"
        target_language = "es"
        data = {'originalText': original_text, 'targetLanguage': target_language}

        # Test the POST request
        with app.test_client() as client:
            response = client.post('/translate', json=data)

        # Assert expected behavior
        self.assertEqual(response.status_code, 500)
        self.assertEqual(response.json, {'error': 'Internal Server Error'})

    # Add similar tests for other routes (e.g., ocr_data)

if __name__ == '__main__':
    unittest.main()
