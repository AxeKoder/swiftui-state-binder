//
//  MyTextView.swift
//  SwiftUIApp01
//
//  Created by Daeho Park on 2022/03/06.
//

import SwiftUI

struct MyTextView: View {
    
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    @State private var index: Int = 0
    
    private let bgColors: [Color] = [
        .red,
        .yellow,
        .blue,
        .green,
        .orange
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("배경 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? .yellow : .gray)
                .background(.black)
            
            Spacer()
        }
        .background(bgColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("Background Tap")
                
            if(self.index == self.bgColors.count - 1) {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
