////
////  ContentView.swift
////  threads
////
////  Created by afnan althobaiti on 12/02/1445 AH.
////
//
//import SwiftUI
//
//struct RootView: View {
//    @EnvironmentObject var userPreferences: UserPreferencesViewModel
//    var body: some View {
//
//        OnboardingView()
//
//        //        ZStack{
//        //            Image("Threads")
//        //
//        //            VStack{
//        //                Spacer()
//        //                OnboardingView()
//        //                    .padding()
//        //            }
//        //        }
//        //        .padding()
//        //        //        if userPreferences.token.isEmpty {
//        //        //            OnboardingView()
//        //        //        } else {
//        //        //            MainView()
//        //        //        }
//
//
//    }
//}
//
//struct RootView_Previews: PreviewProvider {
//    static var previews: some View {
//        RootView()
//    }
//}

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State var email : String = ""
    @State var  password : String = ""
    @State var  repassword : String = ""
    @State var showAlert: Bool = false
    @State var showNextPage: Bool = false
    
    var body: some View {
        //.padding()
        
        if showNextPage == true{
            Text("new page")
        }
        else {
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .foregroundColor(.blue)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                SecureField("password", text: $password)
                    .padding()
                    .foregroundColor(.blue)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                SecureField("Repassword", text: $repassword)
                    .padding()
                    .foregroundColor(.blue)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                
                if password != repassword
                {
                    Text("not equal")
                        .padding()
                }
             
                
                Button {
                    signUp(email:email , password: password)
                } label: {
                    Text("Sign up")
                        .padding()
                }
            }
        }
    }
    func signUp(email: String , password : String)
    {
      
        Auth.auth().createUser(withEmail: email, password: password)
        { result , error in
            if error != nil {
                print(error!.localizedDescription)
                //showAlert = true
            } else {
                print(result!.description)
                showNextPage = true
            }
        }
    }
    func signIn(email: String , password : String)
    {
        Auth.auth().signIn(withEmail: email, password: password)
        { result , error in
            if error != nil {
                print(error!.localizedDescription)
                //showAlert = true
            }   else {
                print(result!.description)
                showNextPage = true
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
