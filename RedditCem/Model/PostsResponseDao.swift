//
//  RedditPostsDao.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 13.07.2022.
//


import Foundation

struct PostsResponseDao: Codable {
    let data: PostDataDao
}


struct PostDataDao: Codable {
    let children: [PostDao]
    let before: String

    enum CodingKeys: String, CodingKey {
        case children, before
    }
}

struct PostDao: Codable {
    let data: PostDetailDao
}

struct PostDetailDao: Codable {
    let subreddit, selfText, authorNickname: String
    let title: String
    let numComments: Int
    let downs: Int
    let name: String
    let ups: Int
    let created: Int
    let createdUTC: Int
    let linkFlairText: String
    let thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case subreddit = "subreddit"
        case selfText =  "selftext"
        case authorNickname = "author"
        case title = "title"
        case numComments = "num_comments"
        case downs = "downs"
        case name = "name"
        case ups = "ups"
        case created = "created"
        case createdUTC = "created_utc"
        case linkFlairText = "link_flair_text"
        case thumbnailURL = "thumbnail"
    }
}




