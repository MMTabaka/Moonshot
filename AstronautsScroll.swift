//
//  AstronautsScroll.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 16/04/2022.
//

import SwiftUI

struct AstronautsScroll: View {
    let crew: [CrewMember]
    let mission: Mission
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 0.3)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding(.bottom, 0.5)
                                
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .padding(.bottom, 20)
    }
}

//struct AstronautsScroll_Previews: PreviewProvider {
//    static var previews: some View {
//        AstronautsScroll()
//    }
//}
