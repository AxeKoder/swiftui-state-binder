//
//  ContentView.swift
//  SwiftUIApp01
//
//  Created by Daeho Park on 2022/03/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 40.0 : 10.0)
                .background(isActivated ? .yellow : .black)
                .onTapGesture {
                    print("HStack tap")
                    
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    
                } .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12 Pro")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
