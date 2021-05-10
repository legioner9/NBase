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

Git is a fast distributed revision control system.

This manual is designed to be readable by someone with basic UNIX command-line skills, but no previous knowledge of Git.

Chapter 1, Repositories and Branches and Chapter 2, Exploring Git history explain how to fetch and study a project using git—​read these chapters to learn how to build and test a particular version of a software project, search for regressions, and so on.

People needing to do actual development will also want to read Chapter 3, Developing with Git and Chapter 4, Sharing development with others.

Further chapters cover more specialized topics.

Comprehensive reference documentation is available through the man pages, or git-help(1) command. For example, for the command git clone <repo>, you can either use:

$ man git-clone
or:

$ git help clone
With the latter, you can use the manual viewer of your choice; see git-help(1) for more information.

See also Appendix A, Git Quick Reference for a brief overview of Git commands, without any explanation.

Finally, see Appendix B, Notes and todo list for this manual for ways that you can help make this manual more complete.