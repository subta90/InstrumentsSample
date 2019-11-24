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
    
    func countUp(completion: (() -> Void)) {
        count += 1
    }
    
    func countDown(completion: (() -> Void)) {
        count -= 1
    }
    
}

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Button("count up") {
                self.viewModel.countUp {
                    print(self.viewModel.count)
                }
            }
            Button("count down") {
                self.viewModel.countDown {
                    print(self.viewModel.count)
                }
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
