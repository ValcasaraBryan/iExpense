//
//  ContentView.swift
//  iExpense
//
//  Created by valcasara-bryan on 07/06/2024.
//
import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String

    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: {
            SecondView(name: "@twostraws")
        })
    }
}

#Preview {
    ContentView()
}
