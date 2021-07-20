//
//  ContentView.swift
//  learnSwift
//
//  Created by Aditya Patel on 19/07/21.
//  Copyright © 2021 AdityaPatel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
                .bold()
                .font(.title)
        Text("Hello, World!")
                .bold()
                .font(.title)


        .eraseToAnyView()
    }

    #if DEBUG
    @ObservedObject var iO = injectionObserver
    #endif
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
