//
//  HomeView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    let items = ["Test 1", "Test 2", "Test 3"]
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Image(systemName: "car")
                Text(item)
            }
            .onTapGesture {
                viewModel.didTap(on: item)
            }
        }
        .listStyle(.plain)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
