import SwiftUI

struct WelcomeView: View {
    // Binding 讓這個頁面的按鈕可以修改 ContentView 的狀態。
    @Binding var hasStarted: Bool

    var body: some View {
        ZStack {
            Color(red: 0.07, green: 0.15, blue: 0.27).ignoresSafeArea()
            ScrollView {
                VStack(spacing: 28) {
                    Text("MAYDAY • MUSIC STORIES")
                        .font(.caption).tracking(3)
                    Image("mayday")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .accessibilityLabel("五月天照片")
                    Text("五月天百科")
                        .font(.largeTitle.bold())
                    Text("五個人，九張專輯。\n從第一個舞台，認識他們的音樂故事。")
                        .multilineTextAlignment(.center)
                        .lineSpacing(6)
                    Button {
                        hasStarted = true
                    } label: {
                        Label("開始探索", systemImage: "arrow.right")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                                    }
                .foregroundStyle(.white)
                .padding(32)
                .frame(maxWidth: 520)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 60)
            }
        }
    }
}
