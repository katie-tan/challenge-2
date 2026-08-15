//
//  FrameHandler.swift
//  challenge 2
//
//  Created by :D on 15/8/26.
//
import AVFoundation
import Combine

class FrameHandler: ObservableObject {
    @Published var frame: CGImage?
    private var permissionGranted = false
    
    
    func checkPermission() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized: // The user has previously granted access to the camera.
            permissionGranted = true
            
        case .notDetermined: // The user has not yet been asked for camera access.
            requestPermission()
            
        // Combine the two other cases into the default case
        default:
            permissionGranted = false
        }
    }


    func requestPermission() {
        // Strong reference not a problem here but might become one in the future.
        AVCaptureDevice.requestAccess(for: .video) { [unowned self] granted in
            self.permissionGranted = granted
        }
    }
}
