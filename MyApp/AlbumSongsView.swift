import SwiftUI

struct AlbumSongsView: View {
    let songs: [String]
    let albumID: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("專輯曲目").font(.title2.bold())
            Text("共 \(songs.count) 軌").foregroundStyle(.secondary)

            if albumID == 4 {
                Text("包含番外篇的 4 首加收曲，下方接續編號。")
                    .font(.caption).foregroundStyle(.secondary)
            } else if albumID == 8 {
                Text("明日版曲序，共 13 軌。")
                    .font(.caption).foregroundStyle(.secondary)
            } else if albumID == 9 {
                Text("包含空白音軌與隱藏曲，不含日本版追加歌曲。")
                    .font(.caption).foregroundStyle(.secondary)
            }

            ForEach(Array(songs.enumerated()), id: \.element) { index, song in
                HStack(alignment: .top, spacing: 16) {
                    Text(String(index + 1))
                        .monospacedDigit()
                        .foregroundStyle(.blue)
                        .frame(width: 28, alignment: .trailing)
                    Text(song)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.vertical, 8)
            }
        }
    }
}
