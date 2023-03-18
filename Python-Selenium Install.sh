#!/bin/bash

echo run Python-Selenium Install

# Google Chromeのインストール
echo installing Google Chrome
curl https://intoli.com/install-google-chrome.sh | bash

# Google Chromeのバージョンを表示
google-chrome-stable -version

echo installing chromedriver
echo バージョン番号をカンマ区切りで入力してください
read select_version

wget https://chromedriver.storage.googleapis.com/$select_version/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/local/bin/

echo installing noto-website-2
cd ~/Downloads
wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip
unzip Noto-hinted.zip
sudo mkdir -p /usr/share/fonts/opentype/noto
cp *otf *ttf /usr/share/fonts/opentype/noto
fc-cache -f -v

echo installing selenium
sudo yum install -y python-pip
pip install selenium

echo install completed!
