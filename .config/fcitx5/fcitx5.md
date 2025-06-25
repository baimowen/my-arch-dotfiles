```bash
sudo pacman -S --noconfirm fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-chinese-addons
```

-   `fcitx5`: 主程序
-   `fcitx5-gtk`/`fcitx5-qt`: 支持 GTK/Qt 程序
-   `fcitx5-configtool`: 图形配置工具
-   `fcitx5-chinese-addons`: 中文输入引擎（拼音、五笔等）



方法一：

```bash
mkdir ~/.config/environment.d
cat <<EOF | tee ~/.config/environment.d/fcitx5.conf
INPUT_METHOD=fcitx5
GTK_IM_MODULE=fcitx5
QT_IM_MODULE=fcitx5
XMODIFIERS=@im=fcitx5
EOF
```



方法二：

```bash
mkdir -p ~/.config/autostart
cp /usr/share/applications/org.fcitx.Fcitx5.desktop ~/.config/autostart/
```

在hyprland.conf中添加环境以及开机启动：

```ini
exec-once = fcitx5 -d
env = INPUT_METHOD,fcitx5
env = GTK_IM_MODULE,fcitx5
env = QT_IM_MODULE,fcitx5
env = XMODIFIERS,@im=fcitx5
```

重启hyprland或运行`fcitx5 -rd`生效



运行配置工具：

```bash
fcitx5-configtool
```

搜索pinyin添加到右侧，选中pinyin上移到首位，apply





`ctrl+space`切换中英文