//
//  LocationsView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var viewModel: LocationsViewModel
    var body: some View {
        Text("Locations View")
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
