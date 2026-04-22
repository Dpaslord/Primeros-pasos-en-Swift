//
//  LabelExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Hello, world!", systemImage: "star.fill")
        Label(title: {Text("Titulo")},
              icon:{Image("swift")
            .resizable()
            .frame(width: 50, height: 50)} )
    }
}

#Preview {
    LabelExample()
}
