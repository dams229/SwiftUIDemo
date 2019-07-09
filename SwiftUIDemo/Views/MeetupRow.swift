//
//  MeetupRow.swift
//  SwiftUIDemo
//
//  Created by Damien Dorizy on 09/07/2019.
//  Copyright © 2019 Cocoheads. All rights reserved.
//

import SwiftUI

struct MeetupRow : View {
    var meetup: Meetup

    var body: some View {
        HStack {
            meetup.image(forSize: 50)
            Text(meetup.name)
        }
    }
}

#if DEBUG
struct MeetupRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            MeetupRow(meetup: meetupData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            MeetupRow(meetup: meetupData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
#endif
