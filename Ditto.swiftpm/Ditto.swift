import SwiftUI

@main
struct Ditto: App {
    
    @EnvironmentObject var data: Data
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Data())
        }
    }
}
