//
//  TableCellView.swift
//
//  Created by Philip Andersen on 2019-09-28.
//  Copyright © 2019 Philip Andersen. All rights reserved.
//
//  Published under the MIT License. See LICENSE file.
//

import SwiftUI


/// Returns a basic Table cell use cases in SwiftUI
///
/// Every variable/parameter is optional. If no parameter is used, it will return a a cell with a empty HStack
///
/// - Parameters:
///   - title: Leading cell title text
///   - titleFontStyle: Font style of cell title
///   - subtitle: Leading cell subtitle that is a smaller font-size and use secondary color
///   - image: Name of image-asset to be used. If it can't load a image, it will result in a empty area.
///   - imageSystemName: Name of systemFonts image to be used.
///   - imageSize: This will set the maximum width and height of the image frame
///   - imageRadius: This will set the maximum width and height of the image frame
///   - detail: Detail trailing text string
///
struct TableCellView: View {

    // Selection for font styles
    enum TableCellTitleFontStyle {
        case regular
        case bold
        case italic
        case boldItalic
    }

    var title: String?
    var titleFontStyle: TableCellTitleFontStyle = .regular
    var subtitle: String?
    var image: String?
    var imageSystemName: String?
    var imageSize: CGFloat = 40
    var imageRadius: CGFloat = 0
    var detail: String?

    var body: some View {

        HStack{

            // Check for image
            if image != nil {
                Image(image!)
                    .resizable()
                    .frame(minWidth: 0, maxWidth: imageSize, minHeight: 0, maxHeight: imageSize)
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(imageRadius)
                    .padding(.trailing, 5)
                    .padding(.vertical, 5)
            }

            // Check for system icon
            if imageSystemName != nil {
                Image(systemName: imageSystemName!)
                    .padding(.trailing, 5)
                    .padding(.vertical, 5)
            }


            /// Check for a detail text
            if detail != nil {

                HStack{

                    VStack(alignment: .leading){

                        // Check for title
                        if title != nil {

                            // Check for what font style will be applied
                            if titleFontStyle == TableCellTitleFontStyle.regular {
                                Text(title!)
                            } else if titleFontStyle == TableCellTitleFontStyle.boldItalic {
                                Text(title!)
                                    .bold()
                                    .italic()
                            } else if titleFontStyle == TableCellTitleFontStyle.italic {
                                Text(title!)
                                    .italic()
                            } else {
                                Text(title!)
                                    .bold()
                            }

                        }

                        // Check for subtitle
                        if subtitle != nil {
                            Text(subtitle!)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }

                    }
                    Spacer()

                    Text(detail!)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }

            } else {

                VStack(alignment: .leading){

                    // Check for title
                    if title != nil {

                        // Check for what font style will be applied
                        if titleFontStyle == TableCellTitleFontStyle.regular {
                            Text(title!)
                        } else if titleFontStyle == TableCellTitleFontStyle.boldItalic {
                            Text(title!)
                                .bold()
                                .italic()
                        } else if titleFontStyle == TableCellTitleFontStyle.italic {
                            Text(title!)
                                .italic()
                        } else {
                            Text(title!)
                                .bold()
                        }

                    }

                    // Check for subtitle
                    if subtitle != nil {
                        Text(subtitle!)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }

                }

            }


        }

    }
}
