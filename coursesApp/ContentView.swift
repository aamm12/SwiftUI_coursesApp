//
//  ContentView.swift
//  coursesApp
//
//  Created by Amit Levinzon on 06/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var mockTest : [MockTest] = MockTestList.LCOTest
    var body: some View {
        
        NavigationView{
            
            
            List(mockTest, id: \.id){ mt in
                NavigationLink(
                    destination: MockTestDetailView(mockTest: mt),
                    label: {
                        Image(mt.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 90)
                            .padding(.horizontal, 7)
                        VStack(alignment: .leading, spacing: 10){
                            Text(mt.title)
                                .fontWeight(.medium)
                                .font(.headline)
                            Text("\(mt.sellPrice)$")
                                .fontWeight(.medium)
                                .font(.subheadline)
                        }
                    })
            }.navigationTitle("Courses")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
