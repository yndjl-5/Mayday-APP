import SwiftUI
import WebKit

struct WebsiteView: View {
    let title: String
    let address: String

    var body: some View {
        WebView(url: URL(string: address))
            .navigationTitle(title)
    }
}
