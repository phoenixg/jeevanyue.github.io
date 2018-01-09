# 我的个人博客网站

下面对搭建过程做简单介绍。

# 搭建网站

## 创建原始文件

```{r}
new_site(
	dir = 'blogdown_source', 
	theme = 'gcushen/hugo-academic',
	format = 'toml', sample = FALSE, theme_example = TRUE)
```

## 修改config.toml

> **publishDir** tell **blogdown** which directory it should place the rendered site in. This directory will include a copy of everything that gets generated in the **public/** directory of your site’s root directory. To use the two repository method described above, set this to **publishDir = "../<username>.github.io"**. Adjust this path to where ever you keep your **<username>.github.io** repository

```
publishDir = "../jeevanyue.github.io"
```

> config.toml文件里的默认设置不支持本地浏览，而且发布到网上时需要布署。这里改成相对路径relativeurls = true，就可以直接在本地打开 index.html 浏览了。

```
baseurl = "/"
relativeurls = true
```

## 运行建站函数

```{r}
blogdown::build_site()
## blogdown::build_dir('static')
```

## 部署到Github

部署到网站时再进行如下调整，注意baseurl不要缺失最后的左斜杠“/”。

```
baseurl = "https://jeevanyue.github.io/"
relativeurls = true
```

最后将eevanyue.github.io提交到GitHub。

# 参考

- [Mara Averick: Keeping up with blogdown](https://maraaverick.rbind.io/2017/10/keeping-up-with-blogdown/?utm_content=buffer57f85&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer)
- [R blogdown 搭建个人博客或科研网站](http://www.pzhao.org/zh/post/r-blogdown/)
- [Building a Blog with Blogdown and GitHub](https://tclavelle.github.io/blog/blogdown_github/)