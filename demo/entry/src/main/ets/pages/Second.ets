@Builder
export function SecondBuilder(){
  Second()
}
@Entry
@Component
struct Second{
  @State receivedId: string = '';
     pathStack:NavPathStack = new NavPathStack()
  aboutToAppear() {
    // 通过路由上下文获取传递的参数
    const params = this.getUIContext().getRouter().getParams();
    if (params && params) {
      this.receivedId = params as string;  // 类型断言确保类型安全
    }
  }
  build() {
    NavDestination(){
       Tabs({barPosition: BarPosition.End}){
         TabContent(){
           Column(){
             Text("姓名"+"name")
               .fontSize(23)
               .fontWeight(FontWeight.Bolder)
               .margin({bottom:12})
             Text("教师号"+"ID")
             Text("学院"+"college")
           }
         }.tabBar('我的')
         TabContent(){Text("违规记录内容")}.tabBar('违规记录')
         TabContent(){Text("申诉处理内容")}.tabBar('申诉处理')
       }
      }
      .title("教师界面")
      .hideBackButton(true)
  }
}


