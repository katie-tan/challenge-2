//
//  ContentView.swift
//  challenge 2
//
//  Created by :D on 15/8/26.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @StateObject private var model = FrameHandler()
    var body: some View {
        FrameView(image: model.frame)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
