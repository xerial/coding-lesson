---
layout: default
title: UNIX Commands
---
UNIX commands
=============
## cd (change directory) フォルダの移動
```
$ cd (フォルダ名)    

＃ 親フォルダへ移動
$ cd ..

ホームフォルダから移動
$ cd ~/(フォルダ名)

# 現在のフォルダを表示
$ pwd 
```

## ls (list files) ファイル一覧を表示

```
$ ls               
＃ ファイルサイズ、更新日付なども表示
$ ls -l            
# 隠しファイルも表示
$ ls -la           
```

## mkdir (make direcotry) フォルダの作成

```
$ mkdir ruby

＃ 子ディレクトリまで作成
$ mkdir -p ruby/lesson1/src
```