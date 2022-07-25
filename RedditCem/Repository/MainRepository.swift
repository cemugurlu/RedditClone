//
//  MainRepository.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 18.07.2022.
//

import SwiftUI

class MainRepository: ObservableObject {
    static let shared = MainRepository()
    
    @Published var postsList: [PostModel] = []
    @Published var isFetching = false
    
    // For Singleton
    private init() {}
    
    func fetchPostsData() {
        isFetching = true
        NetworkService.request {  model in
            self.isFetching = false
            guard let model = model else { return }
            let posts: [PostModel] =  model.data.children.map { postDao in
                return PostModel(dao: postDao.data)
            }
            
            self.postsList.append(contentsOf: posts)
        }
    }
}





