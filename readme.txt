7-Zip 附加包 9.35
-----------------

7-Zip 附加包包含了一些额外的 7-Zip 模块。

7-Zip 版权所有 (C) 1999-2014 Igor Pavlov。

当前的版本中包含以下文件：

7za.exe      - 独立的 7-Zip 命令行版本
7za.dll      - 7z 档案运行库。
7zxa.dll     - 7z 档案释放运行库。
7-zip.chm    - 帮助文件
License.txt  - 版权许可信息
readme.txt   - 自述文档（当前文件）
history.txt  - 7-Zip 历史

Far\         - FAR 管理器插件
Installer\   - 制作安装包所需文件

zh-cn.txt    - 最新版本语言文件（Nightly Build）
Docs\        - 7-Zip 自述、历史更新、帮助文件


所有 32 位二进制文件可以在下列操作系统中运行：
Windows 2000、2003、2008、XP、Vista、7、8、10
并且在 WoW64 的支持下可以支持所有 64 位 Windows 系统

所有 x64 二进制文件可以在任何 64 位的 Windows 系统上运行

所有的二进制文件都依赖于 msvcrt.dll。

7za.exe
-------

7za.exe - is a standalone console version of 7-Zip with reduced formats support.

  Extra: 7za.exe             : support for only some formats of 7-Zip.
  7-Zip: 7z.exe with 7z.dll  : support for all formats of 7-Zip.

7za.exe and 7z.exe from 7-Zip have same command line interface.
7za.exe doesn't use external DLL files.

You can read Help File (7-zip.chm) from 7-Zip package for description
of all commands and switches for 7za.exe and 7z.exe.

7za.exe 特征：
  - 支持高压缩比的 7z 格式
  - 支持下列其他格式：
      - 压缩 / 解压缩：7z、xz、ZIP、GZIP、BZIP2、TAR
      - 仅解压缩：Z、lzma
  - 为 ZIP 和 GZIP 格式提供最高的压缩比
  - 较快的压缩和解压所速度
  - 为 7z 和 ZIP 提供强大的 AES-256 加密

Note: LZMA SDK contains 7zr.exe - more reduced version of 7za.exe.
But you can use 7zr.exe as "public domain" code.


DLL 文件
-------

7za.dll and 7zxa.dll are reduced versions of 7z.dll from 7-Zip.
7za.dll and 7zxa.dll support only 7z format.
Note: 7z.dll is main DLL file that works with all archive types in 7-Zip.

7za.dll and 7zxa.dll support the following decoding methods:
    - LZMA, LZMA2, PPMD, BCJ, BCJ2, COPY, 7zAES, BZip2, Deflate.

7za.dll also supports 7z encoding with the following encoding methods:
    - LZMA, LZMA2, PPMD, BCJ, BCJ2, COPY, 7zAES.

7za.dll and 7zxa.dll work via COM interfaces.
But these DLLs don't use standard COM interfaces for objects creating.

Look also example code that calls DLL functions (in source code of 7-Zip):

 7zip\UI\Client7z

Another example of binary that uses these interface is 7-Zip itself.
The following binaries from 7-Zip use 7z.dll:
  - 7z.exe (console version)
  - 7zG.exe (GUI version)
  - 7zFM.exe (7-Zip File Manager)

Note: The source code of LZMA SDK also contains the code for similar DLLs
(DLLs without BZip2, Deflate support). And these files from LZMA SDK can be
used as "public domain" code. If you use LZMA SDK files, you don't need to
follow GNU LGPL rules, if you want to change the code.

7za.dll 特征：
  - 支持 7z 格式
  - 内置编码器：LZMA、LZMA2、PPMD、BCJ、BCJ2、COPY、AES-256 加密。
  - 内置解码器：LZMA、LZMA2、PPMD、BCJ、BCJ2、COPY、AES-256 加密、BZip2、Deflate。
7zxa.dll 则只支持解压缩 .7z 格式。


许可与常见问题
--------------

Can I use the EXE or DLL files from 7-Zip in a commercial application?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Yes, but you are required to specify in documentation for your application:
  (1) that you used parts of the 7-Zip program,
  (2) that 7-Zip is licensed under the GNU LGPL license and
  (3) you must give a link to www.7-zip.org, where the source code can be found.


Can I use the source code of 7-Zip in a commercial application?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Since 7-Zip is licensed under the GNU LGPL you must follow the rules of that license.
In brief, it means that any LGPL'ed code must remain licensed under the LGPL.
For instance, you can change the code from 7-Zip or write a wrapper for some
code from 7-Zip and compile it into a DLL; but, the source code of that DLL
(including your modifications / additions / wrapper) must be licensed under
the LGPL or GPL.
Any other code in your application can be licensed as you wish. This scheme allows
users and developers to change LGPL'ed code and recompile that DLL. That is the
idea of free software. Read more here: http://www.gnu.org/.


Note: You can look also LZMA SDK, which is available under a more liberal license.

7-Zip 是一款自由软件。您可以查看 License.txt 文档了解详细的版权信息。

7za.dll 以及 7-Zip（包括所有的界面以及示例程序）的源代码可以在以下地址找到：

http://www.7-zip.org/

7za.dll 以及 7zxa.dll 可以在 Windows 95/98/ME/NT/2000/XP/2003 上正常运行。
7za.dll 以及 7zxa.dll 通过 COM 界面运行。但这些 DLL 并不使用标准 COM 界面来创建对象。

---
文档末端
