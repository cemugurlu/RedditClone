//
//  RedditNetworkService.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 18.07.2022.
//

import Foundation
import Alamofire

struct NetworkService {
    static func request(completion: @escaping (PostsResponseDao?) -> Void) {
        AF.request("https://www.reddit.com/r/flutterdev/top.json?count=20").responseDecodable(of: PostsResponseDao.self) { response in
            completion(response.value)
        }
    }
}


