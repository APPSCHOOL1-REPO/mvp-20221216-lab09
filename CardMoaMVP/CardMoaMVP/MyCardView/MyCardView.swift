//
//  MyCardView.swift
//  CardMoaMVP
//
//  Created by 장다영 on 2022/12/20.
//

import SwiftUI

struct MyCardView: View {
    
    @State private var segmentationSelection = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        SegmentedControlView(currentTab: $segmentationSelection)
                            //.padding(.leading)
                        Spacer()
                    }
                    CardPagingView()
                }
                .padding(.bottom, 20)
                HStack {
                    Spacer()
                    NavigationLink {
                        AddMyCardView()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .shadow(radius: 5, x:5, y:5)
                            .foregroundColor(.mainColor)
                            
                    }
                }
                .padding(.trailing, 20)
                .offset(y: 240)
                .navigationTitle("다영님이 소유한 카드")
                .toolbar {
                    Button {
                    } label: {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35)
                            .foregroundColor(.yellow)
                            .padding(.trailing, 8)
                    }
                }

            }
            
        }
        
    }
    
}

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
    }
}