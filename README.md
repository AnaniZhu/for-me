# for-me
整理自己在前端工作中，常用的 mac 软件、VSCode 插件、前端工程风格

## 快速安装前端环境
1. [一键初始化前端环境 Shell 脚本](https://github.com/AnaniZhu/for-me/blob/main/setup.sh) 会自动安装下方含有 💡 标记的 app，还有初始化前端环境(VSCode, node, nvm, pnpm 等)
2. [AppWorks](https://apptools.gitee.io/) 阿里巴巴出品，快速配置前端环境的前端研发工具箱。但工具略扫，近几年也没更新。

## Mac APP

### 浏览器
1. 💡[Google Chrome](https://www.google.com/chrome/) 前端开发必备

### 输入法
1. 💡[搜狗输入法](https://shurufa.sogou.com/)  支持账号同步信息，输入历史，表情包等功能

### 效率
1. 💡[Raycast](https://www.raycast.com/) Mac 效率工具，支持快捷打开应用、链接，剪切板历史、快捷指令、翻译、AI 等功能，开源免费，alfred 平替。
2. 💡[Snipaste](https://www.snipaste.com/) 截图、长图、滚动截图、贴图。个人最喜欢贴图功能，方便快速对比。

## 终端
1. 💡[iTerm](https://iterm2.com/) Mac 必备终端，不多解释
2. 💡[Warp](https://www.warp.dev/) 新一代终端，现代化交互和外观，IDE 交互体验，还集成 AI 能力，唯一缺点是有时速度略慢，不支持 VSCode 嵌入，现在已经成为我的主力终端了

### 代理
1. [Proxyman](https://proxyman.io/) 现代化代理工具，拥有美观的界面、优雅的交互，直观的操作，上手成本低。唯一的缺点是现在免费功能较少，需要付费。
2. [LightProxy](https://github.com/alibaba/lightproxy) 阿里巴巴出品的代理工具，但原作者已经离职，无人维护
3. [charles](https://charlesproxy.com/) 老牌代理工具，交互和外观都有点落后，上手成本较高

### 联调
1. [Postman](https://www.postman.com/) 接口测试工具，老牌工具
2. [Apifox](https://apifox.com/) 前端友好的接口管理、文档、测试工具，交互和UI都比较友好，适合团队使用
3. [yapi](https://hellosean1025.github.io/yapi/) 老牌接口文档平台

### 数据库
1. [navicat](https://navicat.com/en/) 数据库 GUI 工具，方便好用，收费软件

### 休闲
1. 💡[Spotify](https://open.spotify.com/) 免费的音乐软件，拥有绝大部分歌曲的版权，仅少数冷门歌曲没有，唯一的缺点就是会有广告，需要科学上网

## Chrome 扩展
### 效率
1. [扩展管理器（Extension Manager）](https://chrome.google.com/webstore/detail/gjldcdngmdknpinoemndlidpcabkggco) 扩展管理器，可以快速开启/禁用某个扩展
2. [油猴](https://chromewebstore.google.com/detail/%E7%AF%A1%E6%94%B9%E7%8C%B4/dhdgffkkebhmkfjojejmpbldmpobfkfo) 神器，无需多言
3. [书签侧边栏](https://chrome.google.com/webstore/detail/jdbnofccmhefkmjbkkdkfiicjkgofkdh) 更加美观、交互友好的书签管理器，支持快捷键打开、搜索等

### 开发
1. [Refined GitHub](https://github.com/refined-github/refined-github) Github 界面美化，操作优化
2. [JSON Viewer](https://chrome.google.com/webstore/detail/gbmdgpbipfallnflgajpaliibnhdgobh) JSON 展示美化
3. [Vue.js devtools](https://chrome.google.com/webstore/detail/nhdogjmejiglipccpnnnanhbledajbpd) Vue 页面调试工具
4. [React Developer Tools](https://chrome.google.com/webstore/detail/fmkadmapgofadopljbjfkapdkoienihi) React 页面调试工具
5. [ModHeader](https://chrome.google.com/webstore/detail/idgpnmonknjnojddfkpgkljpfnnfcklj) 请求代理工具，修改请求头比较方便
6. [Console Importer](https://chromewebstore.google.com/detail/console-importer/hgajpakhafplebkdljleajgbpdmplhie) Chrome Devtool Console 中能快速导入 npm 包并挂在到全局变量上，方便测试

## 阅读
1. [Feedbro](https://chrome.google.com/webstore/detail/mefgmmbdailogpfhfblcnnjfmnpnmdfa) RSS 订阅器
2. [Instapaper](https://chrome.google.com/webstore/detail/ldjkgaaoikpmhmkelcgkgacicjfbofhh) 文章爬取器，支持账户多端同步

### AI
1. [monica](https://chrome.google.com/webstore/detail/ofpnmcalabcbjgholdjcjblkibolbppb) AI 助手，每天有 40 次免费问答的机会
2. [ChatHub](https://chrome.google.com/webstore/detail/iaakpnchhognanibcahlpcplchdfmgma) AI Chat 聚合平台，可以配置 api key。一次提问，同时展示多个大模型结果。

### 翻译
1. [火山翻译](https://chrome.google.com/webstore/detail/klgfhbiooeogdfodpopgppeadghjjemk) 划词和网页翻译，字节跳动出品，开箱即用免配置，完全免费无广告，翻译速度快
2. [沙拉查词](https://chrome.google.com/webstore/detail/cdonnmffkdaoajfknoeeecmchibpmkmg) 聚合词典划词翻译，支持多个平台的翻译结果，但翻译比较慢

### 工具
1. [Screenity](https://chrome.google.com/webstore/detail/kbbdabhdfibnancpjfhlkhafgdilcnji) 屏幕录像和标注工具

## VSCode 扩展
// .vscode/extensions.json 将此文件放入项目根目录，vscode 会自动提示安装
```json
{
  "recommendations": [
    "ms-ceintl.vscode-language-pack-zh-hans",
    "eamodio.gitlens",
    "dbaeumer.vscode-eslint",
    "stylelint.vscode-stylelint",
    "vunguyentuan.vscode-css-variables",
    "aaron-bond.better-comments",
    "streetsidesoftware.code-spell-checker",
    "mariusalchimavicius.json-to-ts",
    "techer.open-in-browser",
    "tabnine.tabnine-vscode",
    "gruntfuggly.todo-tree",
    "jock.svg",
    "yzhang.markdown-all-in-one"
  ]
}

```

## 前端工程化

### 代码风格
1. [ESLint 规则集]() 适用于 React + TS 项目
2. [StyleLint 规则集](https://github.com/AnaniZhu/for-me/blob/main/.eslintrc.js) 适用于 Less 文件
