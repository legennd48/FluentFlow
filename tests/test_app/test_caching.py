import unittest
from unittest.mock import patch
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from app.caching import TranslationCache, Translation


class TestTranslationCache(unittest.TestCase):

    @patch('sqlalchemy.create_engine')
    def setUp(self, mock_create_engine):
        mock_engine = create_engine('sqlite:///:memory:')  # In-memory database for testing
        SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=mock_engine)
        self.cache = TranslationCache()

    def test_check_cache_found(self):
        source_text = "Hello"
        target_language = "es"
        expected_translation = "Hola"
        self.cache.session.add(Translation(source_text=source_text, target_language=target_language, translated_text=expected_translation))
        self.cache.session.commit()

        found_translation = self.cache.check_cache(source_text, target_language)
        self.assertEqual(found_translation, expected_translation)

    def test_check_cache_not_found(self):
        source_text = "Hello"
        target_language = "fr"
        found_translation = self.cache.check_cache(source_text, target_language)
        self.assertIsNone(found_translation)

    def test_save_translation(self):
        source_language = "en"
        source_text = "Hello"
        target_language = "fr"
        translated_text = "Bonjour"
        self.cache.save_translation(source_language, source_text, target_language, translated_text)

        # Assert translation is saved in the database
        saved_translation = self.cache.session.query(Translation).filter_by(source_text=source_text, target_language=target_language).first()
        self.assertEqual(saved_translation.source_language, source_language)
        self.assertEqual(saved_translation.translated_text, translated_text)

    '''
    def test_update_cache_found(self):
        source_text = "Hello"
        target_language = "es"
        expected_translation = "Hola"
        self.cache.session.add(Translation(source_text=source_text, target_language=target_language, translated_text=expected_translation))
        self.cache.session.commit()
        returned_translation = self.cache.update_cache('', source_text, target_language, "Hola")  # Re-use existing translation
        self.assertEqual(returned_translation, expected_translation)


    def test_update_cache_not_found(self):
        source_text = "Hello"
        target_language = "fr"
        translated_text = "Bonjour"
        returned_translation = self.cache.update_cache(source_text, target_language, translated_text)
        self.assertEqual(returned_translation, translated_text)
        self.assertEqual(self.cache.session.query(Translation).count(), 1)  # Check if translation is saved
    '''

