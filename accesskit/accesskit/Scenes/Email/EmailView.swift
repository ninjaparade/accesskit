//
//  EmailView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct EmailView: View {
    @EnvironmentObject var viewModel: EmailViewModel
    var body: some View {
        Text("Email View")
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
