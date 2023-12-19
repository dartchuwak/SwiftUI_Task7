//
//  ContentView.swift
//  SwiftUI_task7
//
//  Created by Evgenii Mikhailov on 17.12.2023.
//
import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false

    var body: some View {
        HStack {
            VStack {
                ZStack {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            isExpanded.toggle()
                        }
                    }, label: {
                        HStack {
                            Image(systemName: "arrowshape.backward.fill")
                                .foregroundStyle(Color.white)
                            Text("Back")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundStyle(Color.white)
                        }
                        .padding()
                    })
                    .opacity(isExpanded ? 1 : 0)

                    Button(action: {
                        withAnimation(.easeInOut) {
                            isExpanded.toggle()
                        }
                    }, label: {
                        Text("Open")
                            .foregroundStyle(Color.white)
                    })
                    .opacity(isExpanded ? 0 : 1)
                }
                Spacer().frame( height:  isExpanded ? 200 : 0)
            }
            Spacer().frame( width: isExpanded ? 200 : 0)
        }
        .background(Color.blue)
        .cornerRadius(20)
        .position(x: isExpanded ? UIScreen.main.bounds.width/2 : UIScreen.main.bounds.width - 100,
                  y: isExpanded ? UIScreen.main.bounds.height/2 : UIScreen.main.bounds.height - 150)
    }
}


#Preview {
    ContentView()
}
