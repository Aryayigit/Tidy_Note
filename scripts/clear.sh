flutter clean
rm -Rf android/.gradle
rm -Rf ios/Pods
rm -Rf ios/.symlinks
rm -Rf ios/Flutter.framework
rm -Rf ios/Flutter.podspec
rm ios/Podfile.lock
rm pubspec.lock
rm -Rf "$HOME/.pub-cache"

echo "Proje temizlendi ve .pub-cache kaldırıldı."