import SwiftUI

struct ExploreView: View {
    
    @State private var tasks = [
        ExploreTask(id: 1, title: "看完成團時光線"),
        ExploreTask(id: 2, title: "認識五位團員"),
        ExploreTask(id: 3, title: "讀一張專輯的介紹")
    ]

    var body: some View {
        List {
            Section {
                Text("今天，再認識五月天多一點。").font(.headline)
                Text("完成閱讀後，自己勾選下面的任務。")
                    .font(.subheadline).foregroundStyle(.secondary)
                // filter 找出已完成的項目，再用 count 計算數量。
                Text("已完成 \(tasks.filter { $0.isCompleted }.count) / \(tasks.count)")
                    .font(.title2.bold()).foregroundStyle(.blue)
            }
            Section("我的探索任務") {
                ForEach($tasks) { $task in
                    Toggle(task.title, isOn: $task.isCompleted)
                }
                Button("重新開始任務") {
                    for index in tasks.indices {
                        tasks[index].isCompleted = false
                    }
                }
            }
            Section("延伸閱讀・資料來源") {
                NavigationLink("中央社・從附中吉他社到樂團") {
                    WebsiteView(title: "吉他社的起點", address: "https://www.cna.com.tw/news/amov/202312060350.aspx")
                }
                NavigationLink("五月天日本官方網站（團員／專輯）") {
                    WebsiteView(title: "五月天官方網站", address: "https://www.mayday.jp/biography/")
                }
                NavigationLink("Spotify・五月天主頁") {
                    WebsiteView(title: "五月天 Spotify", address: "https://open.spotify.com/artist/16s0YTFcyjP4kgFwt7ktrY")
                }
                NavigationLink("維基百科・五月天") {
                    WebsiteView(title: "五月天資料", address: "https://zh.wikipedia.org/wiki/五月天")
                }
            }
        }
        .navigationTitle("探索任務")
    }
}
