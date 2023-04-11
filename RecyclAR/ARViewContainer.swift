//
//  ARViewContainer.swift
//  RecyclAR
//
//  Created by Soo Bin Park on 4/10/23.
//

import ARKit
import SwiftUI
import RealityKit


/// ARViewContainer holds our AR scenes provided in the Reality Project 
struct ARViewContainer: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        return makeUIViewController(context: context).view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let tapView = TapView()

        let arView = ARView(frame: .zero)
        let cokeAnchor = try! CokeCanExplode.loadCoke()
        
        //let buddhaAnchor = try! CokeCanExplode.loadBuddha()
        //let cokeZeroAnchor = try! CokeCanExplode.loadCokeZero()
        //let speech = cokeAnchor.findEntity(named: "Speech")
        //speech?.isEnabled = false
        //cokeAnchor.notifications.triggerEx01.post()
        arView.scene.anchors.append(cokeAnchor)
        //arView.scene.anchors.append(cokeZeroAnchor)
        //arView.scene.anchors.append(buddhaAnchor)
        viewController.view.addSubview(arView)
        
        arView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arView.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor),
            arView.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor),
            arView.topAnchor.constraint(equalTo: viewController.view.topAnchor),
            arView.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor)
        ])
        
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = arView.session
        coachingOverlay.goal = .horizontalPlane
        arView.addSubview(coachingOverlay)

        let tapHostingController = UIHostingController(rootView: tapView)
        tapHostingController.view.backgroundColor = .clear // Set background color to clear
        tapHostingController.view.translatesAutoresizingMaskIntoConstraints = false
        viewController.addChild(tapHostingController)
        viewController.view.addSubview(tapHostingController.view)
        tapHostingController.didMove(toParent: viewController)
        NSLayoutConstraint.activate([
            tapHostingController.view.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            tapHostingController.view.topAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.topAnchor, constant: 16)
        ])

        return viewController
    }
    
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ARViewContainer()
    }
}
#endif
