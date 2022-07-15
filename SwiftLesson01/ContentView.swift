//
//  ContentView.swift
//  SwiftLesson01
//
//  Created by fachru dahri on 16/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PersonView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // ZStack for stacking component
        ZStack {
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            //add spacing each component 20
            VStack(spacing:20) {
                LogoView()
                FormBoxView()
            }
            .padding(.all,20)
        }
    }
}

//component icon person
struct PersonView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color("MyColor"))
            .foregroundColor(Color.white)
            .padding()
            .background(Color("MyColor"))
            .cornerRadius(20)
    }
}


//component thumbnail image
struct ThumbnailView: View {
    var body: some View {
        Image("sosis")
            .resizable()
            .frame(width: 100, height: 100)
            .background(Color("MyColor"))
            .foregroundColor(Color.white)
            .padding()
            .background(Color("MyColor"))
            .cornerRadius(20)
    }
}

//compoenent Logo with VStack
struct LogoView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color("MyColor"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("MyColor"))
                .cornerRadius(20)
            
            Text("Hello User")
                .foregroundColor(Color.white)
                .shadow(color: Color.black, radius: 2, x:5, y: 5)
        }
    }
}

//component Form with VStack
struct FormBoxView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("Username")
                .font(.callout).bold()
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password")
                .font(.callout).bold()
            TextField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello World")}) {
                HStack(alignment:.center) {
                    Text("Sign In")
                    // for full width button
                    Spacer()
                }
                
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(Color.white)
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
    }
}
