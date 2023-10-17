//
//  kLazyVStack_PinnedViews.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 10/17/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct kLazyVStack_PinnedViews: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStck",
                       subtitle: "With ScrollView",
                       desc: "The LazyVStack is best used with many views that scroll off the scree. \"Lazy\" means views off the screen are not created unless shown.  This increases performance.")
            
            ScrollView {
                LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            TeamVerticalHeaderView(team: team)
                        } footer: {
                            TeamVerticalFooterView(team: team)
                        }
                    }
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    kLazyVStack_PinnedViews()
}
