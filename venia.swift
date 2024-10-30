import SwiftUI

struct CustomTextView: View {
    // Define a public property for truncation mode
    public var truncationMode: Text.TruncationMode
    
    var body: some View {
        Text("This is a very long piece of text that might get truncated.")
            .lineLimit(1) // Limit to one line
            .truncationMode(truncationMode) // Apply the truncation mode
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            // Example usage of CustomTextView with different truncation modes
            CustomTextView(truncationMode: .head)
                .padding()
                .border(Color.black)
            
            CustomTextView(truncationMode: .middle)
                .padding()
                .border(Color.black)
            
            CustomTextView(truncationMode: .tail)
                .padding()
                .border(Color.black)
        }
        .padding()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
