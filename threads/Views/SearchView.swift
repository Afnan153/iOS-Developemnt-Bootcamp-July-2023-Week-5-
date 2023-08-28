//
//  SearchView.swift
//  threads
//
//  Created by afnan althobaiti on 12/02/1445 AH.
//

import SwiftUI

struct SearchView: View {
    @State var searchedText : String = ""
    var body: some View {
        VStack{
            //search field
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Search" , text : $searchedText)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12.5)
                .fill(.gray.opacity(0.25))
            )
            .padding(.horizontal)
            
    //people to follow
            ScrollView{
                ForEach(0..<10, id: \.self){
                    _ in
                 PeopleToFollowComponentView()
                    Divider()
                }
            }
            .padding(.top)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

