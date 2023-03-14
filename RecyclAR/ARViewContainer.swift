//
//  ARViewContainer.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer, Soo Bin Park on 2/28/23.
//

import SwiftUI
import RealityKit


/// ARViewContainer holds our AR scenes provided in the Reality Project 
struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the scenes from reality file
        let buddhaAnchor = try! CokeCanExplode.loadBuddha()
        let cokeZeroAnchor = try! CokeCanExplode.loadCokeZero()
        let cokeAnchor = try! CokeCanExplode.loadCoke()
        let speech = cokeAnchor.findEntity(named: "Speech")
        
        speech?.isEnabled = false
        
        
        
        cokeAnchor.notifications.triggerEx01.post() //trigger action sequence
        
        /// Configure how we behave when certain actions are triggered
//        cokeAnchor.actions.explode.onAction = { _ in
//            self.doSomething()
//        }
        
        // Add the coke, coke zero and buddha anchor to the scene
        arView.scene.anchors.append(cokeAnchor)
        arView.scene.anchors.append(cokeZeroAnchor)
        arView.scene.anchors.append(buddhaAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ARViewContainer()
    }
}
#endif
