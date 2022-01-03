//
//  ContentView.swift
//  Weather
//
//  Created by Alexis Willey on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
            }.padding(.top, 30)
        } .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.blue.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
