# Секреты и трюки Командной строки Linux. Стань гуру. Впервые конкурс

[Секреты и трюки Командной строки Linux. Стань гуру. Впервые конкурс](https://www.youtube.com/watch?v=qR4aavTlPXo&t=1055s&ab_channel=Pingvinus)

## history

    $ history
        1  git init
        2  status
        3  git status
        4  echo Pre_git to learn > README
        5  git status
        6  git add .
        7  git status
        8  echo  > git
        9  git
        10  git lg
        11  git st
        12  git add mas2
        13  git st
        14  git co
        15  git ls
        16  ls
        17  git lg
        18  git lg
        19  git fsck
        20  git ch master

# ! , :p , * 

    $ !16 // number command from history
        ls // run  ls

    $ !16:p  
        ls // NOT run  ls - INSPECT

    $ !-5:p // INSPECT revrt - from last number

    $ !his:p // search first entry from first letter
        history

    $ mkdir name_dir
    $ cd !* // !* previous args
        cd name_dir
    $ pwd
        /e/Node_projects/Node_Way/NBase/_Md/_Index/__/Linux_fiches/cli/name_dir

    $ cd !*:p // INSPECT

    $ echo content > file.t
    $ cp file.t file2.t
    $ cat !:2:p // arg number 2 prev comm + INSPECT
        cat file2.t

    $ ls -l -h -f -F -m
    $ ls !:2-4:p // 2 , 3 , 4 args prev comm
        ls -h -f -F

    $ ls -l -h -f -F -m
    $ ls !$ // last args prev comm
        ls -m

    $ ls -l -h -f -F -m
    $ ls !^ // first args prev comm
        ls -l

    $ ls -l -h -f -F -m
    $ ls !:^-4 // from head until 3
        ls -h -f -F
    $ ls !:3-$ // from 3 until tail
        ls -f -F -m

    $ !! // repeat last comm

## HotKeys

{{alt + .}}{{alt + .}}...   last args if command without args      

    $ history | grep test
        257  test -f v1.6.6.file
        259  test -f v1.6.6.file | echo $?
        260  test -f v1.6.6.file | echo $
        261  test -f v1.6.6.file | echo $?
        262  if [test -f v1.6.6.file] ;then echo 'file Exist';fi?;  q
        263  if [test -f v1.6.6.file] ;then echo 'file Exist';fi
        342  history | grp test
        343  history | grep test

{{ctrl + r}} (reverse-i-search)`te': history | grep test // afer click {{ctrl + r}}
{{ctrl + r}} (reverse-i-search)`te': history | grp test // next result if {{enter}} RUN that comm

    $ content > file
    bash: content: command not found
    $ echo !!
        echo content > file

{{ctrl + p}}{{ctrl + o}}{{ctrl + o}}... repit previous comm

{{ctrl + a}} kursor ot begining comm string
{{ctrl + e}} kursor ot end comm string

{{ctrl + d}} analog key delite (delite on right)

{{ctrl + (x+x)}} left right - remember point - here and there

{{ctrl + u}} cuts everything to the left and put it in the buffer

{{ctrl + y}} return from buffer

{{ctrl + w}} cuts the word to the left and put it in the buffer

{{ctrl + k}} cuts the word to the right and put it in the buffer

{{ctrl + t}} swaps characters - in front of the cursor and under him

{{alt + t}} swaps words - in front of the cursor and under him

{{crtl + l}} // window UP 

    $ cd .. // go to upper dir

    $ cd ~ // go to home dir StNN
    $ pwd
        /c/Users/StNN

    $ cd - // go to previous dir
        /e/Node_projects/Node_Way/NBase/_Md/_Index/__/Linux_fiches/cli

    $ # ls -m // recording in history - for later use
    $ history
        ............
        353  # ls -m
        354  history       
    $ !-2:p
        # ls -m
    {{ctrl p}}
    $ # ls -m // and editing that

    $ vdfsv stat csacs // replacement in the previous comm - only first condicidece
    $ ^stat^mail
        vdfsv mail csacs

## priority command &

    $ tar sdc arh.tar.bz2 & 
        [1] 2431 // id process 2431 ?
    
    $ nohup !! // nohup is allo continue proces afer close window 

## ; 
    $ cdsa ; cva ; ls // sequental execution - any  
        bash: cdsa: command not found
        bash: cva: command not found
        name_dir  Pingvinus.md

## logics && ||
    $ ls && fsdb
        name_dir  Pingvinus.md
        bash: fsdb: command not found

    $ ferwf && ls
        bash: ferwf: command not found 

    $ sadc || ls
        bash: sadc: command not found
        name_dir  Pingvinus.md

    $  ls || cd .. // if ls worc - cd .. NOT
    name_dir  Pingvinus.md

## cat less more 

    $ cd name_dir/

    $ cat file // simple print
        content

    $ nl !:1 // prin
    nl file
        1  content

    $ cd ..
    $ less Pingvinus.md // only within the terminal window (`q` exit)

        # Секреты и трюки Командной строки Linux. Стань гуру. Впервые конкурс

        [Секреты и трюки Командной строки Linux. Стань гуру. Впервые конкурс](https://www.youtube.com/watch?v=qR4aavTlPXo&t=1055s&ab_channel=Pingvinus)

        ## history

            $ history
                1  git init
                2  status
                3  git status
                4  echo Pre_git to learn > README
                5  git status
                6  git add .
        Pingvinus.md

    $ more Pingvinus.md // only within the terminal window (`q` exit) autoexit  

## head tail

    $ head -n15 Pingvinus.md // print 15 strings from head file

    $ tail !*
        tail -n12 Pingvinus.md // print 12 strings from tail file

## clear reset

{{crtl + l}} // window UP 

## find

    $ ls
        name_dir  Pingvinus.md
    $ find name_dir/ -name "*.t"
        name_dir/file.t
        name_dir/file2.t

## grep 

    $ grep -ri story ./
        ./Pingvinus.md:## history
        ./Pingvinus.md:    $ history
        ./Pingvinus.md:    $ !16 // number command from history
        ./Pingvinus.md:        history
        ./Pingvinus.md:    $ history | grep test
        ./Pingvinus.md:        342  history | grp test
        ./Pingvinus.md:        343  history | grep test
        ./Pingvinus.md:{{ctrl + r}} (reverse-i-search)`te': history | grep test // afer click {{ctrl + r}}
        ./Pingvinus.md:{{ctrl + r}} (reverse-i-search)`te': history | grp test // next result if {{enter}} RUN that
        comm
        ./Pingvinus.md:    $ # ls -m // recording in history - for later use
        ./Pingvinus.md:    $ history
        ./Pingvinus.md:        354  history
        ./Pingvinus.md:        ## history
        ./Pingvinus.md:            $ history

    $ man ls


## apropos - finder in all commands

## du  - in centos 7
    # du -hsx /etc/sysconfig/
        332k    /etc/sysconfig/