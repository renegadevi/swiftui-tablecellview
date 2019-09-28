# SwiftUI-TableCellView

__Rapidly create commonly used TableViewCells in SwiftUI__

## About

Instead of creating custom views all the time, this let's you create simple cells on the fly based on the classic Cells from UIKit. 

*Tested and works with Xcode GM 11.0 and iOS 13*


## Examples and Screenshots

This is just a few examples how you could make some of the cells just by a line of code.



### Example 1: Text cells

![example-1-Grouped](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/01_Grouped.png)
![example-1-Plain](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/01_Plain.png)

*Source*

```swift
Section(header: Text("Examples of text cells")) {
    TableCellView(title: "Title")
    TableCellView(title: "Title", detail: "Detail")
    TableCellView(title: "Title", subtitle: "Subtitle")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .italic, subtitle: "Subtitle", detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .boldItalic, subtitle: "Subtitle", detail: "Detail")
}
```




### Example 2: Using systemName icon

![example-2-Grouped](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/02_Grouped.png)
![example-2-Plain](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/02_Plain.png)

*Source*

```swift
Section(header: Text("Examples using a SystemName icon")) {
    TableCellView(title: "Title", imageSystemName: "gear")
    TableCellView(title: "Title", imageSystemName: "gear", detail: "Detail")
    TableCellView(title: "Title", subtitle: "Subtitle", imageSystemName: "gear")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", imageSystemName: "gear")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", imageSystemName: "gear", detail: "Detail")
}
```




### Example 3: Using a photo

![example-3-Grouped](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/03_Grouped.png)
![example-3-Plain](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/03_Plain.png)

*Source*

```swift
Section(header: Text("Examples using a photo")) {
    TableCellView(title: "Title", image: "Icon")
    TableCellView(title: "Title", image: "Icon", detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageRadius: 5, detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageRadius: 20)
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageSize: 50, imageRadius: 50, detail: "Detail")
    TableCellView(title: "Title", titleFontStyle: .bold, subtitle: "Subtitle", image: "Icon", imageSize: 75, imageRadius: 20, detail: "Detail")

}
```




### Example 4: Using a NavigationLink

![example-4-Grouped](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/04_Grouped.png)
![example-4-Plain](https://gitlab.com/renegadevi/swiftui-tablecellview/raw/master/screenshots/04_Plain.png)

*Source*

```swift
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
```




## License

Published under MIT License. See LICENSE file
