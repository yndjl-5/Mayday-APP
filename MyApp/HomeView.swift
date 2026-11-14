import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Image("5yt")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .accessibilityLabel("五月天團體合照")

                VStack(alignment: .leading, spacing: 12) {
                    Text("THE STORY OF MAYDAY").font(.caption).tracking(2)
                    
                    Text("五月天的故事，從師大附中吉他社開始。阿信、怪獸、石頭與瑪莎在這裡結識，因為喜歡音樂而一起練習、玩團，逐步走向校園外的舞台。1997 年以「五月天」之名參加野台開唱；1999 年冠佑加入，形成大家熟悉的五人陣容。")
                        .lineSpacing(5)
                }
                .padding(24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                .background(Color(red: 0.07, green: 0.15, blue: 0.27))
                .clipShape(RoundedRectangle(cornerRadius: 24))

                Text("成團時光線").font(.title2.bold())
                Text("左右滑動，從吉他社走向舞台")
                    .font(.subheadline).foregroundStyle(.secondary)

                TabView {
                    ForEach(historyEvents) { event in
                        HistoryCard(event: event)
                            .padding(.horizontal, 4)
                            .padding(.bottom, 32)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .frame(height: 310)

                NavigationLink {
                    MembersView()
                } label: {
                    Label("認識舞台上的五個人", systemImage: "person.3.fill")
                        .font(.headline).padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue.opacity(0.08))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
            .padding(20)
            .frame(maxWidth: 760)
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("五月天・故事")
    }
}

struct HistoryCard: View {
    let event: HistoryEvent

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 14) {
                Text(event.year).font(.system(size: 44, weight: .black, design: .rounded))
                    .foregroundStyle(.blue)
                Text(event.title).font(.title2.bold())
                Text(event.story).lineSpacing(5)
            }
            .padding(24)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(.blue.opacity(0.07))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
