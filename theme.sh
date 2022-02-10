# Spotify Themeing
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/CharlieS1103/spicetify-marketplace/main/install.sh | sh
cd .config/spicetify/Themes && svn checkout https://github.com/morpheusthewhite/spicetify-themes/trunk/Dribbblish && cd -
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply
