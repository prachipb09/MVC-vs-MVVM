//
//  ViewModel.swift
//  mvc
//
//  Created by Prachi Bharadwaj on 26/08/24.
//

import Foundation

class ViewModel {
    //model is talking with vm
    var model = UserModel(name: "")
    
    //bussiness logic
    func updateLabel(name: String, callback: (String?, Error?)-> Void) async throws {
        let str = "Hello,"
        do {
            try await Task.sleep(nanoseconds: 3_000_000_000)
            callback(str+name, nil)
        } catch {
            callback(nil, error)
        }
    }
}
