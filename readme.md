python -m venv venv
source venv/bin/activate
unset PIP_LOG
unset PIP_LOG_FILE
pip install --upgrade pip
pip install mangadex-downloader --verbose;

pillow work only with python11
https://github.com/python-pillow/Pillow/issues/6363

for example:
python3 -m mangadex_downloader -sc 18 -ec 18 -lang ru --folder ~/HOME/wizzard/manga/ "https://mangadex.org/title/801513ba-a712-498c-8f57-cae55b38cc92/berserk" --save-as "cbz"
-sc -- start volumn
-ec -- end volumn
-lang -- language, if you want check all available languages -- python3 -m mangadex_downloader --list-language "url"
--folder -- manga will be saved in the target folder
--save-as -- choose save as format, here about formats https://mangadex-dl.mansuf.link/en/stable/formats.html
other cli options: https://mangadex-dl.mansuf.link/en/stable/cli_ref/cli_options.html?highlight=language#chapter-related
