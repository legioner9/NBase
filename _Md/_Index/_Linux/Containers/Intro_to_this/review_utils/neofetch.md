## [NEOFETCH - ИНФОРМАЦИЯ О СИСТЕМЕ LINUX И ЛОГОТИП В ТЕРМИНАЛЕ](https://losst.ru/neofetch-informatsiya-o-sisteme-linux-i-logotip-v-terminale)

В RED HAT ИЛИ FEDORA
Сначала необходимо установить пакет плагинов dnf-plugins-core:

    sudo yum install dnf-plugins-core

Затем добавьте репозиторий и установите от туда neofetch:

    sudo dnf copr enable konimex/neofetch
    sudo dnf install neofetch


