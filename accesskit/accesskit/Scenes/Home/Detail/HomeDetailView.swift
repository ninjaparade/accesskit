//
//  HomeDetailView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct HomeDetailView: View {
    @EnvironmentObject var viewModel: HomeDetailViewModel
    var body: some View {
        Text(viewModel.item)
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailView()
    }
}
