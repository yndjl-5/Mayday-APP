import SwiftUI

struct AlbumsView: View {
    var body: some View {
        List {
            Section("1999–2016 · 九張錄音室專輯") {
                ForEach(albums) { album in
                    NavigationLink {
                        AlbumDetailView(album: album)
                    } label: {
                        HStack(spacing: 16) {
                            if album.imageName.isEmpty {
                                Image(systemName: "opticaldisc.fill")
                                    .font(.largeTitle).foregroundStyle(.blue)
                                    .frame(width: 64, height: 64)
                                    .accessibilityHidden(true)
                            } else {
                                Image(album.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                                    .accessibilityHidden(true)
                            }
                            VStack(alignment: .leading, spacing: 6) {
                                Text(album.title).font(.headline)
                                Text(album.year + "  ·  第 " + String(album.id) + " 張")
                                    .font(.subheadline).foregroundStyle(.secondary)
                            }
                            .padding(.vertical, 8)
                        }
                    }
                }
            }
            Section {
                Text("這裡整理錄音室專輯，不包含精選輯、單曲與演唱會專輯。")
                    .font(.caption).foregroundStyle(.secondary)
            }
        }
        .navigationTitle("專輯收藏室")
    }
}
