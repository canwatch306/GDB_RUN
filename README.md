// 初始化本地git仓库
git init 
//将项目添加到本地仓库    
git add .
//提交到本地仓库
git commit -m '初始提交'
// 添加远程仓库地址（需要先在Gitee上建好，复制地址到这里），命名为origin：
// git remote add origin https://xxx.com/xxx/xxx.git
git remote add origin https://gitee.com/hongzhiguo/test.git
//将当前分支重命名为 master
git branch -M master
//推传到远程仓库  
git push -uf origin master
