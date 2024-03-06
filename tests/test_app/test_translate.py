import unittest
from unittest.mock import patch

from app.translate import TextTranslator


class TestTextTranslator(unittest.TestCase):

    @patch('google.cloud.translate.TranslationServiceClient.translate_text')
    def test_translate_success(self, mock_translate_text):
        # Mock the API response
        mock_response = unittest.mock.MagicMock()
        mock_response.translations = [unittest.mock.MagicMock(translated_text="Hola, mundo!")]
        mock_translate_text.return_value = mock_response

        # Create translator and call translate
        translator = TextTranslator()
        translated_text = translator.translate("Hello, world!", "es")

        # Assert expected behavior
        self.assertEqual(translated_text, "Hola, mundo!")

    @patch('google.cloud.translate.TranslationServiceClient.translate_text')
    def test_translate_error(self, mock_translate_text):
        # Mock the API error
        mock_translate_text.side_effect = Exception("API Error")

        # Create translator and call translate
        translator = TextTranslator()
        translated_text = translator.translate("Hello, world!", "es")

        # Assert expected behavior
        self.assertIsNone(translated_text)
        self.assertRaises(Exception)  # Check if exception is raised

    @patch('google.cloud.translate.TranslationServiceClient.detect_language')
    def test_detect_language(self, mock_detect_language):
        # Mock the API response
        mock_response = unittest.mock.MagicMock()
        mock_response.languages = [unittest.mock.MagicMock(language_code="en", confidence=0.9)]
        mock_detect_language.return_value = mock_response

        # Create translator and call detect_language
        translator = TextTranslator()
        detected_language = translator.detect_language("Hello, world!")

        # Assert expected behavior
        self.assertEqual(detected_language.languages[0].language_code, "en")
        self.assertEqual(detected_language.languages[0].confidence, 0.9)

    @patch('google.cloud.translate.TranslationServiceClient.detect_language')
    def test_detect_language_error(self, mock_detect_language):
        # Mock the API error
        mock_detect_language.side_effect = Exception("API Error")

        # Create translator and call detect_language
        translator = TextTranslator()
        detected_language = translator.detect_language("Hello, world!")

        # Assert expected behavior
        self.assertIsNone(detected_language)
        self.assertRaises(Exception)  # Check if exception is raised


if __name__ == '__main__':
    unittest.main()
