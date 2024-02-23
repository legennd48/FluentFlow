Portfolio Project
from google.cloud import translate

def translate_text(text="Hello, world!", project_id="prefab-imagery-414717"):

    client = translate.TranslationServiceClient()
    location = "global"
    parent = f"projects/{project_id}/locations/{location}"

    response = client.translate_text(
        request={
            "parent": parent,
            "contents": [text],
            "mime_type": "text/plain",
            "source_language_code": "en-US",
            "target_language_code": "es",
        }
    )

    for translation in response.translations:
        print("Translated text: {}".format(translation.translated_text))
