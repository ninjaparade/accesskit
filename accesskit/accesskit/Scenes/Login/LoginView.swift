//
//  LoginView.swift
//  accesskit
//
//  Created by user239070 on 4/13/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: LoginViewModel
    var body: some View {
        VStack {
            Text("Login View")
                .font(.headline)
            Button("Next") {
                viewModel.didTapNextButton()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
