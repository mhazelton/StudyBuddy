//
//  SetDetailsOptionsSheet.swift
//  StudyBuddy
//
//  Created by Bilash Sarkar on 5/5/25.
//

import SwiftUI

struct SetDetailsOptionsSheet: View {
    var onEdit: () -> Void
    var onDelete: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            Capsule()
                .frame(width: 40, height: 5)
                .foregroundColor(.gray.opacity(0.3))
                .padding(.top, 10)

            Button(action: onEdit) {
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit Set")
                }
                .font(.headline)
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color.pink.opacity(0.2), radius: 3, x: 0, y: 2)
            }

            Button(action: onDelete) {
                HStack {
                    Image(systemName: "trash")
                    Text("Delete Set")
                }
                .font(.headline)
                .foregroundColor(.red)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white)
                .cornerRadius(14)
                .shadow(color: Color.red.opacity(0.2), radius: 3, x: 0, y: 2)
            }

            Spacer()
        }
        .padding()
        .background(Color(red: 1.0, green: 0.85, blue: 0.9)) 
        .cornerRadius(30)
        .ignoresSafeArea(edges: .bottom)
    }
}
