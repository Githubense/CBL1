//
//  ContentView.swift
//  CBL1
//
//  Created by Angel Adrian Pimienta Flores on 09/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animateGradient: Bool = false
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationStack {
            VStack {
                
                ZStack {
                    AngularGradient(
                        colors: [Color.blueApp, Color.redApp, Color.yellowApp, Color.greenApp, Color.blueApp],
                        center: .center,
                        angle: .degrees(animateGradient ? 0 : 360)
                    )
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 5)
                    .onAppear {
                        withAnimation(.smooth(duration: 1.5).repeatForever(autoreverses: false)) {
                            animateGradient.toggle()
                        }
                    }
                    .mask(
                        Logo()
                            .frame(width: 154.5, height: 227.59)
                    )
                    
                    AngularGradient(
                        colors: [Color.redApp.opacity(0), Color.darkRedApp.opacity(0.3), Color.yellowApp.opacity(0), Color.greenApp.opacity(0), Color.blueApp.opacity(0)],
                        center: .center,
                        angle: .degrees(0)
                    )
                    .mask(
                        Logo()
                            .frame(width: 154.5, height: 227.59)
                    )
                }
                
                // Test Button
                
                Spacer()
                
            }
            .ignoresSafeArea()
            .background(.background)
        }
    }
        
}

struct Logo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99677*width, y: 0.50442*height))
        path.addCurve(to: CGPoint(x: 0.51935*width, y: 0.85142*height), control1: CGPoint(x: 0.99677*width, y: 0.65581*height), control2: CGPoint(x: 0.51935*width, y: 1.27738*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.50442*height), control1: CGPoint(x: 0.51935*width, y: 0.56634*height), control2: CGPoint(x: 0, y: 0.82459*height))
        path.addCurve(to: CGPoint(x: 0.51935*width, y: 0.28293*height), control1: CGPoint(x: 0, y: 0.25003*height), control2: CGPoint(x: 0.82581*width, y: -0.35523*height))
        path.addCurve(to: CGPoint(x: 0.99677*width, y: 0.50442*height), control1: CGPoint(x: 0.8871*width, y: 0.28293*height), control2: CGPoint(x: 0.99677*width, y: 0.35302*height))
        path.closeSubpath()
        return path
    }
}
#Preview {
    ContentView()
}
