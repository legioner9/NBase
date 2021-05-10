<!-- Start Document Outline -->

* [RPM - УСТАНОВКА И ИСПОЛЬЗОВАНИЕ В LINUX](#rpm---установка-и-использование-в-linux)
	* [Install](#install)
	* [Remove](#remove)
	* [Upgrade](#upgrade)
	* [Query](#query)
	* [Verify](#verify)
	* [УСТАНОВКА](#установка)
		* [Как узнать информацию о пакете RPM без установки?](#как-узнать-информацию-о-пакете-rpm-без-установки)
		* [Как установить RPM пакет?](#как-установить-rpm-пакет)
		* [Как проверить установленный пакет RPM?](#как-проверить-установленный-пакет-rpm)
		* [Как вывести список всех файлов для определенного установленного пакета RPM?](#как-вывести-список-всех-файлов-для-определенного-установленного-пакета-rpm)
		* [Как вывести список недавно установленных пакетов RPM?](#как-вывести-список-недавно-установленных-пакетов-rpm)
		* [Как установить RPM пакет без зависимостей?](#как-установить-rpm-пакет-без-зависимостей)
		* [Как заменить установленный пакет RPM?](#как-заменить-установленный-пакет-rpm)
		* [Как удалить пакет RPM?](#как-удалить-пакет-rpm)
		* [Как обновить установленный пакет RPM?](#как-обновить-установленный-пакет-rpm)
		* [Как запросить все установленные пакеты?](#как-запросить-все-установленные-пакеты)
		* [Как запросить конкретный пакет?](#как-запросить-конкретный-пакет)
		* [Как запросить файл, который принадлежит пакету RPM?](#как-запросить-файл-который-принадлежит-пакету-rpm)
		* [Как получить информацию для конкретного пакета?](#как-получить-информацию-для-конкретного-пакета)
		* [Как проверить RPM пакет?](#как-проверить-rpm-пакет)
		* [Мы можем проверить все установленные пакеты rpm, используя опцию -Va](#мы-можем-проверить-все-установленные-пакеты-rpm-используя-опцию--va)

<!-- End Document Outline -->

# <a href="https://wiki.merionet.ru/servernye-resheniya/30/rpm-ustanovka-i-ispolzovanie-v-linux/" target="_blank">RPM - УСТАНОВКА И ИСПОЛЬЗОВАНИЕ В LINUX</a>

RPM (Red Hat Package Manager) - это наиболее популярная утилита управления пакетами для Linux систем на базе Red Hat, таких как (RHEL, CentOS и Fedora). Она используется для установки, удаления, обновления, запроса и проверки пакетов программного обеспечения. Пакет состоит из архива файлов и информации о пакете, включая имя, версию и описание. Формат файлов также называется RPM.

RPM (Red Hat Package Manager)
Есть несколько способов откуда можно взять пакеты RPM: CD/DVD с программным обеспечением, CentOS Mirror, RedHat (нужен аккаунт) или любые открытые сайты репозитория.

В RPM используется несколько основных режимов команд: 
#### Install 
(используется для установки любого пакета RPM),
#### Remove 
(используется для удаления, стирания или деинсталляции пакета), 
#### Upgrade 
(используется для обновления существующего пакета), 
#### Query 
(используется для запроса пакета) и 
#### Verify 
(используется для проверки пакетов RPM).

Рассмотрим это на примере. У нас есть пакет, и теперь посмотрим, что мы можем с ним делать.

## УСТАНОВКА
### Как узнать информацию о пакете RPM без установки?

После того, как мы скачали пакет мы хотим узнать информацию о пакете перед установкой. Мы можем использовать -qipoption (запрос информации о пакете), чтобы вывести информацию о пакете.

    $ sudo rpm -qip GeoIP-1.5.0-11.el7.x86_64.rpm
     
Вывод:

    Name        : GeoIP
    Version     : 1.5.0
    Release     : 11.el7
    Architecture: x86_64
    Install Date: (not installed)
    Group       : Development/Libraries
    Size        : 2905020
    License     : LGPLv2+ and GPLv2+ and CC-BY-SA
    Signature   : RSA/SHA256, Sun 20 Nov 2016 05:49:19 PM UTC, Key ID 24c6a8a7f4a80eb5
    Source RPM  : GeoIP-1.5.0-11.el7.src.rpm
    Build Date  : Sat 05 Nov 2016 08:29:17 PM UTC
    Build Host  : worker1.bsys.centos.org
    Relocations : (not relocatable)
    Packager    : CentOS BuildSystem 
    Vendor      : CentOS
    URL         : http://www.maxmind.com/app/c
    Summary     : Library for country/city/organization to IP address or hostname mapping
    Description :
    GeoIP is a C library that enables the user to find the country that any IP
    address or hostname originates from. It uses a file based database that is
    accurate as of June 2007 and can optionally be updated on a weekly
    basis by installing the GeoIP-update package. This database simply contains IP
    blocks as keys, and countries as values. This database should be more complete
    and accurate than using reverse DNS lookups.
    
    This package includes GeoLite data created by MaxMind, available from
    http://www.maxmind.com/
     
### Как установить RPM пакет?

Мы можем использовать параметр -ivh для установки определенного пакета, как показано ниже.

    $ sudo rpm -ivh GeoIP-1.5.0-11.el7.x86_64.rpm
     
Вывод:

    Preparing...                          ################################# [100%]
        package GeoIP-1.5.0-11.el7.x86_64 is already installed
         
### Как проверить установленный пакет RPM?

Мы можем использовать параметр -q с именем пакета, и он покажет, установлен ли пакет или нет.

    $ sudo rpm -q GeoIP
Вывод:

    GeoIP-1.5.0-11.el7.x86_64
     
### Как вывести список всех файлов для определенного установленного пакета RPM?

Мы можем перечислить все файлы установленных пакетов rpm, используя опцию -ql с командой rpm.

    $ sudo rpm -ql GeoIP
Вывод:

    /etc/GeoIP.conf
    /etc/GeoIP.conf.default
    /usr/bin/geoiplookup
    /usr/bin/geoiplookup6
    /usr/bin/geoipupdate
    /usr/lib64/libGeoIP.so.1
    /usr/lib64/libGeoIP.so.1.5.0
    /usr/lib64/libGeoIPUpdate.so.0
    /usr/lib64/libGeoIPUpdate.so.0.0.0
    /usr/share/GeoIP
    /usr/share/GeoIP/GeoIP-initial.dat
    /usr/share/GeoIP/GeoIP.dat
    /usr/share/GeoIP/GeoIPASNum.dat
    /usr/share/GeoIP/GeoIPASNumv6.dat
    /usr/share/GeoIP/GeoIPCity.dat
    /usr/share/GeoIP/GeoIPCityv6.dat
    /usr/share/GeoIP/GeoIPCountry.dat
    /usr/share/GeoIP/GeoIPCountryv6.dat
    /usr/share/GeoIP/GeoIPv6-initial.dat
    ... 
 
###  Как вывести список недавно установленных пакетов RPM?

Мы можем использовать параметр -qa с параметром --last, в котором будут перечислены все недавно установленные пакеты rpm.

    $ sudo rpm -qa --last
Вывод

    GeoIP-1.5.0-11.el7.x86_64                     Sat 01 Sep 2019 11:34:09 AM UTC
    wget-1.14-15.el7_4.1.x86_64                   Sun 26 Aug 2019 03:21:02 PM UTC
    iwl7265-firmware-22.0.7.0-62.2.el7_5.noarch   Thu 16 Aug 2019 02:10:18 PM UTC
    libgomp-4.8.5-28.el7_5.1.x86_64               Thu 16 Aug 2019 02:10:15 PM UTC
    iwl2030-firmware-18.168.6.1-62.2.el7_5.noarch Thu 16 Aug 2019 02:10:15 PM UTC
    iptables-1.4.21-24.1.el7_5.x86_64             Thu 16 Aug 2019 02:10:15 PM UTC
    yum-plugin-fastestmirror-1.1.31-46.el7_5.noarch Thu 16 Aug 2019 02:10:14 PM UTC
    iwl6000-firmware-9.221.4.1-62.2.el7_5.noarch  Thu 16 Aug 2019 02:10:14 PM UTC
    iwl4965-firmware-228.61.2.24-62.2.el7_5.noarch Thu 16 Aug 2019 02:10:14 PM UTC
    iwl105-firmware-18.168.6.1-62.2.el7_5.noarch  Thu 16 Aug 2019 02:10:14 PM UTC
    iwl100-firmware-39.31.5.1-62.2.el7_5.noarch   Thu 16 Aug 2019 02:10:13 PM UTC
    iwl1000-firmware-39.31.5.1-62.2.el7_5.noarch  Thu 16 Aug 2019 02:10:13 PM UTC
    ca-certificates-2018.2.22-70.0.el7_5.noarch   Thu 16 Aug 2019 02:10:13 PM UTC
    iwl6000g2b-firmware-17.168.5.2-62.2.el7_5.noarch Thu 16 Aug 2019 02:10:12 PM UTC
    ...
     
### Как установить RPM пакет без зависимостей?

Мы можем использовать параметры -ivh с параметром --nodeps для проверки отсутствия зависимостей, чтобы установить конкретный пакет без зависимостей, как показано ниже.

    $ sudo rpm -ivh --nodeps GeoIP-1.5.0-11.el7.x86_64.rpm
     
Вывод

    Preparing...                          ################################# [100%]
     
### Как заменить установленный пакет RPM?

Мы можем использовать параметры -ivh –replacepkgs для замены установленного пакета.

    $ sudo rpm -ivh --replacepkgs GeoIP-1.5.0-11.el7.x86_64.rpm
     
Вывод

    Preparing...                          ################################# [100%]
    Updating / installing...
      1:GeoIP-1.5.0-11.el7               ################################# [100%]
       
### Как удалить пакет RPM?

Мы можем использовать параметр -e для удаления определенного пакета, установленного без зависимостей. Обратите внимание, что удаление определенного пакета может нарушить работу других приложений.

    $ sudo  rpm -e --nodeps GeoIP
     
### Как обновить установленный пакет RPM?

Для обновления пакета мы используем параметры -Uvh

    $ sudo rpm -Uvh GeoIP-1.5.0-11.el7.x86_64.rpm
     
### Как запросить все установленные пакеты?

Мы можем использовать параметры -a вместе с q для запроса всех установленных пакетов на сервере.

    $ sudo rpm -qa
Вывод

    python-firewall-0.4.4.4-14.el7.noarch
    ncurses-base-5.9-14.20130511.el7_4.noarch
    plymouth-0.8.9-0.31.20140113.el7.centos.x86_64
    kbd-misc-1.15.5-13.el7.noarch
    vim-common-7.4.160-4.el7.x86_64
    bash-4.2.46-30.el7.x86_64
    dmidecode-3.0-5.el7.x86_64
    filesystem-3.2-25.el7.x86_64
    kbd-1.15.5-13.el7.x86_64
    vim-enhanced-7.4.160-4.el7.x86_64
    firewalld-0.4.4.4-14.el7.noarch
     
### Как запросить конкретный пакет?

Мы можем использовать команду grep, чтобы узнать, установлен ли конкретный пакет или нет.

    $ sudo rpm -qa | grep GeoIP
     
Вывод

    GeoIP-1.5.0-11.el7.x86_64

###  Как запросить файл, который принадлежит пакету RPM?

Чтобы узнать к какому пакету RPM относится файл /usr/lib64/libGeoIP.so.1.5.0. используем следующую команду.

    $ sudo rpm -qf /usr/lib64/libGeoIP.so.1.5.0
Вывод

    GeoIP-1.5.0-11.el7.x86_64   
     
### Как получить информацию для конкретного пакета?

Мы можем использовать параметры -i вместе с q, чтобы получить информацию для конкретного пакета, как показано ниже.

    $ sudo rpm -qi GeoIP
     
Вывод

    Name        : GeoIP
    Version     : 1.5.0
    Release     : 11.el7
    Architecture: x86_64
    Install Date: Thu 16 Aug 2018 02:04:09 PM UTC
    Group       : Development/Libraries
    Size        : 2905020
    License     : LGPLv2+ and GPLv2+ and CC-BY-SA
    Signature   : RSA/SHA256, Sun 20 Nov 2016 05:49:19 PM UTC, Key ID 24c6a8a7f4a80eb5
    Source RPM  : GeoIP-1.5.0-11.el7.src.rpm
    Build Date  : Sat 05 Nov 2016 08:29:17 PM UTC
    Build Host  : worker1.bsys.centos.org
    Relocations : (not relocatable)
    Packager    : CentOS BuildSystem
    Vendor      : CentOS
    URL         : http://www.maxmind.com/app/c
    Summary     : Library for country/city/organization to IP address or hostname mapping
    Description :
    GeoIP is a C library that enables the user to find the country that any IP
    address or hostname originates from. It uses a file based database that is
    accurate as of June 2007 and can optionally be updated on a weekly
    basis by installing the GeoIP-update package. This database simply contains IP
    blocks as keys, and countries as values. This database should be more complete
    and accurate than using reverse DNS lookups.
    
    This package includes GeoLite data created by MaxMind, available from http://www.maxmind.com/
     
### Как проверить RPM пакет?

Мы можем проверить пакет, сравнив информацию об установленных файлах пакета с базой данных rpm, используя опцию -Vp.

    $ sudo rpm -Vp GeoIP-1.5.0-11.el7.x86_64.rpm

### Мы можем проверить все установленные пакеты rpm, используя опцию -Va

    $ sudo rpm -Va
     
Вывод

    S.5....T.  c /etc/sysconfig/authconfig
    S.5....T.  c /etc/yum.repos.d/CentOS-Base.repo
    .M.......  c /etc/machine-id
    .M.......  g /etc/udev/hwdb.bin
    .M.......  g /var/lib/systemd/random-seed
    .M.......  c /etc/shadow
    S.5....T.  c /etc/ssh/sshd_config
    .M.......  c /etc/audit/rules.d/audit.rules
    S.5....T.  c /etc/NetworkManager/NetworkManager.conf
    ....L....  c /etc/pam.d/fingerprint-auth
    ....L....  c /etc/pam.d/password-auth
    ....L....  c /etc/pam.d/postlogin
     


 
 
 
 
 
 
 
 
 