//
//  CircleImage.swift
//  LandmarkEx
//
//  Created by j2mni on 2022/11/10.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
