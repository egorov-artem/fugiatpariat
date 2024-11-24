struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .modifier(MyTextModifier(alignment: .leading))
    }
}

struct MyTextModifier: ViewModifier {
    var alignment: Alignment

    func body(content: Content) -> some View {
        content.alignmentGuide(alignment.horizontal) { _ in 0 }
    }
}
