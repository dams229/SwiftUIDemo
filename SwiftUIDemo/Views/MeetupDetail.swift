//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Damien Dorizy on 09/07/2019.
//  Copyright © 2019 Cocoheads. All rights reserved.
//

import SwiftUI

struct MeetupDetail : View {
    var meetup: Meetup

    var body: some View {
        VStack {
            MapView(coordinate: meetup.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: meetup.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(meetup.name)
                        .font(.title)
                        .color(.red)
                        .lineLimit(2)
                    Text(meetup.subtitle)
                        .font(.subheadline)
                }
                .padding()
                Spacer()
            }
            
            Spacer()
        }
    }
}

#if DEBUG
struct MeetupDetail_Previews : PreviewProvider {
    static var previews: some View {
        MeetupDetail(meetup: meetupData[0])
    }
}
#endif
