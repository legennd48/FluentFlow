#!/usr/bin/python3
'''
test Module tests TextTranslator
'''

import unittest
from unittest.mock import patch, MagicMock

from app.translate import TextTranslator

class TestTextTranslator(unittest.TestCase):

    @patch('google.cloud.translate.TranslationServiceClient')
    def test_translate(self, mock_client):
        # Mock the translate_text method
        mock_response = MagicMock()
        mock_response.translations = [MagicMock(translated_text="Hola mundo!")]
        mock_client.return_value.translate_text.return_value = mock_response

        translator = TextTranslator()
        translated_text = translator.translate("Hello world!", "es")

        # Assert the translated text and detected language
        self.assertEqual(translated_text, "Hola mundo!")
        self.assertEqual(translator.translate("", "es"), None)  # Test for empty text

    @patch('google.cloud.translate.TranslationServiceClient')
    def test_get_supported_languages(self, mock_client):
        # Mock the get_supported_languages method
        mock_response = MagicMock()
        mock_languages = [MagicMock(language_code="en"), MagicMock(language_code="es")]
        mock_response.languages = mock_languages
        mock_client.return_value.get_supported_languages.return_value = mock_response

        translator = TextTranslator()
        supported_languages = translator.get_supported_languages()

        # Assert the number of supported languages
        self.assertEqual(len(supported_languages), 2)

    @patch('google.cloud.translate.TranslationServiceClient')
    def test_detect_language(self, mock_client):
        # Mock the detect_language method
        mock_response = MagicMock()
        mock_language = MagicMock(language_code="en", confidence=0.95)
        mock_response.languages = [mock_language]
        mock_client.return_value.detect_language.return_value = mock_response

        translator = TextTranslator()
        detected_language = translator.detect_language("Hello world!")

        # Assert the detected language code and confidence
        self.assertEqual(detected_language.language_code, "en")
        self.assertAlmostEqual(detected_language.confidence, 0.95)

if __name__ == '__main__':
    unittest.main()
