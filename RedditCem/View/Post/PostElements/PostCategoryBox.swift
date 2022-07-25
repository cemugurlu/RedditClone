//
//  LinkFlairBackground.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 14.07.2022.
//

import SwiftUI

struct PostCategoryBox: View {
    
    let post: PostModel
    
    var body: some View {
        Text(post.linkFlairText)
            .font(Font.custom("NotoSans-SemiBold", size: 12))
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .padding(6)
            .background(getBoxColor(post: post))
            .frame(height: 20)
            .cornerRadius(10)
    }
    
    func getBoxColor(post: PostModel) -> Color {
        switch post.postType {
        case .dart:
            return Color("dartColor")
        case .discussion:
            return Color("discussionColor")
        case .video:
            return Color("videoColor")
        case .article:
            return Color("articleColor")
        case .community:
            return Color("communityColor")
        default:
            return .red
        }
    }
}

struct PostCategoryBox_Previews: PreviewProvider {
    static var previews: some View {
        PostCategoryBox(post: .previewData)
            .padding(60)
            .background(Color.black)
    }
}
