# plasma-i3_mysessions
## 手順
- https://www.github.com/naoya0117/i3-mysettings
## メモ
- plasma settingsのsplash screenはNoneにしておくこと
- kwin-sessionとi3-session間で環境を共有するためstartup-applicationは~/.config/i3/.configファイルではなくxdg-autostartを使用すべき。
- i3-sessionでは、各アプリケーションにおいてauthorization-errorが起こることがある。(vscodeなど)この場合、```path/to/application --password-store kwalle```としたものを/usr/local/binに保存しておくと良い。
  /usr/local/binの優先度を上げておく必要あり。)
- vscodeはaurからインストール。(ArchLinux公式packageのvscodeでは、限られたextensionしか使えない。
