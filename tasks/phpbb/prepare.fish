sudo apt install -y unzip
mkdir /tmp/phpbb
cd /tmp/phpbb || exit 1

# Download the necessary files
wget -O phpbb.zip "https://download.phpbb.com/pub/release/3.3/3.3.10/phpBB-3.3.10.zip"
wget -O phpbb.zh-Hant.zip "https://www.phpbb.com/customise/db/download/201461"

unzip phpbb.zip
unzip phpbb.zh-Hant.zip

# Install language pack
mv mandarin_chinese_traditional_script_3_3_10/* phpBB3
mv phpBB3 phpbb

cd phpbb || exit 1
chmod 0666 config.php
chmod -R 0777 store/ cache/ files/ images/avatars/upload/
chown -R www-data:www-data /var/www/html/phpbb

mv phpbb /var/www/html
