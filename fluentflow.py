#!/usr/bin/python3
'''
Flask program to handle fluentfllow
'''

from app.master import FluentFlow
from flask import Flask, render_template, request, jsonify
import os
import uuid



app = Flask(__name__)
language_dict = {
        "Afrikaans": "af",
        "Akan": "ak",
        "Amharic": "am",
        "Arabic": "ar",
        "Assamese": "as",
        "Aymara": "ay",
        "Azerbaijani": "az",
        "Belarusian": "be",
        "Bulgarian": "bg",
        "Bhojpuri": "bho",
        "Bambara": "bm",
        "Bengali": "bn",
        "Bosnian": "bs",
        "Catalan": "ca",
        "Cebuano": "ceb",
        "Central Kurdish": "ckb",
        "Corsican": "co",
        "Czech": "cs",
        "Welsh": "cy",
        "Danish": "da",
        "German": "de",
        "Dogri": "doi",
        "Divehi": "dv",
        "Ewe": "ee",
        "Greek": "el",
        "English": "en",
        "Esperanto": "eo",
        "Spanish": "es",
        "Estonian": "et",
        "Basque": "eu",
        "Persian": "fa",
        "Finnish": "fi",
        "Filipino": "fil",
        "French": "fr",
        "Western Frisian": "fy",
        "Irish": "ga",
        "Scottish Gaelic": "gd",
        "Galician": "gl",
        "Guarani": "gn",
        "Konkani": "gom",
        "Gujarati": "gu",
        "Hausa": "ha",
        "Hawaiian": "haw",
        "Hebrew": "he",
        "Hindi": "hi",
        "Hmong": "hmn",
        "Croatian": "hr",
        "Haitian Creole": "ht",
        "Hungarian": "hu",
        "Armenian": "hy",
        "Indonesian": "id",
        "Igbo": "ig",
        "Ilocano": "ilo",
        "Icelandic": "is",
        "Italian": "it",
        "Hebrew (Outdated)": "iw",
        "Japanese": "ja",
        "Javanese": "jv",
        "Javanese (Outdated)": "jw",
        "Georgian": "ka",
        "Kazakh": "kk",
        "Khmer": "km",
        "Kannada": "kn",
        "Korean": "ko",
        "Krio": "kri",
        "Kurdish": "ku",
        "Kyrgyz": "ky",
        "Latin": "la",
        "Luxembourgish": "lb",
        "Ganda": "lg",
        "Lingala": "ln",
        "Lao": "lo",
        "Lithuanian": "lt",
        "Lushai": "lus",
        "Latvian": "lv",
        "Maithili": "mai",
        "Malagasy": "mg",
        "Maori": "mi",
        "Macedonian": "mk",
        "Malayalam": "ml",
        "Mongolian": "mn",
        "Manipuri": "mni-Mtei",
        "Marathi": "mr",
        "Malay": "ms",
        "Maltese": "mt",
        "Burmese": "my",
        "Nepali": "ne",
        "Dutch": "nl",
        "Norwegian": "no",
        "Northern Sotho": "nso",
        "Nyanja": "ny",
        "Oromo": "om",
        "Oriya": "or",
        "Punjabi": "pa",
        "Polish": "pl",
        "Pashto": "ps",
        "Portuguese": "pt",
        "Quechua": "qu",
        "Romanian": "ro",
        "Russian": "ru",
        "Kinyarwanda": "rw",
        "Sanskrit": "sa",
        "Sindhi": "sd",
        "Sinhala": "si",
        "Slovak": "sk",
        "Slovenian": "sl",
        "Samoan": "sm",
        "Shona": "sn",
        "Somali": "so",
        "Albanian": "sq",
        "Serbian": "sr",
        "Sesotho": "st",
        "Sundanese": "su",
        "Swedish": "sv",
        "Swahili": "sw",
        "Tamil": "ta",
        "Telugu": "te",
        "Tajik": "tg",
        "Thai": "th",
        "Tigrinya": "ti",
        "Turkmen": "tk",
        "Tagalog": "tl",
        "Turkish": "tr",
        "Tsonga": "ts",
        "Tatar": "tt",
        "Uyghur": "ug",
        "Ukrainian": "uk",
        "Urdu": "ur",
        "Uzbek": "uz",
        "Vietnamese": "vi",
        "Xhosa": "xh",
        "Yiddish": "yi",
        "Yoruba": "yo",
        "Chinese": "zh",
        "Simplified Chinese": "zh-CN",
        "Traditional Chinese": "zh-TW",
        "Zulu": "zu"
    }

@app.route("/translate", methods=["GET"], strict_slashes=False)
def translate():
    supported_languages = language_dict.items()
    return render_template("index.html", supported_languages=supported_languages)

@app.route("/translate", methods=["POST"], strict_slashes=False)
def translate_post():
  data = request.get_json()
  original_text = data.get("originalText")
  target_language = data.get("targetLanguage")

  translator = FluentFlow()
  translated_text = translator.translate(original_text, target_language, is_image=False)

  return jsonify({"translatedText": translated_text})

@app.route("/ocr", methods=["GET"], strict_slashes=False)
def ocr():
    supported_languages = language_dict.items()
    return render_template("ocr.html", supported_languages=supported_languages)


@app.route("/ocr", methods=["POST"])
def ocr_data():
    translator = FluentFlow()
    # Retrieve image data and target language
    image_data = request.files.get("image").read()
    target_language = request.form.get("Target_Language")

    # Generate a unique temporary filename
    image_filename = "temp_image_{}.jpg".format(uuid.uuid4())

    # Write decoded image data to a temporary file
    with open(image_filename, "wb") as f:
        f.write(image_data)
        # f.write(base64.b64decode(image_data))

    try:
        translated_text = translator.translate(image_filename, target_language, is_image=True)
    except Exception as e:
        print(f"Error during OCR: {e}")
        return jsonify({"error": "OCR failed."}), 500

    # Remove the temporary file
    if os.path.exists(image_filename):
        os.remove(image_filename)

    return render_template("ocr.html", translated_text=translated_text)# jsonify({"translatedText": translated_text})

@app.route("/about", strict_slashes=False)
def about():
    return render_template("about.html")

'''
@app.route("/translate", methods=["POST"], strict_slashes=False)
def translate_post():
  translator = FluentFlow()
  text_to_translate = request.form.get("input1")
  target_language = request.form.get("Target_Language")

  translated_text = translator.translate(text_to_translate, target_language, is_image=False)

  return render_template("index.html", translated_text=translated_text, original_text=original_text)



@app.route("/ocr", methods=["POST"], strict_slashes=False)
def ocr_post():
    uploaded_image = request.files.get("image")

    if uploaded_image:
        print("Received image: {}, size: {}".format(uploaded_image.filename,
                                                    uploaded_image.content_length))
        image_data = uploaded_image.read()
        target_language = request.form.get("Target_Language")

        translator = FluentFlow()
        translated_text = translator.translate(image_data, target_language, is_image=True)

        return jsonify({"translatedText": translated_text})
    else:
        return jsonify({"error": "No image uploaded"}), 400


'''
if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5006)
