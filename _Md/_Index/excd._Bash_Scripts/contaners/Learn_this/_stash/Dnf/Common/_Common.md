<!-- Start Document Outline -->

* [Полезные сторонние репозитории для Fedora](#полезные-сторонние-репозитории-для-fedora)
	* [RPM Fusion](#rpm-fusion)
	* [Negativo17](#negativo17)
	* [Dropbox (*)](#dropbox-)
	* [VSCode (*)](#vscode-)
* [Как настроить репозитории программного обеспечения в Fedora?](#как-настроить-репозитории-программного-обеспечения-в-fedora)
	* [отобразить список всех включенных репозиториев](#отобразить-список-всех-включенных-репозиториев)
	* [список пакетов из указанного репозитория](#список-пакетов-из-указанного-репозитория)
	* [доступных или установленных из указанного репозитория,](#доступных-или-установленных-из-указанного-репозитория)
	* [Добавление, включение и отключение репозитория DNF](#добавление-включение-и-отключение-репозитория-dnf)
	* [определить хранилище для Grafana](#определить-хранилище-для-grafana)

<!-- End Document Outline -->

# <a href="https://www.easycoding.org/2017/03/24/poleznye-storonnie-repozitorii-dlya-fedora.html" target="_blank">Полезные сторонние репозитории для Fedora</a>

## RPM Fusion
RPM Fusion — это наверное самый популярный сторонний репозиторий для Fedora. В него входят пакеты, которые по каким-либо причинам нельзя распространять в основном (защищённые патентами кодеки, проприетарные драйверы видеокарт и т.д.).

Рекомендуется для подключения всем без исключения пользователям Fedora. Мейнтейнеры RPM Fusion являются в большинстве случаев и мейнтейнерами Fedora, поэтому качество пакетов соответствует всем стандартам.

Подключение:


    sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
      
      
Отключение:


    sudo dnf remove rpmfusion-free-release rpmfusion-nonfree-release
     

## Negativo17
Сторонний репозиторий, поддерживаемый Negativo17. Как и RPM Fusion, содержит набор патентованных кодеков мультимедиа (однако их значительно меньше), а также специальную сборку драйверов NVIDIA и ряд проприетарного программного обеспечения.

Данный репозиторий не следует использовать одновременно с RPMFusion из-за возможных конфликтов некоторых пакетов.

Подключение:


    sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-negativo17.repo
     
Отключение:


    sudo rm -f /etc/yum.repos.d/fedora-negativo17.repo
     

## Dropbox (*)
Официальный репозиторий Dropbox.

Подключение:

    sudo dnf config-manager --add-repo=https://github.com/RussianFedora/fedora-extra-repos/raw/master/dropbox.repo
     
Отключение:

    sudo rm -f /etc/yum.repos.d/dropbox.repo
     

## VSCode (*)
Официальный репозиторий текстового редактора Visual Studio Code (VSCode), который создан и обслуживается Microsoft Corporation.

Подключение:

    sudo dnf config-manager --add-repo=https://github.com/RussianFedora/fedora-extra-repos/raw/master/code.repo
     
Отключение:

    sudo rm -f /etc/yum.repos.d/code.repo
     

# <a href="https://blog.sedicomm.com/2019/05/11/kak-nastroit-repozitorii-programmnogo-obespecheniya-v-fedora/" target="_blank">Как настроить репозитории программного обеспечения в Fedora?</a>

Ваш дистрибутив Fedora получает программное обеспечение из репозиториев, и каждый из этих репозиториев поставляется с рядом бесплатных и платных приложений, доступных для установки. Официальные репозитории Fedora имеют тысячи бесплатных приложений с открытым исходным кодом.

В этой статье мы покажем, как настроить программные репозитории в дистрибутиве Fedora с помощью инструмента менеджера пакетов DNF прямо из командной строки.

Просмотр включенных репозиториев в Fedora
Чтобы 
## отобразить список всех включенных репозиториев 
в вашей системе Fedora, выполните следующую команду:

    $ sudo dnf repolist
    
Вы можете получить 
## список пакетов из указанного репозитория
, выполнив следующую команду. В нем будут перечислены все доступные и установленные пакеты из указанного репозитория:

    $ sudo dnf repository-packages fedora list
     
     
Чтобы отобразить список пакетов,
## доступных или установленных из указанного репозитория,
добавьте опцию available или installed соответственно:

    $ sudo dnf repository-packages fedora list available
     
     
 

Или же:

    $ sudo dnf repository-packages fedora list installed
     
     
## Добавление, включение и отключение репозитория DNF
Прежде чем добавить новый репозиторий в свою систему Fedora, вам нужно определить его, добавив раздел [repository] в файл /etc/dnf/dnf.conf или в файл .repo в директорию /etc/yum.repos.d/. Большинство разработчиков предоставляют репозитории DNF со своим собственным .repo файлом.

Например, чтобы 
## определить хранилище для Grafana 
в файле .repo, создайте его, как показано ниже:

    $ sudo vim /etc/yum.repos.d/grafana.repo
     
 

Затем добавьте раздел [repository] в файл и сохраните его. Если посмотреть внимательно, в конфигурации, показанной на изображении ниже, репозиторий не включён, как указано параметром (enabled = 0); мы это изменим в демонстрационных целях.

![Add-New-DNF-Repository-in-Fedora](_src/Add-New-DNF-Repository-in-Fedora.png)