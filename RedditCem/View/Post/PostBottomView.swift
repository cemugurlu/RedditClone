//
//  PostBottomView.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 13.07.2022.
//

import SwiftUI

struct PostBottomView: View {
    
    let post: PostModel
    
    var body: some View {
        HStack (spacing: 7) {
            
            HStack {
                Button(action: {}) {
                    Label("Upvote", systemImage: "arrow.up")
                        .labelStyle(.iconOnly)
                }
                
                Text("\(post.voteCount)")
                
                Button(action: {}) {
                    Label("Downvote", systemImage: "arrow.down")
                        .labelStyle(.iconOnly)
                }
            }
            
            Spacer()
            
            HStack {
                
                Button(action: {}) {
                    Label("Comments", systemImage: "text.bubble")
                        .labelStyle(.iconOnly)
                }

                Text("\(post.commentCount)")
                
            }
            
            Spacer()
            
            
            Button(action: {}) {
                Label("Share", systemImage: "square.and.arrow.up")
                
            }
            
            Spacer()
            
            Button(action: {}) {
                Label("Award", systemImage: "gift")
                
            }
        }
        .font(Font.custom("NotoSans-Medium", size: 15))
        .foregroundColor(Color("userDetailsColor"))

        
    }
    
    
    
}






struct PostBottomView_Previews: PreviewProvider {
    static var previews: some View {
        PostBottomView(post: .previewData)
    }
}
