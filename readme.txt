7-Zip 附加包 9.20
-----------------

7-Zip 附加包包含了一些额外的 7-Zip 模块。

7-Zip 版权所有 (C) 1999-2011 Igor Pavlov。

当前的版本中包含以下文件：

7za.dll      - 7z 档案运行库。
7z.sfx          - 自释放模块（GUI 版本）
7zCon.sfx       - 自释放模块（命令行版本）
7zS.sfx         - 安装包 SFX 模块。
7zSD.sfx        - 安装包 SFX 模块（需调用 msvcrt.dll）
7zS2.sfx        - 精简版 SFX 模块（GUI 版本，需调用 msvcrt.dll）
7zS2con.sfx     - 精简版 SFX 模块（命令行版本，需调用 msvcrt.dll）
7zr.exe      - 低版本的 7za.exe 命令行
7zxa.dll     - 7z 档案释放运行库。
history.txt  - 7-Zip 历史
License.txt  - 版权许可信息
readme.txt   - 自述文档（当前文件）
zh-cn.txt    - 最新版本语言文件（Nightly Build）
Docs\           - 7-Zip 自述、历史更新、帮助文件
Far\            - FAR 管理器插件
Installer\      - 制作安装包所需文件
x64\            - x64 DLL 文件


7za.dll 特征：
  - 支持 7z 格式
  - 内置编码器：LZMA、LZMA2、PPMD、BCJ、BCJ2、COPY、AES-256 加密。
  - 内置解码器：LZMA、LZMA2、PPMD、BCJ、BCJ2、COPY、AES-256 加密、BZip2、Deflate。
7zxa.dll 则只支持解压缩 .7z 格式。
    

7-Zip 是一款免费软件。您可以查看 License.txt 文档了解详细的版权信息。

7za.dll 以及 7-Zip（包括所有的界面以及示例程序）的源代码可以在以下地址找到：

http://www.7-zip.org/

7za.dll 以及 7zxa.dll 可以在 Windows 95/98/ME/NT/2000/XP/2003 上正常运行。
7za.dll 以及 7zxa.dll 通过 COM 界面运行。但这些 DLL 并不使用标准 COM 界面来创建物件。

---
文档末端
