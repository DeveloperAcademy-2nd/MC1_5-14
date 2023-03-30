import SwiftUI

@main
struct Ditto: App {
    
    @StateObject var sheetManager = SheetManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(sheetManager)
        }
    }
}
