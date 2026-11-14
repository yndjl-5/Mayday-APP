# 五月天百科 · Mayday Guide

使用 SwiftUI 製作的五月天介紹 App，透過成團故事、五位成員介紹、專輯封面與歌曲清單，認識五月天的音樂歷程。程式以初學者容易閱讀的寫法為主，每個頁面獨立成檔案，資料直接儲存在陣列中。

## 功能

- **歡迎頁**：顯示五月天圖片，點選「開始探索」進入 App。
- **故事**：介紹師大附中吉他社的起點，以左右滑動的時光線呈現成團與發片的重要時刻。
- **成員**：列出阿信、怪獸、石頭、瑪莎及冠佑的個人照；點入可閱讀本名、樂團分工、背景與創作例子。
- **專輯**：整理 1999–2016 年九張錄音室專輯，提供封面、年份、介紹及依曲序排列的歌曲清單。
- **探索**：手動勾選閱讀任務，並透過 WebView 開啟官方網站、中央社、維基百科及 Spotify 五月天主頁。

## 執行方式

1. 下載或 clone 此 repository。
2. 使用 Xcode 開啟 `Untitled Project.xcodeproj`。
3. 選擇 `MyApp` scheme 與 iPhone 或 iPad 模擬器。
4. 按下 Run（⌘R）。若使用實體裝置，請先在 Signing & Capabilities 設定自己的開發團隊。

App 使用 iOS 26 起提供的 SwiftUI `WebView`，需要支援該 API 的 Xcode 與 iOS／iPadOS 26 以上執行環境。此專案由 Xcode 27.2 環境建立，建議使用相容或更新版本開啟。沒有第三方套件、資料庫或 API 金鑰。

## 課堂要求對照

| 要求 | 實作 |
| --- | --- |
| 多頁面、獨立檔案 | 各個 `View.swift` |
| TabView 與 Tab | `MainTabView.swift` 的四個分頁 |
| NavigationStack、NavigationLink、資料傳遞及標題 | 點選成員／專輯後傳入對應資料，詳情頁設定 `navigationTitle` |
| 自訂 struct、Identifiable 與 array | `MaydayData.swift` |
| List 清單 | 成員、專輯與探索頁 |
| page 水平滑動分頁 | 故事頁的成團時光線 |
| WebView | `WebsiteView.swift` |
| 開頭畫面 | `WelcomeView.swift` 的互動歡迎頁 |
| iPhone 與 iPad 截圖 | `Screenshots/` |

## 程式結構

| 檔案 | 用途 |
| --- | --- |
| `MyApp.swift` | App 進入點 |
| `ContentView.swift` | 切換歡迎頁與主畫面 |
| `WelcomeView.swift` | 開頭圖片與開始按鈕 |
| `MainTabView.swift` | 四個 Tab 與各自的 NavigationStack |
| `HomeView.swift` | 團體合照、團史及水平分頁 |
| `MaydayData.swift` | 成員、專輯、歌曲、歷史與任務的資料型別及內容 |
| `MembersView.swift` / `MemberDetailView.swift` | 成員清單與介紹 |
| `AlbumsView.swift` / `AlbumDetailView.swift` | 專輯清單與介紹 |
| `AlbumSongsView.swift` | 曲序、歌名與版本說明 |
| `ExploreView.swift` | 閱讀任務及延伸連結 |
| `WebsiteView.swift` | App 內網頁 |
| `Assets.xcassets` | 團體照、個人照與專輯封面 |

建議先閱讀 `MaydayData.swift`，再看 `MembersView.swift` 如何把 `member` 傳給 `MemberDetailView`。更完整的展示步驟見 [作業說明](作業說明.md)。

## 畫面紀錄

以下為開發期間的模擬器截圖，部分畫面早於個人照、團體照與曲目清單更新，實際介面以目前程式為準。

| iPhone 專輯 | iPad 首頁 |
| --- | --- |
| ![iPhone 專輯](Screenshots/iPhone_albums.png) | ![iPad 首頁](Screenshots/iPad_home.png) |

其他畫面放在 [Screenshots](Screenshots/)。

## 資料與使用說明

- 任務由使用者手動勾選，以 `@State` 保留當次狀態，重新啟動後重設。
- 網頁需要網路連線；Spotify 播放與登入由 Spotify 提供。
- 歌曲清單供閱讀，App 本身沒有音樂播放功能。
- 《時光機》包含番外篇曲目；《第二人生》使用明日版曲序；《自傳》包含空白音軌及隱藏曲，不含日本版追加歌曲。
- 開頭畫面是 SwiftUI 互動歡迎頁，並非系統的靜態 Launch Screen。

主要參考：[五月天官方網站](https://www.mayday.jp/biography/)、[中央社的吉他社報導](https://www.cna.com.tw/news/amov/202312060350.aspx)、[五月天資料](https://zh.wikipedia.org/wiki/五月天)。各專輯曲目來源整理於 [作業說明](作業說明.md)。

本專案為非官方課堂學習作品，與五月天及其經紀公司沒有官方合作關係。照片、專輯封面及相關素材的權利屬原權利人；repository 不代表授予這些素材的再利用授權。
