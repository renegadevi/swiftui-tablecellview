//
//  ContentView.swift
//
//  Created by Philip Andersen on 2019-09-28.
//  Copyright © 2019 Philip Andersen. All rights reserved.
//
//  Published under the MIT License. See LICENSE file.
//

import SwiftUI


// Example of use.
struct TableCellContentView: View {
    var body: some View {

        List{
            Section(header: Text("Examples of text cells")) {
                TableCellView(title: "Title")
                TableCellView(title: "Title", detail: "Detail")
                TableCellView(title: "Title", subtitle: "Subtitle")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .italic, subtitle: "Subtitle", detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .boldItalic, subtitle: "Subtitle", detail: "Detail")
            }
            Section(header: Text("Examples using a SystemName icon")) {
                TableCellView(title: "Title", imageSystemName: "gear")
                TableCellView(title: "Title", imageSystemName: "gear", detail: "Detail")
                TableCellView(title: "Title", subtitle: "Subtitle", imageSystemName: "gear")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", imageSystemName: "gear")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", imageSystemName: "gear", detail: "Detail")
            }
            Section(header: Text("Examples using a photo")) {
                TableCellView(title: "Title", image: "Icon")
                TableCellView(title: "Title", image: "Icon", detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageRadius: 5, detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageRadius: 20)
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageSize: 50, imageRadius: 50, detail: "Detail")
                TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageSize: 75, imageRadius: 20, detail: "Detail")

            }

            Section(header: Text("Using TableCellView inside a NavigationLink")){
                NavigationLink(destination: Text("")){
                    TableCellView(title: "Title", detail: "Detail")
                }
                NavigationLink(destination: Text("")){
                    TableCellView(title: "Title", subtitle: "Subtitle", imageSystemName: "gear", detail: "Detail")
                }
                NavigationLink(destination: Text("")){
                    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageRadius: 20, detail: "Detail")
                }
            }
        }

        .listStyle(GroupedListStyle())
        .navigationBarTitle("TableCellView", displayMode: .large)
    }
}







struct TableCellContentView_Previews: PreviewProvider {
    static var previews: some View {
        TableCellContentView()
    }
}
