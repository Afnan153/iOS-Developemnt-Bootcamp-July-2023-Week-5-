//
//  UserModel.swift
//  threads
//
//  Created by afnan althobaiti on 12/02/1445 AH.
//

import Foundation
import SwiftUI

struct UserModel : Identifiable {
    typealias ID = UUID
    let id: UUID = .init()
    var username: String
    var fullname: Optional<String>
    var bio:  Optional<String>
    var image:Optional <URL>
    var followers: Array<UserModel.ID>
    var following: Array<UserModel.ID>
    var posts: Array<PostModel.ID>
}
