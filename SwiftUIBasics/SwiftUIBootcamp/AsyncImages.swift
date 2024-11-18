//
//  AsyncImages.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

/*
 case empty -> No image is loaded
 case success(Image) -> An Image successfully loaded.
 case failure(Error) -> An Image failed to load with an error
 */

struct AsyncImages: View {
    
    let imageUrl = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(
//            url: imageUrl,
//            content: { returnedImage in
//                returnedImage
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100,height: 100)
//                    .cornerRadius(20)
//            },
//            placeholder: {
//                ProgressView()
//                    .frame(width: 50,height: 50)
//            }
            url: imageUrl,
            content: { phase in
                switch phase{
                case .empty:
                    ProgressView()
                case .success(let amage):
                    amage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100,height: 100)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
        )
        
    }
}

#Preview {
    AsyncImages()
}
