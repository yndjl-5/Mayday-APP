import SwiftUI

struct MemberDetailView: View {
    // let 接收上一頁傳入的資料。
    let member: Member

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                // 依照資料中的名稱讀取個人照，保持完整比例。
                Image(member.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 420)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .frame(maxWidth: .infinity)
                    .accessibilityLabel(member.name + "個人照")
                Text(member.name).font(.largeTitle.bold())
                Text(member.role).font(.headline).foregroundStyle(.secondary)
                Divider()
                Text("人物故事").font(.title2.bold())
                Text(member.introduction).lineSpacing(8)
            }
            .padding(24)
            .frame(maxWidth: 700)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle(member.name)
    }
}
