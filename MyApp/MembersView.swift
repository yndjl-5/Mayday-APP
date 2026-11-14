import SwiftUI

struct MembersView: View {
    var body: some View {
        List {
                ForEach(members) { member in
                    // 把這一列的 member 傳給下一頁。
                    NavigationLink {
                        MemberDetailView(member: member)
                    } label: {
                        HStack(spacing: 18) {
                            Image(member.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 96)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .accessibilityHidden(true)
                            VStack(alignment: .leading, spacing: 5) {
                                Text(member.name).font(.headline)
                                Text(member.role).font(.subheadline).foregroundStyle(.secondary)
                            }
                        }
                    }
                }
            
        }
        .navigationTitle("樂團成員")
    }
}
