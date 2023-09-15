# plasma-i3_mysessions
## 
- https://www.github.com/naoya0117/myi3settings より、必要なファイルを$HOME/.config ディレクトリ直下に配置する
- 必要なパッケージをインストールする
``` # pacman -S plasma i3 i3blocks rofi```
-  当リポジトリより、local-bin の中身を/usr/local/bin にコピーし、実行権限を付与する。
```
# cd /usr/local/bin/
# chmod a+x ./plasma-i3.sh
# chmod a+x ./plasma-kwin.sh
```
## メモ
- plasma settingsのsplash screenはNoneにしておくこと
- kwin-sessionとi3-session間で環境を共有するためstartup-applicationは~/.config/i3/.configファイルではなくxdg-autostartを使用すべき。
- i3-sessionでは、各アプリケーションにおいてauthorization-errorが起こることがある。(vscodeなど)この場合、```path/to/application --password-store kwalle```としたものを/usr/local/binに保存しておくと良い。
  /usr/local/binの優先度を上げておく必要あり。)
- vscodeはaurからインストール。(ArchLinux公式packageのvscodeでは、限られたextensionしか使えない。
