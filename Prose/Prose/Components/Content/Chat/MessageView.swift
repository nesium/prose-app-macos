//
//  MessageView.swift
//  Prose
//
//  Created by Valerian Saliou on 11/21/21.
//

import SwiftUI

struct MessageViewModel {
    let senderId: String
    let senderName: String
    let avatar: String
    let content: String
    let timestamp: Date
}

extension MessageViewModel: Identifiable {
    var id: String { "\(senderId)_\(timestamp.ISO8601Format())" }
}

struct MessageView: View {
    let model: MessageViewModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Avatar(model.avatar, size: 32)
            
            VStack(alignment: .leading, spacing: 3) {
                HStack(alignment: .firstTextBaseline) {
                    Text(model.senderName)
                        .font(.system(size: 13).bold())
                        .foregroundColor(.textPrimary)
                    
                    Text(model.timestamp, format: .relative(presentation: .numeric))
                        .font(.system(size: 11.5))
                        .foregroundColor(.textSecondary)
                }
                
                Text(model.content)
                    .font(.system(size: 12.5))
                    .fontWeight(.regular)
                    .foregroundColor(.textPrimary)
            }
            .textSelection(.enabled)
            
            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MessageView(model: .init(
                senderId: "id-valerian",
                senderName: "Valerian",
                avatar: PreviewImages.Avatars.valerian.rawValue,
                content: "Hello world, this is a message content!",
                timestamp: .now - 10_000
            ))
            MessageView(model: .init(
                senderId: "id-valerian",
                senderName: "Valerian",
                avatar: PreviewImages.Avatars.valerian.rawValue,
                content: Array(repeating: "Hello world, this is a message content!", count: 5).joined(separator: " "),
                timestamp: .now - 1_000
            ))
                .frame(width: 500)
            MessageView(model: .init(
                senderId: "id-unknown",
                senderName: "Unknown",
                avatar: "",
                content: "Unknown",
                timestamp: .now - 500
            ))
                .preferredColorScheme(.light)
            MessageView(model: .init(
                senderId: "id-unknown",
                senderName: "Unknown",
                avatar: "",
                content: "Unknown",
                timestamp: .now - 50
            ))
                .preferredColorScheme(.dark)
        }
//            .border(Color.green)
            .padding()
    }
}
