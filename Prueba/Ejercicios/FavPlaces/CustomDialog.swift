//
//  CustomDialog.swift
//  Prueba
// Lorenzo on 22/04/2026.
//

import SwiftUI

struct CustomDialog<Content: View>: View {
    
    let closeDialog: () -> Void
    let onDimissOutside: Bool
    let content: Content
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(.gray.opacity(0.7))
                    .ignoresSafeArea()
                    .onTapGesture {
                        if onDimissOutside {
                            withAnimation {
                                closeDialog()
                            }
                        }
                    }
                
                content
                    .frame(width: geometry.size.width - 100, height: 300)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .overlay(alignment: .topTrailing) {
                        Button(action: {
                            withAnimation {
                                closeDialog()
                            }
                        }, label: {
                            Image(systemName: "xmark.circle")
                        })
                        .foregroundColor(Color.gray)
                        .padding(16)
                    }
            }
            .ignoresSafeArea()
            .frame(
                width: geometry.size.width,
                height: geometry.size.height,
                alignment: .center
            )
        }
    }
}
