## [ancor](https://wiki.merionet.ru/servernye-resheniya/30/rpm-ustanovka-i-ispolzovanie-v-linux/)

### Как установить RPM пакет?

    $ sudo rpm -ivh GeoIP-1.5.0-11.el7.x86_64.rpm

### Как узнать информацию о пакете RPM без установки?

    $ sudo rpm -qip GeoIP-1.5.0-11.el7.x86_64.rpm

### Как проверить установленный пакет RPM?

    $ sudo rpm -q GeoIP

### Как запросить все установленные пакеты?

    $ sudo rpm -qa

### Как запросить конкретный пакет?

    $ sudo rpm -qa | grep GeoIP

### Как запросить файл, который принадлежит пакету RPM?

    $ sudo rpm -qf /usr/lib64/libGeoIP.so.1.5.0
    <> GeoIP-1.5.0-11.el7.x86_64

### Как проверить все пакеты RPM?

    $ sudo rpm -Va
