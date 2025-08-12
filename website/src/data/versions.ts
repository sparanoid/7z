export interface VersionData {
  stable: Version;
  beta: Version;
}

export interface Version {
  long: string;
  short: string;
  type?: string;
  date: string;
  sdk: {
    long: string;
    short: string;
    date: string;
  };
}

export interface Download {
  version: string;
  date: string;
  note?: string;
  downloads: DownloadLink[];
}

export interface DownloadLink {
  url: string;
  type: string;
  system: string;
  description?: string;
  rowspan?: number;
}

export const versions: VersionData = {
  stable: {
    long: "25.01",
    short: "2501",
    date: "2025-08-03",
    sdk: {
      long: "25.01",
      short: "2501",
      date: "2025-08-03",
    },
  },
  beta: {
    long: "25.01",
    short: "2501",
    type: "beta",
    date: "2025-08-03",
    sdk: {
      long: "25.01",
      short: "2501",
      date: "2025-08-03",
    },
  },
};

export const { stable, beta } = versions;

export const currentDownloads: Download[] = [
  {
    version: stable.long,
    date: stable.date,
    note: "<p>我们更建议使用 <b>exe</b> 版本的安装包而不是 <b>msi</b> 安装包。</p>",
    downloads: [
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-x64.exe`,
        type: ".exe",
        system: "64 位 Windows x64",
        description: "7-Zip Windows",
        rowspan: 3,
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}.exe`,
        type: ".exe",
        system: "32 位 Windows x86",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-arm64.exe`,
        type: ".exe",
        system: "64 位 Windows arm64",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-x64.msi`,
        type: ".msi",
        system: "64 位 Windows x64",
        description: "（MSI 安装包）7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}.msi`,
        type: ".msi",
        system: "32-bit Windows x86",
        description: "（MSI 安装包）7-Zip Windows 32 位",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-extra.7z`,
        type: ".7z",
        system: "Windows x86 / x64",
        description: "7-Zip 附加包：7z 独立命令行版本、7z DLL、Far 管理器插件",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-linux-x64.tar.xz`,
        type: ".tar.xz",
        system: "64-bit Linux x86-64",
        description: "7-Zip Linux：命令行版本",
        rowspan: 4,
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-linux-x86.tar.xz`,
        type: ".tar.xz",
        system: "32 位 Linux x86",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-linux-arm64.tar.xz`,
        type: ".tar.xz",
        system: "64 位 Linux arm64",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-linux-arm.tar.xz`,
        type: ".tar.xz",
        system: "32 位 Linux arm",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-mac.tar.xz`,
        type: ".7z",
        system: "macOS（arm64 / x86-64）",
        description: "7-Zip MacOS：命令行版本",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-src.7z`,
        type: ".7z",
        system: "任意 / Windows",
        description: "7-Zip 源代码",
      },
      {
        url: `https://www.7-zip.org/a/7z${stable.short}-src.tar.xz`,
        type: ".tar.xz",
        system: "任意 / Windows",
        description: "7-Zip 源代码",
      },
      {
        url: `https://www.7-zip.org/a/lzma${stable.short}.7z`,
        type: ".7z",
        system: "任意 / Windows",
        description: "LZMA SDK（C、C++、C#、Java）",
      },
      {
        url: "https://www.7-zip.org/a/7zr.exe",
        type: ".exe",
        system: "Windows",
        description: "7zr.exe（x86）：7-Zip 命令行可执行文件",
      },
    ],
  },
];

