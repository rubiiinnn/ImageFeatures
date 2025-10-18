//
//  ContentView.swift
//  ImageFeatures
//
//  Created by Rubin Kour on 16/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNo = 0
    
    var body: some View {
        VStack{
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .clipShape(Capsule())
            Button("Show"){
                let m1 = "great"
                let m2 = "waow"
                
                message = (message == m1 ? m1 : m2)
                imageName = (imageName == "image0" ? "image1" : "image2")
                
                //TODO: Update the imageName variable
                //imageName = "image" + String(imageNo)
                imageName = "image\(String(imageNo))"
                
                imageNo += 1; // to print from 0-5
                
                if imageNo>9{
                    imageNo = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
        }
    }
}

#Preview {
    ContentView()
}
