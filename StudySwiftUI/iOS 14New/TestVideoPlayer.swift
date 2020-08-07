//
//  TestVideoPlayer.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI
import AVKit

struct TestVideoPlayer: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "/Users/laiyongpeng/Desktop/StudySwiftUI/StudySwiftUIUITests/IMG_0064.mp4")!)) {
            VStack {
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
            }
        }
    }
}

struct TestVideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        TestVideoPlayer()
    }
}
