    {shape_11}={
            {st}={
                [e3874cc commit mas2]:[
                    sta1:'sta1 to stash',
                ]
            }
            {fs}={
                mas1:'',
                mas2:'',
                mas3:'',
                cl_ws:'',
                cl_in:'',
                mo_in:'modify mo_in',                
            }
            {ws}={
                cl_ws:'',
                mo_in:'modify mo_in',          
            }
            {in}={
                cl_in:'',
                mo_in:'',                                
            }
            }
            {lr}={
                [master (root-commit) ae177be]:[
                    mas1:'',
                ],
                [master e3874cc]:[
                    mas2:'',
                ],
                [master bc9d637]:{
                    mas3:'',
                }
            }
            {ur}={}
        }

    $ git st
        Refresh index: 100% (5/5), done.
        On branch master
        Changes to be committed:
        (use "git restore --staged <file>..." to unstage)
                new file:   cl_in
                new file:   mo_in

        Changes not staged for commit:
        (use "git add <file>..." to update what will be committed)
        (use "git restore <file>..." to discard changes in working directory)
                modified:   mo_in

        Untracked files:
        (use "git add <file>..." to include in what will be committed)
                cl_ws

    $ git lg
        * bc9d637 - (HEAD -> master) commit mas3 (20 hours ago) <legioner9>
        * e3874cc - commit mas2 (24 hours ago) <legioner9>
        * ae177be - commit mas1 (32 hours ago) <legioner9>

    $ git stash list
        stash@{0}: WIP on master: e3874cc commit mas2

![](_src/create_start_blob_1@1.1_{ws}.png)

![](_src/create_start_blob_1@1.1_{st}.png)

    # Changes to be committed:
    #	new file:   cl_in
    #	new file:   mo_in
    #
    # Changes not staged for commit:
    #	modified:   mo_in
    #
    # Untracked files:
    #	cl_ws
    #

    $ git restore --staged cl_in
    
    # Changes to be committed:
        #	new file:   mo_in
        #
        # Changes not staged for commit:
        #	modified:   mo_in
        #
        # Untracked files:
        #	cl_in
        #	cl_ws
        
### cl_in remove from index

    