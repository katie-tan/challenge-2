//
//  CameraView.swift
//  challenge 2
//
//  Created by :D on 15/8/26.
//
import SwiftUI
import RealityKit

struct CameraView : View {
    var image: CGImage?
    private let label = Text("Frame ")
    var body: some View {
        if let image = image{
            Image(image, scale: 1.0)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

