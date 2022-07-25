//
//  PostBodyView.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 14.07.2022.
//

import SwiftUI
import Kingfisher

struct PostBodyView: View {
    let post: PostModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack (alignment: .top, spacing: 15) {
                VStack (alignment: .leading) {
                    Text(post.title)
                        .font(Font.custom("NotoSans-SemiBold", size: 17))
                        .fixedSize(horizontal: false, vertical: true)

                    PostCategoryBox(post: post)
                    
                }
                
                Spacer()
                
                if (post.thumbnailURL != "self" ) {
                    KFImage(URL(string: post.thumbnailURL))
                }
            }
            
            Text(post.selfText)
                .font(Font.custom("NotoSans-Light", size: 12))
                .foregroundColor(Color("selfTextColor"))
                .lineLimit(3)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(Font.custom("verdana", size: 11))
        
    }
}

struct PostBodyView_Previews: PreviewProvider {
    static var previews: some View {
        PostBodyView(post: .previewData)
    }
}
