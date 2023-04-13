//
//  AccountView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var viewModel: AccountViewModel
    var body: some View {
        Text("Accoun View")
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
