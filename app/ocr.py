#!/usr/bin/python3
'''
Performs text recognition from images using
ocr.space ocr
'''
import argparse
import json
from os import getenv
from requests import get, post


class OcrTranslate:
    '''
    Performs text recognition from images using
    ocr.space ocr
    '''

    def __init__(self):
        '''
        initializes the ocr service with api key
        '''
        self.key = getenv('OCR_API_KEY')
        if not self.key:
            raise ValueError("Missing OCR_API_KEY environment variable")

    def image_ocr(self, filename, language='eng'):
        '''
        peforms ocr on images and returns text
        Args:
        language - language of text in image
        filename - path to image file
        '''
        payload = {
            'OCREngine': 2,
            'apikey': self.key,
            'language': language,
            'detectOrientation': True,
            }
        with open(filename, 'rb') as f:
            r = post('https://api.ocr.space/parse/image',
                     files={filename: f},
                     data=payload,)
            return r.content.decode()

    def url_ocr(self, url, language='eng'):
        '''
        Alloows Ocr Via image url
        Args:
        language - language of text in image
        url - url of image to be used as source
        '''

        params = {
            'OCREngine': 2,
            'apikey': self.key,
            'language': language,
            'detectOrientation': True,
            'url': url
            }
        endpoint = 'https://api.ocr.space/parse/imageurl'
        r = get(endpoint, params=params)
        return r.json()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Perform OCR on images")
    parser.add_argument("--url", help="URL of the image to process")
    parser.add_argument("--file", help="Path to the local image file")
    parser.add_argument("--language", default="eng", help="Language of the text in the image")
    args = parser.parse_args()

    # Get API key from environment variable or other secure storage
    api_key = getenv('OCR_API_KEY')
    if not api_key:
        raise ValueError("Missing OCR_API_KEY environment variable")

    # Create OcrTranslate instance
    ocr_service = OcrTranslate()

    # Determine the image source based on provided arguments
    if args.url:
        text = ocr_service.url_ocr(url=args.url, language=args.language)
    elif args.file:
        text = ocr_service.image_ocr(filename=args.file, language=args.language)
    else:
        parser.error("Must provide either --url or --file argument")

    # Parse the JSON response
    try:
        text_data = json.loads(text)
    except json.JSONDecodeError:
        raise ValueError("Invalid JSON response from OCR API")

    # Access the actual text (assuming "ParsedResults" is the correct key)
    if "ParsedResults" in text_data and len(text_data["ParsedResults"]) > 0:
        extracted_text = text_data["ParsedResults"][0]["TextOverlay"]["Lines"]
        print("\n".join(extracted_text))  # Print lines of the extracted text
    else:
        print("No text found in the image")
