//
//  DataDecoder.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

func decoder<T:Decodable>(fileName:String) -> [T]?{
    let url = Bundle.main.url(forResource: fileName, withExtension: "json")!
    let data = try! Data(contentsOf: url)
    if let newData = try? JSONDecoder().decode([T].self, from: data) {return newData}
    return nil
}

func decoderWithoutErrorHandling<T:Decodable>(fileName:String) throws -> [T]{
    let url = Bundle.main.url(forResource: fileName, withExtension: "json")!
    let data = try! Data(contentsOf: url)
    return try! JSONDecoder().decode([T].self, from: data)
}
