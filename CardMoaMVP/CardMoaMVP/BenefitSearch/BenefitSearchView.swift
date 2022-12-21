//
//  BenefitSearchView.swift
//  CardMoaMVP
//
//  Created by 이재희 on 2022/12/20.
//

import SwiftUI

struct BenefitSearchView: View {
    @State private var search = ""
    @State private var view : Int = 0
    @State var searchString : String = ""
    
    let roundRectangle : RoundRectangle = RoundRectangle()
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    TextField("검색어를 입력해주세요", text: $search)
                    Button {
                        // TODO: - 검색버튼 클릭시 새 뷰로 이동, 최근 검색어에 텍스트 추가
                        // 임시용 이전 코드 가져와서 뷰와 연결한 상태 
//                        searchString = search
//                        if search == "파리바게뜨" {
//                            view = 2
//                        } else {
//                            view = 1
//                        }
                    } label: {
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    }
                }.padding().background(Color.lightGray).cornerRadius(10).padding()
                
                //검색결과가 없는 경우
//                if view == 1 {
//                    NoCardResultView(search: $searchString)
//                        .frame(maxHeight: .infinity)
//                } else if view == 2 {
//
//                    CardResultView(search: $searchString)
//                        .frame(maxHeight: .infinity)
//                } else {
//                    BenefitSearchView()
//                        .frame(maxHeight: .infinity)
//                }
                
                ScrollView{
                    HStack {
                        Text("최근 검색어")
                            .font(.title3).padding(.leading, 20).fontWeight(.bold)
                        Spacer()
                        Button {
                            // ???: - 배민 참고해서 만듦, 배민에서는 전체삭제하면 최근검색어hstack자체가 없어지긴 함..! 어떻게 할지?
                        } label: {
                            Text("전체삭제")
                                .font(.subheadline)
                                .padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
                                .background(Color.lightGray)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .padding(.trailing, 20)
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            Button {
                                // 최근검색어에 있는 버튼 클릭시 검색(돋보기)버튼과 같은 맥락
                            } label: {
                                Text("파리바게뜨").modifier(roundRectangle)
//                                Text("롯데월드").modifier(roundRectangle)
//                                Text("교보문고").modifier(roundRectangle)
//                                Text("스타벅스").modifier(roundRectangle)
//                                Text("커피빈").modifier(roundRectangle)
//                                Text("아웃백").modifier(roundRectangle)
                                //                        Text("쿠팡").modifier(roundRectangle)
                                //                        Text("버거킹").modifier(roundRectangle)
                            }
                        }
                    }.padding(.leading)
                    
                    Rectangle().frame(height : 10).foregroundColor(.lightGray).padding([.top])
                    BenefitCategoryView()
                    Spacer()
                }
            }
            .navigationTitle("혜택 검색")
        }
    }
}

struct RoundRectangle : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10)).background(Color.lightPink).cornerRadius(30).foregroundColor(.mainColor).fontWeight(.semibold)
    }
}

struct BenefitSearchView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitSearchView()
    }
}
