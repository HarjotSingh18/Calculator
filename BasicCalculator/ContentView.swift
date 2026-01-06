//
//  ContentView.swift
//  BasicCalculator
//
//  Created by Harjot Singh on 1/1/26.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        "7", "8", "9", "+",
        "4", "5", "6", "-",
        "1", "2", "3", "*",
        "0", ".", "=", "/"
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 20) {
            
            ForEach(buttons, id: \.self) { label in
                Button(action: {
                    print("\(label) tapped")
                }) {
                    Text(label)
                    .font(.title)
                    .frame(width: 80, height: 80)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .clipShape(Circle())
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
