//
//  MapViewActionButtom.swift
//  UberSwiftTutorial
//
//  Created by ZIHAN DONG on 12/5/22.
//

import SwiftUI


struct MapViewActionButtom: View {
    @Binding var showLocationSearchView:Bool
    
    var body: some View {
        Button {
            withAnimation(.spring()){
                showLocationSearchView.toggle()
            }
        } label: {
            Image(systemName: showLocationSearchView ? "arrow.left" : "line.3.horizontal")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
            
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct MapViewActionButtom_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButtom(showLocationSearchView: .constant(true))
    }
}
