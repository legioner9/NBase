    $ git init
        Initialized empty Git repository in E:/Node_projects/Pre_Git/.git/
    
    $ ls -a
        ./  ../  .git/

    // create and write file
    $ echo comm1 > mas1

    
    $ ls
        mas1
    
    $ git add .

    $ git st
        On branch master
        
        No commits yet
        
        Changes to be committed:
          (use "git rm --cached <file>..." to unstage)
                new file:   mas1
            
    $ git commit . -m 'my first commit'
        warning: LF will be replaced by CRLF in mas1.
        The file will have its original line endings in your working directory
        [master (root-commit) b633ae8] my first commit
         1 file changed, 1 insertion(+)
         create mode 100644 mas1

    $ git lg
        * b633ae8 - (HEAD -> master) my first commit (81 seconds ago) <legioner9>
    
    $ ls
        mas1
    
    $ cat mas1
        comm1
    
    $ echo comm_add_to_comm1 >> mas1
    $ cat mas1
        comm1
        comm_add_to_comm1
        
    $ git st
    On branch master
    Changes not staged for commit:
      (use "git add <file>..." to update what will be committed)
      (use "git restore <file>..." to discard changes in working directory)
            modified:   mas1
    
    no changes added to commit (use "git add" and/or "git commit -a")
    

    
    
    
    
    






= 












    
    
     
 
