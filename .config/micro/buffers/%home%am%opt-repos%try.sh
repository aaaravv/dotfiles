I��SerializedBuffer�� EventHandler�� Cursor�� ModTime��   8��EventHandler�� 	UndoStack�� 	RedoStack��   '��TEStack�� Top�� Size   *��Element�� Value�� Next��   B��	TextEvent�� C�� 	EventType Deltas�� Time��   Z��Cursor�� Loc�� LastVisualX CurSelection�� OrigSelection�� Num   ��Loc�� X Y   ��[2]buffer.Loc�� ��  ��[]buffer.Delta�� ��  0��Delta�� Text
 Start�� End��   ��Time��   ����      �{echo -e "\n======> Installing ZSH-Plugins"
mkdir -p $HOME/.config/zsh/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.config/zsh/plugins/zsh-auto
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.config/zsh/plugins/fsh
git clone https://github.com/rupa/z.git ${HOME}/.config/zsh/plugins/z

mkdir -p ${HOME}/temp && cd ${HOME}/temp

git init
git remote add -f origin https://github.com/ohmyzsh/ohmyzsh.git
git sparse-checkout init
git sparse-checkout set "plugins/bgnotify" "plugins/sudo"
git pull origin master
cp -frv plugins/* ${HOME}/.config/zsh/plugins
rm -rf ${HOME}/temp
      ٚ���y�J         ٚ���~�J 