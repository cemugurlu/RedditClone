//
//  PostUserDetailsHeader.swift
//  RedditCem
//
//  Created by Cem Uğurlu on 13.07.2022.
//

import SwiftUI
import Kingfisher

struct PostUserDetailsHeader: View {
    @ObservedObject private var mainRepository = MainRepository.shared
    let post: PostModel
    
    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 10 ) {
            Text("u/\(post.authorNickname)")
            VStack (alignment: .center) {
                Text(".")
                
            }
            Text("\(handleAge(post: post))h")
            Spacer()
            Button(action: {}) {
                Label("Drop down menu", systemImage: "list.bullet")
                    .labelStyle(.iconOnly)
            }
        }
        .font(Font.custom("NotoSans-Medium", size: 12))
        .foregroundColor(Color("userDetailsColor"))

        
    }
    
    
    
    
    //Int(Date().timeIntervalSince1970)
    
    
}

func handleAge(post: PostModel) -> Int {
    let currentDate = Date()
    let timeInterval = currentDate.timeIntervalSince1970
    let currentDateInt = Int(timeInterval)
    let postCreated = Int(post.created)
    return (currentDateInt - postCreated) / 3600 

}

extension Int {
    var msToSeconds: Double { Double(self) / 1000 }
}

struct PostUserDetailsHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostUserDetailsHeader(post: .previewData)
        
    }
}
