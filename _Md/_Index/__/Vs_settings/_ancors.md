## [Как создать резервную копию настроек VS Code и списка установленных расширений?](https://kompsekret.ru/q/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions-2126/)
* Windows:%USERPROFILE%\\.vscode\extensions
* Mac:~/.vscode/extensions
* Linux:~/.vscode/extensions

## [Visual Studio Code: мощное руководство пользователя](https://dev-gang.ru/article/visual-studio-code-moscznoe-rukovodstvo-polzovatelja-dwedy9wjzg/)

* Windows: %APPDATA%\Code\User\settings.json
* macOS: $HOME/Library/Application Support/Code/User/settings.json
* Linux: $HOME/.config/Code/User/settings.json

Для Workspace просто создайте папку .vscode в корне вашего проекта. Затем создайте файл settings.json внутри этой папки. Если вы работаете с панелью редактора настроек, она сделает это автоматически, когда вы измените настройки в области рабочего пространства. Вот подмножество глобальных настроек, с которыми я предпочитаю работать:

    {
      "editor.minimap.enabled": false,
      "window.openFoldersInNewWindow": "on",
      "diffEditor.ignoreTrimWhitespace": false,
      "files.trimTrailingWhitespace": true,
      "javascript.updateImportsOnFileMove.enabled": "always",
      "workbench.editor.enablePreview": false,
      "workbench.list.openMode": "doubleClick",
      "window.openFilesInNewWindow": "default",
      "editor.formatOnPaste": true,
      "editor.defaultFormatter": "esbenp.prettierVS Code",
      "editor.formatOnSave": true,
      "editor.tabSize": 2,
      "explorer.confirmDelete": false
    }

## [Visual Studio Code. Настройка и применение. Часть 1 ](https://medium.com/@p1t1ch/visual-studio-code-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D0%B8-%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D1%87%D0%B0%D1%81%D1%82%D1%8C-1-7f1a26806522)

## Useful setSettings:

      "workbench.settings.useSplitJSON": true,
      "breadcrumbs.enabled": true,
      “projectManager.openInNewWindowWhenClickingInStatusBar”: true,

## Useful hotKeys:

    {
        "key": "shift+f1",
        "command": "workbench.action.reloadWindow",
        "when": "editorTextFocus"
    },

## [Visual Studio Code. Настройка и применение. Часть 2](https://medium.com/@p1t1ch/visual-studio-code-%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D0%B8-%D0%BF%D1%80%D0%B8%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D1%87%D0%B0%D1%81%D1%82%D1%8C-2-8e4939bb1492)
     

## [VSCode Полный Курс для JavaScript разработчиков](https://www.youtube.com/watch?v=QeUp3CahkQw&t=1311s&ab_channel=%D0%92%D0%BB%D0%B0%D0%B4%D0%B8%D0%BB%D0%B5%D0%BD%D0%9C%D0%B8%D0%BD%D0%B8%D0%BD)