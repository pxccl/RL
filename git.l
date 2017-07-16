1. git 初始化
	git config --global user.name "pxc"
	git config --global user.email "pxccl@sina.com"

2. 进入要版本控制的目录
	git init

3. 将变动文件加入缓冲区
	git add [Filename|*]

4. 将缓冲区文件放入版本库
	git commit -m "文件说明"

5. 查看文件状态
	git status

6. 查看文件前后不同之处
	git diff [Filename]

7. 查看提交日志,不含撤销版本
	git log
	git log --pretty=oneline

8. 查看所有提交日志,包括撤销的版本
	git relog

9. 回退版本
	git reset --hard HEAD^
		HEAD^(上一版本) HEAD^^(上上一版本) ... HEAD~100(上100版本)
	git reset --hard [commit ID(git log 得到)]

10.  
