//
//  Post.swift
//  FetchApiJSON
//
//  Created by rido alpredo on 31/12/21.
//

import Foundation
import SwiftUI

struct Post: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var body: String
}
