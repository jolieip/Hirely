//
//  TaskView.swift
//  Hirely
//
//  Created by Jolie Ip  on 27/11/2020.
//

import SwiftUI

struct TaskView: View {
    @Binding var taskname : String
    @State private var date = Date()
    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        
        ScrollView{
            
            VStack (alignment: .leading){
                Spacer()
                
                VStack (alignment: .leading, spacing:3) {
                    Text("Task Name")
                    .bold()
                    .font(.headline)

                    TextField("Enter Task Name here", text: $taskname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(20)
            }
                
                    Text("Pick a date")
                    .bold()
                    .font(.headline)
                    .padding(20)
            
                    DatePicker("Enter the date", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .transformEffect(.init(scaleX: 0.8, y: 0.8))
                
                
                    Text("Enter a short description")
                    .bold()
                    .font(.headline)
                    .padding(20)
                    
                    TextView(text: $message, textStyle: $textStyle)
                        .padding(.horizontal)
                        
             
                    Button(action: {
                        self.textStyle = (self.textStyle == .body) ? .title1 : .body
                    }) {
                        Image(systemName: "textformat")
                            .imageScale(.large)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .clipShape(Circle())
             
                }
                   
        }

            
        }
    }
}

struct TextView: UIViewRepresentable {
 
    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle
 
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.delegate = context.coordinator
        textView.font = UIFont.preferredFont(forTextStyle: textStyle)
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = true
 
        return textView
    }
 
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = UIFont.preferredFont(forTextStyle: textStyle)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }
     
    class Coordinator: NSObject, UITextViewDelegate {
        var text: Binding<String>
     
        init(_ text: Binding<String>) {
            self.text = text
        }
     
        func textViewDidChange(_ textView: UITextView) {
            self.text.wrappedValue = textView.text
        }
    }
}

//struct TaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskView()
//    }
//}
