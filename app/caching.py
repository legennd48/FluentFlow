from datetime import datetime
from os import getenv
from sqlalchemy import create_engine, Column, Integer, String, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Configure SQLAlchemy connection
user = 'flow'
pw = getenv('fluent_flow_db_pass')
engine = create_engine('mysql+pymysql://{}:{}@localhost/FluentFlow_db'.format(user, pw), echo=True)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Define database model
Base = declarative_base()

class Translation(Base):
    __tablename__ = 'translations'

    id = Column(Integer, primary_key=True)
    source_language = Column(String(50))
    source_text = Column(String(1000))
    target_language = Column(String(50))
    translated_text = Column(String(1000))
    timestamp = Column(DateTime, default=datetime.now)

class TranslationCache:
    """
    This class handles caching of translated texts in a database using SQLAlchemy.
    """

    def __init__(self):
        """
        Initializes the cache by creating a database session.
        """
        self.session = SessionLocal()

    def check_cache(self, source_text, target_language):
        """
        Checks if a translation exists in the cache for the given parameters.

        Args:
            source_text: The original text to be translated.
            target_language: The target language for translation.

        Returns:
            A Translation object if found, or None if not found.
        """
        return self.session.query(Translation).filter_by(
            source_text=source_text,
            target_language=target_language
        ).first()

    def save_translation(self, source_language, source_text, target_language, translated_text):
        """
        Saves the translated text and details to the database.

        Args:
            source_language: The source language of the text.
            source_text: The original text to be translated.
            target_language: The target language for translation.
            translated_text: The translated text.
        """
        new_translation = Translation(
            source_language=source_language,
            source_text=source_text,
            target_language=target_language,
            translated_text=translated_text
        )
        self.session.add(new_translation)
        self.session.commit()

    def update_cache(self, source_language, source_text, target_language, translated_text):
        """
        Checks the cache, saves the translation if not found, and returns the text.

        Args:
            source_language: The source language of the text.
            source_text: The original text to be translated.
            target_language: The target language for translation.
            translated_text: The translated text.

        Returns:
            The translated text (cached or newly translated).
        """
        cached_translation = self.check_cache(source_text, target_language)
        if cached_translation:
            return cached_translation.translated_text
        else:
            self.save_translation(source_language, source_text, target_language, translated_text)
            return translated_text

    def close(self):
        """
        Closes the database session.
        """
        self.session.close()
