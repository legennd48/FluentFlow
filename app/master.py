#!/usr/bin/python3

from app.ocr import OcrTranslate
from app.translate import TextTranslator
from app.caching import TranslationCache


class FluentFlow:
    """
    This class handles both OCR and text translation, caching translated texts.
    """

    def __init__(self):
      """
      Initializes the components for OCR, translation, and caching.
      """
      self.ocr_service = OcrTranslate()
      self.translator = TextTranslator()
      self.cache = TranslationCache()

    def translate(self, text_or_image, target_language, is_image=False):
        """
        Performs OCR (if needed), translation, and caching.

        Args:
        text_or_image: The text to be translated or the path to the image file.
        target_language: The target language for translation.
        is_image: Flag indicating whether the input is an image (True)
        or text (False).

        Returns:
        The translated text.
        """
        cached_translation = None
        if is_image:
          # OCR and translation flow
          extracted_text = self.ocr_service.image_ocr(filename=text_or_image)
          source_language = 'eng'  # Store the detected language
        else:
          # Text-only translation flow
          extracted_text = text_or_image
          source_language = None  # Source language might not be known

          cached_translation = self.cache.check_cache(
            source_text=extracted_text, target_language=target_language)

        if not cached_translation:
            translated_text = self.translator.translate(
              text=extracted_text, target_language=target_language)
            if translated_text:
              self.cache.save_translation(source_language=source_language,
                                          source_text=extracted_text,
                                          target_language=target_language,
                                          translated_text=translated_text)
        else:
            translated_text = cached_translation

        return translated_text

if __name__ == "__main__":

    fluent_flow = FluentFlow()

    image_path = "../temp_image_03c58789-06c3-4611-9636-dd29557066e8.jpg"
    target_language = "yo"
    translated_text = fluent_flow.translate(image_path,
                                    target_language, is_image=True)
    print(f"Translated text (from image): {translated_text}")
    '''

    text_to_translate = "안녕하세요"
    target_language = "en"
    translated_text = fluent_flow.translate(text_to_translate, target_language, is_image=False)
    print("Translated text: {}".format(translated_text))
'''
