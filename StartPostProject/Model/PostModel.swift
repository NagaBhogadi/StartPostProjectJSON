//
//  PostModel.swift
//  StartPostProject
//
//  Created by Naga Rajitha Bhogadi on 6/25/26.
//
import Foundation

// MARK: - Movie Model

struct Post: Decodable {
    
    // MARK: - Properties
    
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

