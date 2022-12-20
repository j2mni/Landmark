//
//  InfoView.swift
//  LandmarkEx
//
//  Created by j2mni on 2022/11/10.
//

import SwiftUI

struct InfoView: View {
    var landmark:Landmark
    var body: some View {
        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)
            HStack{
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }
            .foregroundColor(.secondary)
            Divider()
            Text("About \(landmark.name)")
                .font(.title2)
                .padding(.bottom, 3)
            Text(landmark.description)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(landmark: landmarks[0])
    }
}
