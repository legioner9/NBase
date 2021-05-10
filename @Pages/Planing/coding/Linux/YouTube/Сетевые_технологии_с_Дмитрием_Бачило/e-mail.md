# [E-Mail](https://www.youtube.com/watch?v=7ffnrKKd24o&list=PL5FMLPRj1j6IChoB7nBKYNjCNQ-DBnaq7&index=5&ab_channel=%D0%94%D0%BC%D0%B8%D1%82%D1%80%D0%B8%D0%B9%D0%91%D0%B0%D1%87%D0%B8%D0%BB%D0%BE)

## SMTP (TSP_25_port)


## POP3 (TSP_110_port)


## [Базовые DNS-записи для почтового сервера](https://blog.bissquit.com/mail-servers/bazovye-dns-zapisi-dlya-pochtovogo-servera/)

### 

    # dig -t MX mail.ru +short
    10 mxs.mail.ru.
    # dig -t A mxs.mail.ru +short
    94.100.180.104
    94.100.180.31
    #
    #
    # dig -t MX yandex.ru +short
    10 mx.yandex.ru.
    # dig -t A mx.yandex.ru +short
    213.180.204.89
    77.88.21.89
    213.180.193.89
    87.250.250.89
    93.158.134.89

    ## SPF 

   [SPF Wizard](https://www.spfwizard.net/)