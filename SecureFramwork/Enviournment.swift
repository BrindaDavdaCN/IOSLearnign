//
//  Enviournment.swift
//  SecureFramwork
//
//  Created by Brinda Davda on 24/02/25.
//

import Foundation

struct Enviournment {
  
  static let baseURL: String? = {
    return Bundle(for: Apicalling.self).infoDictionary?["BASE_URL"] as? String
  }()
}
