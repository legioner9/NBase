# create repo

    cd ./repo
    git init --bare

# bind repo

    /blob_Git_what_trane{repo} (master)
    $ git remote

    $ git remote add lo_repo ../repo

    $ git remote
        lo_repo

    $ git push -u lo_repo master
        Enumerating objects: 7, done.
        Counting objects: 100% (7/7), done.
        Delta compression using up to 8 threads
        Compressing objects: 100% (5/5), done.
        Writing objects: 100% (7/7), 553 bytes | 553.00 KiB/s, done.
        Total 7 (delta 1), reused 0 (delta 0), pack-reused 0
        To ../repo
        * [new branch]      master -> master
        Branch 'master' set up to track remote branch 'master' from 'lo_repo'.

    $ git lg
        * bc9d637 - (HEAD -> master, lo_repo/master) commit mas3 (4 days ago) <legioner9>
        * e3874cc - commit mas2 (4 days ago) <legioner9>
        * ae177be - commit mas1 (5 days ago) <legioner9>