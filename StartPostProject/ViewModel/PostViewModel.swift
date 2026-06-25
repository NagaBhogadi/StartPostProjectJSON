//
//  PostViewModel.swift
//  StartPostProject
//
//  Created by Naga Rajitha Bhogadi on 6/25/26.
//
import Foundation

protocol ProductViewModelProtocol: AnyObject {
    func fetchProducts(completion: @escaping() -> Void)
    func numberOfPost()-> Int
    func post(at index: Int) -> Post
    func SearchPost(with searchText: String)
    
}

class ProductViewModel: ProductViewModelProtocol {
    
    // MARK: - Properties
    
    private var products: [Post] = []
    private var filteredPosts: [Post] = []
  
    
    // MARK: - API Call
    
    func fetchProducts(completion: @escaping() -> Void) {
        
        NetworkManager.shared.fetchDataFrom(serverUrl: APIConstants.smartphonesURL){
            [weak self] fetchedProducts in
            guard let self = self else { return }
            self.products = fetchedProducts
            self.filteredPosts = fetchedProducts
            completion()
        }
    }
    
    // MARK: - Helper Methods
    
    func numberOfPost() -> Int {
        return filteredPosts.count
    }
    func post(at index: Int) -> Post {
        return filteredPosts[index]
    }
    //    MARK: - Search Bar Function
        
         func SearchPost(with searchText: String) {
            if searchText.isEmpty {
                filteredPosts = products
            } else {
                filteredPosts = products.filter {post in
                    let userIdText = "\(post.userId)"
                    let idText = "\(post.id)"
                    
                    return userIdText.localizedCaseInsensitiveContains(searchText) ||
                    idText.localizedCaseInsensitiveContains(searchText) ||
                    post.title.localizedCaseInsensitiveContains(searchText) ||
                    post.body.localizedCaseInsensitiveContains(searchText)}
                }
        }

        
}


