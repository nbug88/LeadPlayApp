//
//  Datamodel.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/29/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//

import SwiftUI
import Combine

final class cohortData: ObservableObject  {
    
    @Published var cohortTitle: [String]
    @Published var cohortDesc: [String]
    
    init() {
        self.cohortTitle = ["Rockerfeller Walker","Stuart Davis","Bond Nobels","Harper Gargoyles"]
        self.cohortDesc = ["You call it 'meditation', but it's more like 'closing your eyes between hitting snooze'. You call it 'lifting weights', but it's more like 'a good excuse to drink Gatorade'. You describe yourself as 'C-type' -- 'C for chill'. Your jokes are often well timed and enjoyed by all. You transcend difficulties in life, by smoothly flowing around them. You eat fortune cookies, but never look at the fortune because of your deep internal confidence. Napping is a skill you practice often, but man oh man, once your internal engine gets going you focus 100%. Maybe even 110%. It's like a lot of focus. So much focus. Buckets of Focus. A whole Ford Focus. But right now, you're snoozing and that's cool. You'll solve P=NP a little later.","You are optimistic and are confident in your ability to change something for the better, whether that is a group, a process, or yourself. It is difficult to label you as an introvert or an extrovert. You have many books that you have been meaning to read, and next week you will start one. When you wake up in the morning, It is hard for you to remember what you dreamed about. You like the sound of rain but do not enjoy getting wet. You are more fearless than the average person, especially in terms of sharing who you are. At the same time, you tend to be very aware of how your actions affect others. You fear that you are not doing enough, but to everyone else, you are!","Your derpy exterior belies the keen bloodhound within, and you have a powerful nose, both for sniffing out people's desires and for finding delicious food. You laugh when you're confused and tilt your head when things are funny. In works of fiction, your favorite characters are the ones who have complex stories, and you enjoy winding subplots. However, you like short sentences. You have always wanted to start a garden. Unfortunately, plants are not as easy to understand as humans, and the last time you took care of a flower, it didn't turn out so well. However, you take very good care of your friends, and they are lucky to have you.","You are warm and good at making anyone's day better. Secretly, you like the idea of being a rebel, but most of the rebelling goes on in your head. You like making flowcharts. You get a rush from finishing everything you have to do for the day, and when you are focused, it takes a lot to break your concentration. Your favorite color has changed many times over the course of your life. It is important to you to have creative outlets and personal independence. Even though much of society values “not trying too hard,” you actually really enjoy people who try very hard. You are highly driven, which is often inspiring to others."]
    }
    
}
