//
//  Library.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 23.12.2022.
//

import SwiftUI

struct Library: View {
    var body: some View {
        NavigationView {
            VStack {
                GeometryReader { geometry in
                    HStack(spacing: 20) {
                        Button {
                            print("12345")
                        } label: {
                            Image(systemName: "play.fill")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .foregroundColor(Color("pink"))
                                .background(Color("tin"))
                                .cornerRadius(10)
                        }
                        Button  {
                            print("54321")
                        } label: {
                            Image(systemName: "arrow.2.circlepath")
                                .frame(width: geometry.size.width / 2 - 10, height: 50)
                                .foregroundColor(Color("pink"))
                                .background(Color("tin"))
                                .cornerRadius(10)
                        }
                    }
                }.padding(1).frame(height: 50)
                Divider().padding(.leading).padding(.trailing)
                List {
                    LibraryCell()
                }
            }
            .navigationBarTitle("Library")
        }
    }
}

struct LibraryCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            VStack {
                Text("Track Name")
                Text("Artist Name")
            }
        }
    }
}


struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
