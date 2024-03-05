import unittest
from unittest.mock import patch

from app.ocr import OcrTranslate
from app.translate import TextTranslator
from app.caching import TranslationCache
from fluent_flow import FluentFlow


class TestFluentFlow(unittest.TestCase):

    @patch.object(OcrTranslate, 'image_ocr')
    @patch.object(TextTranslator, 'translate')
    @patch.object(TranslationCache, 'check_cache')
    @patch.object(TranslationCache, 'save_translation')
    def test_translate_image_success(self, mock_save_translation, mock_check_cache, mock_translate, mock_ocr):
        # Mock responses
        mock_ocr.return_value = "This is the extracted text."
        mock_translate.return_value = "Tradução em português"
        mock_check_cache.return_value = None

        # Create FluentFlow instance and call translate
        fluent_flow = FluentFlow()
        translated_text = fluent_flow.translate("image.jpg", "pt", is_image=True)

        # Assert expected behavior
        self.assertEqual(translated_text, "Tradução em português")
        mock_ocr.assert_called_once_with(filename="image.jpg")
        mock_translate.assert_called_once_with(text="This is the extracted text.", target_language="pt")
        mock_cache.save_translation.assert_called_once()

    @patch.object(TextTranslator, 'translate')
    @patch.object(TranslationCache, 'check_cache')
    def test_translate_text_success(self, mock_check_cache, mock_translate):
        # Mock responses
        mock_translate.return_value = "Hello in English"
        mock_check_cache.return_value = None

        # Create FluentFlow instance and call translate
        fluent_flow = FluentFlow()
        translated_text = fluent_flow.translate("Hello, world!", "en", is_image=False)

        # Assert expected behavior
        self.assertEqual(translated_text, "Hello in English")
        mock_translate.assert_called_once_with(text="Hello, world!", target_language="en")
        mock_cache.save_translation.assert_called_once()

    @patch.object(TranslationCache, 'check_cache')
    def test_translate_cached(self, mock_check_cache):
        # Mock cache to return a translated text
        mock_check_cache.return_value = "Bonjour"

        # Create FluentFlow instance and call translate
        fluent_flow = FluentFlow()
        translated_text = fluent_flow.translate("Hello", "fr", is_image=False)

        # Assert expected behavior
        self.assertEqual(translated_text, "Bonjour")
        # No calls to translate or OCR methods as the cache is used

    # Add similar tests for error scenarios, edge cases, and potential failures

if __name__ == '__main__':
    unittest.main()
