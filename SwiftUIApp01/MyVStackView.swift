//
//  MyVStackView.swift
//  SwiftUIApp01
//
//  Created by Daeho Park on 2022/03/06.
//

import SwiftUI


struct MyVStackView: View {
    
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(self.isActivated ? .green : .gray)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
