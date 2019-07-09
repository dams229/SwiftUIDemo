//
//  MeetupsList.swift
//  SwiftUIDemo
//
//  Created by Damien Dorizy on 09/07/2019.
//  Copyright © 2019 Cocoheads. All rights reserved.
//

import SwiftUI
import Combine

class NetworkManager: BindableObject {
    var didChange = PassthroughSubject<NetworkManager, Never>()
    
    var meetups = [Meetup]() {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        self.meetups = meetupData
        loadRemoteData { (meetups: [Meetup]) in
            self.meetups = meetups
        }
    }
}

struct MeetupsList : View {
    @State var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.meetups.identified(by: \.id)) { meetup in
                NavigationLink(destination: MeetupDetail(meetup: meetup)) {
                    MeetupRow(meetup: meetup)
                }
            }
            .navigationBarTitle(Text("Meetups"))
        }
    }
}

#if DEBUG
struct MeetupsList_Previews : PreviewProvider {
    static var previews: some View {
        MeetupsList()
    }
}
#endif
