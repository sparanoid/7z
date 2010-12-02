7-Zip 安装程序 9.20
-------------------

7-Zip 一是款 Windows 98/ME/NT/2000/2003/XP 平台下的压缩软件。

7-Zip 版权所有 (C) 1999-2010 Igor Pavlov。

这个库免是费的，您可以在基于自由软件基金会颁布的 GNU 较宽松公共许可证（版本 2.1，
或任意更早的版本）许可下重新发布它，并且/或修改它。

7zr.exe 是低版本的 7za.exe 命令行。
7zr.exe 仅支持部分 7z 的编码：LZMA、LZMA2、BCJ、BCJ2、Copy。

安装程序所用的压缩命令行示例：

7zr a -t7z archive.7z * -m0=BCJ2 -m1=LZMA:d25:fb255 -m2=LZMA:d19 -m3=LZMA:d19 -mb0:1 -mb0s1:2 -mb0s2:3 -mx


7zSD.sfx 是安装程序的 SFX （自释放）模块（需要调用 msvcrt.dll）

安装程序所用的自释放模块（7zS.sfx 和 7zSD.sfx）允许创建安装程序，例如提取压缩包中
的文件到临时文件夹、执行指定安装程序、安装完成后删除临时文件、完成后自动运行程序。
自释放的安装程序需要三部分组成：SFX_Module（自释放模块）、Installer_Config（安装
程序配置）、7z_Archive（7z 压缩包）。Installer_Config 是可选文件，您可以使用下列命
令创建一个自释放安装程序：

copy /b 7zSD.sfx + config.txt + archive.7z archive.exe

这样就创建了一个最简单的安装程序，选项 -y 则会使用安静模式释放文件。

安装程序配置文件格式
~~~~~~~~~~~~~~~~~~~~
配置文件包含安装程序所需要的命令，文件以 ;!@Install@!UTF-8! 开始，以 ;!@InstallEnd@!
结束。并且文件必须使用 UTF-8 编码，并包含下列内容：

格式：
ID_String="Value"

ID_String          描述 

Title              窗口标题
BeginPrompt        安装前提示文字
Progress           显示进程，可以设置为“yes”或“no”，默认值为“yes”。
RunProgram         运行程序命令，默认值为“setup.exe”，子字符串 %%T 将会被替换到文
                   件缩释放的临时目录
Directory          “RunProgram”的目录前缀。默认值为“.\\”
ExecuteFile        执行文件名
ExecuteParameters  “ExecuteFile”的参数


上述任何值都可以省略

有两种运行程序的方法：RunProgram 和 ExecuteFile。如果您想从 .7z 压缩包中运行程序，
请使用 RunProgram；如果您想从 .7z 压缩包中打开某个文件（例如文本文件），或者从 
Windows 中执行某个命令，请使用 ExecuteFile，

如果使用 RunProgram 参数并且目录前缀为空（Directory=""），系统将会按下列顺序搜索
相同文件名的可执行文件：

1. 安装程序所在目录
2. 文件被释放的临时文件夹
3. Windows 系统目录


配置文件示例
~~~~~~~~~~~~

;!@Install@!UTF-8!
Title="7-Zip 4.00"
BeginPrompt="您确定要安装 7-Zip 4.00？"
RunProgram="setup.exe"
;!@InstallEnd@!



;!@Install@!UTF-8!
Title="7-Zip 4.00"
BeginPrompt="您确定要安装 7-Zip 4.00？"
ExecuteFile="7zip.msi"
;!@InstallEnd@!



;!@Install@!UTF-8!
Title="7-Zip 4.01 Update"
BeginPrompt="您确定要安装 7-Zip 4.01 更新程序？"
ExecuteFile="msiexec.exe"
ExecuteParameters="/i 7zip.msi REINSTALL=ALL REINSTALLMODE=vomus"
;!@InstallEnd@!



安装包精简版 SFX 自释放模块
---------------------------

7zS2.sfx     - 精简版 SFX 模块（GUI 版本）
7zS2con.sfx  - 精简版 SFX 模块（命令行版本）

精简版 SFX 支持的编码：LZMA、LZMA2、BCJ、BCJ2、ARM、COPY。

精简版 SFX 模块与普通的 SFX 模块相似。但有下列区别：
 - 更小的尺寸（28 KB 与 100 KB）
 - C 源码而不是 ?+
 - 没有安装程序配置文件
 - 没有解压缩进度窗口
 - 解压缩固实 7z 区块（也可以是整个 7z 压缩包）到内存中、所以用户运行此模块制作的
   安装包时，相应的需要有大于 7z 区块的可用内存数（简单说就是可用内存要大于压缩包
   大小）。

如何使用
--------

copy /b 7zS2.sfx + archive.7z sfx.exe

当您运行安装包 SFX 模块时（sfx.exe）
1) 它会首先在系统临时文件夹中创建“7zNNNNNNNN”临时文件夹。
2) 然后解压缩 .7z 压缩包到该文件夹。
3) 然后从“7zNNNNNNNN”文件夹中执行一个文件。
4) 最后删除“7zNNNNNNNN”文件夹。

您可以对安装包发送参数请求，然后安装包会将它们传送到指定的 .exe 文件。

精简版 SFX 模块有三个优先级规则来决定哪个文件被自动运行：

  1) 根目录的文件比子目录的文件有更高的优先级。Files in root folder have higher priority than files in subfolders.
  2) 文件扩展名的优先级顺序（从高到低排序）：
       bat、exe、inf、msi、cab（Windows CE 下）html、htm
  2) 文件名的优先级顺序（从高到低排序）：
       setup、install、run、start

用于 Windows CE（ARM）版的 7zS2.sfx 包含在 7-Zip for Windows Mobile 包中（未翻译）。


配置文件示例
------------

1) 创建命令行版本 7-Zip 安装包：

7z a c.7z 7z.exe 7z.dll -m0=lzma2 -mx
copy /b 7zS2con.sfx + c.7z 7zCompr.exe
7zCompr.exe b -md22


2) 创建 GUI 版本 7-Zip 安装包：

7z a g.7z 7zg.exe 7z.dll -mx
copy /b 7zS2.sfx + g.7z 7zgCompr.exe
7zgCompr.exe b -md22


3) 执行文件：

7z a h.7z readme.txt -mx
copy /b 7zS2.sfx + h.7z 7zTxt.exe 
7zTxt.exe
