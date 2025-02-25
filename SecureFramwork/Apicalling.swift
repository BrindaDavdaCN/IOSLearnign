//
//  Apicalling.swift
//  SecureFramwork
//
//  Created by Brinda Davda on 24/02/25.
//

import Foundation

public class Apicalling {
  
  public static func callApi() {
    
    debugPrint("API CALLED by this URL: \n\(Enviournment.baseURL)")
    
    let request = URLRequest(url: URL(string:Enviournment.baseURL ?? "https://dummy-json.mock.beeceptor.com/posts")!)
    
    URLSession.shared.dataTask(with: request) { data, respons, error in
      if let error = error{
        print("Error: \(error)")
      }else if let data = data{
        print("DATA: \(data)")
        do{
          let json = try JSONSerialization.jsonObject(with: data, options: [])
          print(json)
        }catch{
          print("Error serializing json: \(error)")
        }
      }
    }.resume()
  }
}
