[Git поврежден репозиторий (некорректная проверка заголовка, свободный объект поврежден)
](https://fooobar.com/questions/133751/git-repository-corrupt-incorrect-header-check-loose-object-is-corrupt)

    % git commit
    error: inflate: data stream error (incorrect header check)
    error: unable to unpack a94406345ac44982b00cf57b4b9660a35436637f header
    fatal: a94406345ac44982b00cf57b4b9660a35436637f is not a valid object

`git fsck` показывает следующее:

    % git fsck --full
    Checking object directories: 100% (256/256), done.
    error: inflate: data stream error (incorrect header check)
    error: unable to unpack 4346883490a0990e68db0187241abc1642765a73 header
    error: inflate: data stream error (incorrect header check)
    fatal: loose object 4346883490a0990e68db0187241abc1642765a73 (stored in .git/objects/43/46883490a0990e68db0187241abc1642765a73) is corrupt