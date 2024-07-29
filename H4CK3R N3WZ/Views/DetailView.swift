//
//  DetailView.swift
//  H4CK3R N3WZ
//
//  Created by Nathaniel Baez on 7/9/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


