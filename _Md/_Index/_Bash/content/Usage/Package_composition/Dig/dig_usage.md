# [andreyex.ru](https://andreyex.ru/linux/komandy-linux-i-komandy-shell/kak-ispolzovat-komandu-dig-dlya-zaprosa-dns-v-linux/)
## Dig
    $  dig linux.org

    ; <<>> DiG 9.11.9 <<>> linux.org
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 48930
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 1452
    ;; QUESTION SECTION:
    ;linux.org.                     IN      A

    ;; ANSWER SECTION:
    linux.org.              144     IN      A       104.27.167.219
    linux.org.              144     IN      A       104.27.166.219

    ;; Query time: 69 msec
    ;; SERVER: 1.1.1.1#53(1.1.1.1)
    ;; WHEN: Сб апр 25 20:57:21 +07 2020
    ;; MSG SIZE  rcvd: 79

#
        $ dig linux.org +short

        104.27.167.219
        104.27.166.219

    #
    $ dig linux.org +noall +answer

    ; <<>> DiG 9.11.9 <<>> linux.org +noall +answer
    ;; global options: +cmd
    linux.org.              19      IN      A       104.27.167.219
    linux.org.              19      IN      A       104.27.166.219
#
    $ dig linux.org @8.8.8.8

    ; <<>> DiG 9.11.9 <<>> linux.org @8.8.8.8
    ;; global options: +cmd
    ;; Got answer:
    ;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 28384
    ;; flags: qr rd ra; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1

    ;; OPT PSEUDOSECTION:
    ; EDNS: version: 0, flags:; udp: 4096
    ; COOKIE: 55347428744d476ea95865975ea444eb1ddb8c1ea055d921 (good)
    ;; QUESTION SECTION:
    ;linux.org.                     IN      A

    ;; ANSWER SECTION:
    linux.org.              300     IN      A       104.27.167.219
    linux.org.              300     IN      A       104.27.166.219

    ;; Query time: 194 msec
    ;; SERVER: 8.8.8.8#53(8.8.8.8)
    ;; WHEN: Сб апр 25 21:10:44 +07 2020
    ;; MSG SIZE  rcvd: 98

## Файл .digrc