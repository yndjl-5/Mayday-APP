import SwiftUI

struct AlbumDetailView: View {
    let album: Album

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                VStack(spacing: 18) {
                    if album.imageName.isEmpty {
                        Image(systemName: "opticaldisc.fill")
                            .font(.system(size: 100))
                            .accessibilityHidden(true)
                    } else {
                        Image(album.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 320)
                            .padding(.horizontal, 24)
                            .accessibilityLabel(album.title + "專輯封面")
                    }
                    Text("MAYDAY / " + album.year)
                        .font(.caption).tracking(3)
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 40)
                .background(Color(red: 0.07, green: 0.15, blue: 0.27))
                .clipShape(RoundedRectangle(cornerRadius: 24))
                Text(album.title).font(.largeTitle.bold())
                Text(album.year + " 年發行 · 第 " + String(album.id) + " 張錄音室專輯")
                    .font(.subheadline).foregroundStyle(.secondary)
                Text(album.introduction).lineSpacing(8)
                Divider()
                AlbumSongsView(songs: album.songs, albumID: album.id)
            }
            .padding(24)
            .frame(maxWidth: 700)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle(album.title)
    }
}
