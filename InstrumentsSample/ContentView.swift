//
//  ContentView.swift
//  InstrumentsSample
//
//  Created by subta on 2019/11/23.
//  Copyright © 2019 subta. All rights reserved.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var count: Int = 0
}

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Button("count up") {
                self.viewModel.count += 1
            }
            Text(viewModel.count.description)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
