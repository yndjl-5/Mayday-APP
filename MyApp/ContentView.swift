import SwiftUI

struct ContentView: View {
    @State private var hasStarted = false

    var body: some View {
        if hasStarted {
            MainTabView()
        } else {
            WelcomeView(hasStarted: $hasStarted)
        }
    }
}

#Preview {
    ContentView()
}
