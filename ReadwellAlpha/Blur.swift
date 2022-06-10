//
//  Blur.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/7/22.
//

// used for the blur effect for the audio player 
import SwiftUI

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemChromeMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
