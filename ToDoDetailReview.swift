//
//  ToDoDetailReview.swift
//  ToDo_Unit8
//
//  Created by rama ୨୧ on 29/07/2023.
//

import SwiftUI

struct ToDoDetailReview: View {
    @Binding var todo: Todo

    var body: some View {
        Form {
            TextField("Title", text: $todo.title)
            TextField("Subtitle", text: $todo.subtitle)
                .foregroundColor(.gray)
            Toggle("Completed?", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo Detail")
    }
}
struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailReview(todo: .constant(Todo(title: "Feed demo cat")))
    }
}
