//
//  MockTestDetailView.swift
//  coursesApp
//
//  Created by Amit Levinzon on 07/07/2021.
//

import SwiftUI

struct MockTestDetailView: View {
    var mockTest: MockTest
    var body: some View {
        VStack{
            Image(mockTest.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 210)
                .cornerRadius(12.0)
            Text(mockTest.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 4)
            HStack(spacing: 60){
                Text("$\(mockTest.sellPrice)")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.green)
                Text("$\(mockTest.originalPrice)")
                    .font(.title3)
                    .strikethrough()
                    .padding(.vertical, 10)
            }
            HStack(spacing: 60){
                VStack{
                    Text("360")
                        .font(.title)
                        .bold()
                    Text("MARKS")
                }
                VStack{
                    Text("180")
                        .font(.title)
                        .bold()
                    Text("Minutes")
                }
                VStack{
                    Text("220")
                        .font(.title)
                        .bold()
                    Text("Questions")
                }
            }
            Text(mockTest.description)
                .padding()
            Spacer()
            Link(destination: mockTest.Url, label: {
                Text("Enroll Now")
                    .frame(width: 320, height: 40)
                    .background(Color(.systemGreen))
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
            })
        }
    }
}

struct MockTestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MockTestDetailView(mockTest: MockTestList.LCOTest[3])
    }
}
