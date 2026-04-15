//
//  ImageExample.swift
//  Prueba
//
//  Created by David Pascual Lorenzo on 15/04/2026.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swift")
            .resizable()
            .frame(width: 200, height: 200)
        Image(systemName: "figure.walk")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
    }
}

#Preview {
    ImageExample()
}
