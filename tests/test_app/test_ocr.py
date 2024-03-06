import unittest
from unittest.mock import patch
from requests_mock import Mocker

from app.ocr import OcrTranslate


class TestOcrTranslate(unittest.TestCase):

    @patch('os.getenv')
    def test_init_raises_error_for_missing_api_key(self, mock_getenv):
        mock_getenv.return_value = None
        with self.assertRaises(ValueError):
            OcrTranslate()

    @patch('requests.post')
    def test_image_ocr_success(self, mock_post):
        # Mock the API response
        mock_response = {'ParsedResults': [{'ParsedText': 'This is the extracted text.'}]}
        mock_post.return_value.json.return_value = mock_response

        # Create OcrTranslate instance with mocked environment variable
        with Mocker() as m:
            m.register_url('POST', 'https://api.ocr.space/parse/image', json=mock_response)
            ocr_service = OcrTranslate()
            text = ocr_service.image_ocr(filename='image.jpg')

        # Assert expected behavior
        self.assertEqual(text, 'This is the extracted text.')

    @patch('requests.get')
    def test_url_ocr_success(self, mock_get):
        # Mock the API response
        mock_response = {'ParsedResults': [{'ParsedText': 'This is the URL text.'}]}
        mock_get.return_value.json.return_value = mock_response

        # Create OcrTranslate instance with mocked environment variable
        with Mocker() as m:
            m.register_url('GET', 'https://api.ocr.space/parse/imageurl', json=mock_response)
            ocr_service = OcrTranslate()
            text = ocr_service.url_ocr(url='https://example.com/image.jpg')

        # Assert expected behavior
        self.assertEqual(text, 'This is the URL text.')

    def test_image_ocr_raises_error_for_invalid_json(self):
        # Mock the API response with invalid JSON
        mock_response = 'This is not valid JSON'

        with patch('requests.post') as mock_post:
            mock_post.return_value.text = mock_response
            ocr_service = OcrTranslate()

            with self.assertRaises(ValueError):
                ocr_service.image_ocr(filename='image.jpg')

    # Add similar tests for error cases in url_ocr and potential edge cases

if __name__ == '__main__':
    unittest.main()
