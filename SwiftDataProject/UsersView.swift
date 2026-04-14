//
//  UsersView.swift
//  SwiftDataProject
//
//  Created by GraphEdge on 2026/03/29.
//

import SwiftData
import SwiftUI

struct UsersView: View {
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
    
    init(minimumJoinData: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinData
        }, sort: sortOrder)
    }
}

#Preview {
    UsersView(minimumJoinData: .now, sortOrder: [SortDescriptor(\User.name)])
        .modelContainer(for: User.self)
}
