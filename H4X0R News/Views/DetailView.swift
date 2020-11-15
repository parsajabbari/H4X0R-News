//
//  DetailView.swift
//  H4X0R News
//
//  Created by Parsa Jabbari on 11/13/20.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
            .previewLayout(.sizeThatFits)
    }
}


