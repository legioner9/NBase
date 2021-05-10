# [Git clone не загружает все файлы из-за ограничения длины пути к файлу windows](https://coderoad.ru/55343976/Git-clone-%D0%BD%D0%B5-%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B6%D0%B0%D0%B5%D1%82-%D0%B2%D1%81%D0%B5-%D1%84%D0%B0%D0%B9%D0%BB%D1%8B-%D0%B8%D0%B7-%D0%B7%D0%B0-%D0%BE%D0%B3%D1%80%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B4%D0%BB%D0%B8%D0%BD%D1%8B-%D0%BF%D1%83%D1%82%D0%B8-%D0%BA-%D1%84%D0%B0%D0%B9%D0%BB%D1%83-windows)


У меня вчера была такая же проблема, как и у вас (на win10) :) Просто измените конфигурацию git:

core.longpaths=true
Должен работать

for example:

git config --global user.email "your_email@example.com"

ouer case:
git config --global core.longpaths true

## result .gitconfig

    [user]
        email = legioner9@inbox.ru
        name = legioner9
    [core]
        editor = 'C:/Program Files (x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin
        longpaths = true
    [alias]
            lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
            
            lg2 = log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
            
            co = commit
            aa = add .
            ch = checkout
            st = status

# [merge tools config](https://www.atlassian.com/ru/git/tutorials/setting-up-a-repository/git-config)

git config --global merge.tool kdiff3


