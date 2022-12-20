//
//  LandmarkList.swift
//  LandmarkEx
//
//  Created by j2mni on 2022/11/10.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
