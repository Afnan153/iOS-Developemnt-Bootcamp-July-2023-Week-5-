//
//  UserPrefrencesViewModel.swift
//  threads
//
//  Created by afnan althobaiti on 12/02/1445 AH.
//

import Foundation
import SwiftUI


class UserPreferencesViewModel: ObservableObject{
    @AppStorage("userSessionToken") var token: String = ""
}
