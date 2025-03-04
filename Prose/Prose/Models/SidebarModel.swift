//
//  SidebarModel.swift
//  Prose
//
//  Created by Valerian Saliou on 11/15/21.
//  Copyright © 2022 Prose. All rights reserved.
//

enum SidebarID: Hashable {
    case unread, replies, directMessages, peopleAndGroups
    case person(id: String)
    case group(id: String)
}

struct SidebarOption: Hashable, Identifiable {
    let id: SidebarID
    let title: String
    let image: String
    let count: UInt16
}
