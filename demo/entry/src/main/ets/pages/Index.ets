@Entry
@Component

struct Index {
  pathStack:NavPathStack = new NavPathStack()

  build(){
    Navigation(this.pathStack){
      Column(){
        Text("Page One")
          .fontSize(23)
          .fontWeight(FontWeight.Bolder)
        Button('跳转')
          .onClick(()=>{
            this.pathStack.pushPathByName('Second',"666",false)
          })
      }
    }

  }

}