export const legacyDownloads: Download[] = [
  {
    version: "23.01",
    date: "2023-06-20",
    downloads: [
      {
        url: "https://www.7-zip.org/a/7z2201-x64.exe",
        type: ".exe",
        system: "64 位 Windows x64",
        description: "7-Zip Windows",
        rowspan: 3,
      },
      {
        url: "https://www.7-zip.org/a/7z2201.exe",
        type: ".exe",
        system: "32 位 Windows x86",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-arm64.exe",
        type: ".exe",
        system: "64 位 Windows arm64",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-x64.msi",
        type: ".msi",
        system: "64 位 Windows x64",
        description: "（MSI 安装包）7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: "https://www.7-zip.org/a/7z2201.msi",
        type: ".msi",
        system: "32-bit Windows x86",
        description: "（MSI 安装包）7-Zip Windows 32 位",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-extra.7z",
        type: ".7z",
        system: "Windows x86 / x64",
        description: "7-Zip 附加包：7z 独立命令行版本、7z DLL、Far 管理器插件",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-linux-x64.tar.xz",
        type: ".tar.xz",
        system: "64-bit Linux x86-64",
        description: "7-Zip Linux：命令行版本",
        rowspan: 4,
      },
      {
        url: "https://www.7-zip.org/a/7z2201-linux-x86.tar.xz",
        type: ".tar.xz",
        system: "32 位 Linux x86",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-linux-arm64.tar.xz",
        type: ".tar.xz",
        system: "64 位 Linux arm64",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-linux-arm.tar.xz",
        type: ".tar.xz",
        system: "32 位 Linux arm",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-src.7z",
        type: ".7z",
        system: "任意 / Windows",
        description: "7-Zip 源代码",
      },
      {
        url: "https://www.7-zip.org/a/7z2201-src.tar.xz",
        type: ".tar.xz",
        system: "任意 / Windows",
        description: "7-Zip 源代码",
      },
      {
        url: "https://www.7-zip.org/a/lzma2201.7z",
        type: ".7z",
        system: "任意 / Windows",
        description: "LZMA SDK（C、C++、C#、Java）",
      },
    ],
  },
  {
    version: "21.07",
    date: "2021-12-26",
    downloads: [
      {
        url: "https://www.7-zip.org/a/7z2107-mac.tar.xz",
        type: ".tar.xz",
        system: "macOS（arm64 / x86-64）",
        description: "7-Zip MacOS：命令行版本",
      },
    ],
  },
  {
    version: "19.00",
    date: "2019-02-21，Windows",
    downloads: [
      {
        url: "https://www.7-zip.org/a/7z1900-x64.exe",
        type: ".exe",
        system: "64 位 x64",
        description: "7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: "https://www.7-zip.org/a/7z1900.exe",
        type: ".exe",
        system: "32 位 x86",
        description: "7-Zip Windows 32 位",
      },
      {
        url: "https://www.7-zip.org/a/7z1900-extra.7z",
        type: ".7z",
        system: "x86 / x64",
        description:
          "7-Zip Extra: standalone console version, 7z DLL, Plugin for Far Manager",
      },
      {
        url: "https://www.7-zip.org/a/7z1900-src.7z",
        type: ".7z",
        system: "任意",
        description: "7-Zip 源代码",
      },
      {
        url: "https://www.7-zip.org/a/lzma1900.7z",
        type: ".7z",
        system: "任意 / x86 / x64",
        description: "LZMA SDK（C、C++、C#、Java）",
      },
      {
        url: "https://www.7-zip.org/a/7z1900-x64.msi",
        type: ".msi",
        system: "64 位 x64",
        description: "（MSI 安装包）7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: "https://www.7-zip.org/a/7z1900.msi",
        type: ".msi",
        system: "32 位 x86",
        description: "（MSI 安装包）7-Zip Windows 32 位",
      },
    ],
  },
  {
    version: "16.04",
    date: "2016-10-04，Windows",
    downloads: [
      {
        url: "https://www.7-zip.org/a/7z1604.exe",
        type: ".exe",
        system: "32 位 x86",
        description: "7-Zip Windows 32 位",
      },
      {
        url: "https://www.7-zip.org/a/7z1604-x64.exe",
        type: ".exe",
        system: "64 位 x64",
        description: "7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: "https://www.7-zip.org/a/7z1604-extra.7z",
        type: ".7z",
        system: "x86 / x64",
        description: "7-Zip 附加包：独立命令行、7z 程序库、Far 管理器插件",
      },
      {
        url: "https://www.7-zip.org/a/7z1604-src.7z",
        type: ".7z",
        system: "任意",
        description: "7-Zip 源代码",
      },
      {
        url: "https://www.7-zip.org/a/lzma1604.7z",
        type: ".7z",
        system: "任意 / x86 / x64",
        description: "LZMA SDK（C、C++、C#、Java）",
      },
      {
        url: "https://www.7-zip.org/a/7z1604.msi",
        type: ".msi",
        system: "32 位 x86",
        description: "（MSI 安装包）7-Zip Windows 32 位",
      },
      {
        url: "https://www.7-zip.org/a/7z1604-x64.msi",
        type: ".msi",
        system: "64 位 x64",
        description: "（MSI 安装包）7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
    ],
  },
  {
    version: "9.20",
    date: "2010-11-18，Windows",
    downloads: [
      {
        url: "https://www.7-zip.org/a/7z920.exe",
        type: ".exe",
        system: "32 位 x86",
        description: "7-Zip Windows 32 位",
        rowspan: 2,
      },
      {
        url: "https://www.7-zip.org/a/7z920.msi",
        type: ".msi",
        system: "32 位 x86",
      },
      {
        url: "https://www.7-zip.org/a/7z920-x64.msi",
        type: ".msi",
        system: "64 位 x64",
        description: "7-Zip Windows 64 位（Intel 64 或 AMD64）",
      },
      {
        url: "https://www.7-zip.org/a/7z920-ia64.msi",
        type: ".msi",
        system: "IA-64",
        description: "7-Zip 64 位（IA-64 安腾 Itanium CPU）",
      },
      {
        url: "https://www.7-zip.org/a/7z920-arm.exe",
        type: ".exe",
        system: "ARM-WinCE",
        description: "7-Zip for Windows Mobile / Windows CE (ARM)",
      },
      {
        url: "https://www.7-zip.org/a/7za920.zip",
        type: ".zip",
        system: "32 位",
        description: "7-Zip 命令行版本",
      },
      {
        url: "https://www.7-zip.org/a/7z920.tar.bz2",
        type: ".tar.bz2",
        system: "任意",
        description: "7-Zip 源代码",
      },
      {
        url: "https://www.7-zip.org/a/7z920_extra.7z",
        type: ".7z",
        system: "32 位",
        description:
          "7-Zip 附加包：7z 程序库、安装模式自释放模块、FAR 管理器插件",
      },
      {
        url: "https://www.7-zip.org/a/lzma920.tar.bz2",
        type: ".tar.bz2",
        system: "任意",
        description: "LZMA SDK（C、C++、C#、Java）",
        rowspan: 2,
      },
    ],
  },
];
