import SwiftUI

struct MainTabView: View {
    var body: some View {
        // 外層 TabView 負責點選分頁，各頁有自己的導覽路徑。
        TabView {
            Tab("故事", systemImage: "book.closed") {
                NavigationStack { HomeView() }
            }
            Tab("成員", systemImage: "person.3") {
                NavigationStack { MembersView() }
            }
            Tab("專輯", systemImage: "opticaldisc") {
                NavigationStack { AlbumsView() }
            }
            Tab("探索", systemImage: "checkmark.seal") {
                NavigationStack { ExploreView() }
            }
        }
        .tint(.blue)
    }
}
