//
//  ContentView.swift
//  TrafficLight
//
//  Created by Денис Александров on 30.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var model = TrafficLightModel()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Circle()
                    .foregroundColor(.red)
                    .opacity(model.currentLight == .red ? 1.0 : 0.3)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .frame(width: 100, height: 100)
                    .padding()

                Circle()
                    .foregroundColor(.yellow)
                    .opacity(model.currentLight == .yellow ? 1.0 : 0.3)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .frame(width: 100, height: 100)
                    .padding()

                Circle()
                    .foregroundColor(.green)
                    .opacity(model.currentLight == .green ? 1.0 : 0.3)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .frame(width: 100, height: 100)
                    .padding()

                Spacer()

                Button(action: {
                    model.nextLight()
                }) {
                    Text("NEXT")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 60)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 4)
                            )
                }
                .padding(.bottom, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    ContentView()
}
