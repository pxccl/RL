
	C - V			下一屏			
	A - V			上一屏			

	C - P			上一行			previous
	C - N			下一行			next

	C - F			上一符			forward
	C - B			下一符			back

	A - F			下一词			
	A - B			上一词			

	C - A			行首			
	C - E			行末			

	A - A			句首			
	A - E			句末			

	A - <			所有文字之前
	A - >			所有文字之后

	C - U +[N] +[Cmd1]  			执行N次命令Cmd1

	C - g			取消命令,终止命令

	C-x 1			关闭其他窗口
	C - X ..		与窗格,文件,缓冲区有关

	C - D			删除光标后的一个字符
	<backspace>		删除光标前的一个字符

	A-<backspace>		删除光标前的一个单词			(剪切)
	A - D			删除光标后的一个单词			(剪切)

	C - K			删除光标后到行尾的所有字符		(剪切)
	A - K			删除光标后到句尾的所有字符		(剪切)

	C - <SPC>		设定选择模式
	C - W			剪切
	C - Y			粘贴(上一次)
	A - Y			粘贴(前几次)
	C - /			撤销/恢复	<==> C-_  <==> C-x u

	C - X <字符或组合键>	扩展命令1
	A - X <命令字符串>	扩展命令2
	
	C-X C-f [文件名]	查找并打开文件
	C-X C-S			保存文件
	    	关闭自动备份功能:
		A-x customize-variable <Return> make-backup-files <Return>

	C-X C-S	    		保存当前缓存区
	C-X S	    		保存所有有修改但未保存的缓冲区
   
	C-X C-B			列出所有缓存区
	C-X B <缓存区名称a>	转向编辑a文件

	A-X replace-string [Enter] str1 [Enter] str2 [Enter]
	A-X recover-file <filename>	从emacs自动保存的缓冲区中恢复文件

	C - S		 	向前搜索
	C - R			向后搜索

	C-X O			在不同窗口间切换
	