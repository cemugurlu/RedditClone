//
//  PostModel.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 13.07.2022.
//

import Foundation

struct PostModel: Identifiable {
    let id = UUID()
    var title: String
    var subredditTitle: String
    var selfText: String
    var authorNickname: String
    var voteCount: Int
    var commentCount: Int
    var created: Int
    var createdUTC: Int
    var linkFlairText: String
    var postType: PostType
    var thumbnailURL: String
    
    static var previewData: PostModel {
        return .init(title: "Rad - A frontend framework inspired from Flutter &amp; React",
                     subredditTitle: "subredditTitleDefault",
                     selfText: "Hello everyone! It's been a while since I first posted about [rad](https://www.reddit.com/r/dartlang/comments/tpf0zl/rad_a_web_framework_for_dart/). If you haven't seen it yet, Rad is a zero-dependency framework for creating web apps. It has all the best bits of Flutter(widgets) &amp; React(performance), and best of all, it's written in 100% Dart, which means you can use your favorite language to create frontends for the web. I appreciate all the feedback I got when I first posted about it. Since then, a lot of work has been done on the architecture and features to make it usable for production. Stable release will be available in a week(I won't spam about it here). I'm just sharing it now in-case anyone wants to try it out before stable release gets out and if you have any suggestions/issues feel free to comment here, or use [GH isssues](https://github.com/erlage/rad/issues) or [email](mailto:eralge.inc@gmail.com). ### Quick links: - [Package](https://pub.dev/packages/rad) - [Repository](https://github.com/erlage/rad) - [Benchmarks](https://github.com/erlage/rad-benchmarks) Thanks for reading! ",
                     authorNickname: "authorNameDefault",
                     voteCount: 20,
                     commentCount: 5,
                     created: 4,
                     createdUTC: 3,
                     linkFlairText: "Dart",
                     postType: .discussion,
                     thumbnailURL: "https://b.thumbs.redditmedia.com/frxJM9qsXrCzYpLnPThaV2qZpj2iDbH-XuhTtyjAlnQ.jpg"
                    )
    }
    
}


extension PostModel {
    init(dao: PostDetailDao) {
        self.title = dao.title
        self.subredditTitle = dao.subreddit
        self.selfText = dao.selfText
        self.authorNickname = dao.authorNickname
        self.linkFlairText = dao.linkFlairText
        self.voteCount = dao.ups - dao.downs
        self.commentCount =  dao.numComments
        self.created = dao.created
        self.createdUTC = dao.createdUTC
        let postType = PostType(rawValue: dao.linkFlairText)
        self.postType = postType ?? .community
        self.thumbnailURL = dao.thumbnailURL
        
    }
    
    
//        func getElapsedTime(dao: PostDetailDao) {
//            let elapsedTime = Int(Date().timeIntervalSince1970) - dao.createdUTC
//            print("AHDAAHUHUAUHAUDUUASDGF\(elapsedTime)")
//    
//        }
    

    
}








