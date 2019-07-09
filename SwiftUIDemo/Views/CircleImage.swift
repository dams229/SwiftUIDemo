//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Damien Dorizy on 09/07/2019.
//  Copyright © 2019 Cocoheads. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image.resizable().frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct SwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("cocoaheads"))
    }
}
#endif
