# linux-typora-crack
a linux bash for active typora.
***
# Usage
This script will modify the activation-related files in `/usr/share/typora/resources` to trick the program into successfully activating. It will also modify the permissions of `settings.user.toml` and `settings.default.toml` to avoid the problem of being unable to write. At least I encountered this problem when I installed `typora-with-plugin` through AUR on Arch Linux. If you don't want to modify the permissions of these files, please comment the last line of the script.
```bash
git clone https://github.com/lingdiansr/linux-typora-crack.git
cd linux-typora-crack
sudo ./crack.sh
```
***
# Update log
2025.4.10
actived Typore v1.10.8