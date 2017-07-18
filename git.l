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
	git reset HEAD [filename]   将赞成区的修改撤销,并重新放回工作去

10. git checkout -- [filename:a]
	a. 暂存区没有a,将最新的commit版本恢复到工作区
	b. 暂存区有a且a又被修改,将暂存区中a恢复到工作区
 
实用场景:
	场景1：当你改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，用命令 git checkout -- [filename]
	场景2：当你不但改乱了工作区某个文件的内容，还添加到了暂存区时，想丢弃修改，分两步，
			第一步用命令git reset HEAD file，就回到了场景1，
			第二步按场景1操作。
	场景3：已经提交了不合适的修改到版本库时，想要撤销本次提交，参考版本回退一节，不过前提是没有推送到远程库。

11. 建立远程git库,本地已有库
	a. git remote add origin git@github.com:pxccl/RL.git
	b. git push -u origin master

12. 分支管理
	a. 查看分支
		git branch
	b. 创建分支
		git branch [branchName]
	c. 删除分支
		git branch -d [branchName]
	d. 切换分支
		git checkout [branchName]
	e. 创建并切换分支
		git checkout -b [branchName]
	f. 合并分支
		git merge [branchName]     <Fast forward>模式,合并后,若删除分支,则分支历史记录消失
		git merge --no-ff -m "注释" [branchName]  普通模式合并,若删除分支,分支历史保留

13. 暂存工作区未commit修改,去做其他任务
	git stash
	...其他工作...
	git stash list
	git stash pop = git stash apply [stashName] + git stash drop [stashName]

