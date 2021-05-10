# [УСТАНОВКА WSL 2 В WINDOWS 10](https://losst.ru/ustanovka-bash-v-windows-10)

##  АКТИВАЦИЯ WSL И ВИРТУАЛИЗАЦИИ

Чтобы активировать компонент Windows Subsystem for Linux можно использовать уже открытую командную строку PowerShell. Для этого выполните:

    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Затем выполните ещё одну команду чтобы включить компонент виртуализации Hyper-V:

    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart       

##  АКТИВАЦИЯ WSL 2
Чтобы установить WSL 2 необходимо скачать пакет с новым ядром с [официального сайта](https://aka.ms/wsl2kernel) Microsoft. Кликните по ссылке download the latest WSL2 Linux kernel:


## [Установите Linux из Магазина Microsoft в Windows 10.](https://g-ek.com/ustanovite-linux-iz-magazina-microsoft-v-windows-10)