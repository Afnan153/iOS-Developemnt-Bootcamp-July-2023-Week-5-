//
//  AuthViewModel.swift
//  threads
//
//  Created by afnan althobaiti on 12/02/1445 AH.
//

import Foundation
import SwiftUI

class AuthViewModel: ObservableObject {
    @AppStorage ("currentUserId") var currentUserId : String = ""
    func signIn(_ id: UserModel.ID) -> Bool {
        currentUserId = id.uuidString
        return true
    }
    
    func signOut() {
      currentUserId = ""
        
    }
    func reset() {
        currentUserId = ""
        
    }
}
