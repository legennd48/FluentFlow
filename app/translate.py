#!/usr/bin/python3

"""
Performs text translation using the Google Cloud Translate API
with a service account.
Usage:
    python translate.py -s SOURCE_LANGUAGE -t TARGET_LANGUAGE TEXT
Example:
    python translate.py -s en -t fr "Hello, world!"
"""

import argparse
from google.cloud import translate

class TextTranslator:
    """
    Class handles text translation using the Google Cloud Translate API.

    Methods:
        translate(text): Translates the given text to the target language.
    """

    def __init__(self, project_id="fluentflow-practice"):
        """
        Initializes the translator with the service account JSON key path.

        Args:
            project_id (str): Cloud id of project for authentication.
        """
        self.location = "global"
        self.client = translate.TranslationServiceClient()
        self.parent = "projects/{}/locations/{}".format(project_id,
                                                        self.location)

    def translate(self, text, target_language):
        """
        Translates the given text to the target language.

        Args:
            text (str): The text to translate.
            target_language (str): The target language code.

        Returns:
            str: The translated text.
        """
        try:
            response = self.client.translate_text(
                request = {
                    "parent": self.parent,
                    "contents": [text],
                    "mime_type": "text/plain",
                    "source_language_code": '',
                    "target_language_code": target_language,
                    }
                )
            print("translated from: {}".format(
                response.translations[0].detected_language_code)
            )
            return response.translations[0].translated_text
        except Exception as e:
            print(f"Error during translation: {e}")
            return None

    def get_supported_languages(self):
        ''' gets a list of supported languag codes.'''
        response = client.get_supported_languages(parent=self.parent)
        print("Supported Languages:")
        for language in response.languages:
            print("Language Code: {}".format(language.language_code))

        return response

    def detect_language(self, text):
        ''' detects the language of a text string '''
        response = client.detect_language(
            content=text,
            parent=self.parent,
            mime_type="text/plain",  # mime types: text/plain, text/html
        )
        for language in response.languages:
            # The language detected
            print(f"Language code: {language.language_code}")
            # Confidence of detection result for this language
            print(f"Confidence: {language.confidence}")

        return response

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Translate text using Google Cloud Translate")
    parser.add_argument(
        "-s", "--source", required=False, help="Source language code"
    )
    parser.add_argument(
        "-t", "--target", required=True, help="Target language code"
    )
    parser.add_argument("text", help="Text to translate")
    args = parser.parse_args()

    translator = TextTranslator()
    translated_text = translator.translate(args.text, args.target)

    if translated_text:
        print(translated_text)
    else:
        print("Translation failed.")
