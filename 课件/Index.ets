// import router from '@ohos.router';

@Entry  // 入口组件，表示次组件为入口
@Component // 组件
struct Index { // 组件名称
  // 数据 => ArkTS语法 == TypeScript
  @State message: string = 'Hello World';

  build() { // UI 描述
    Row() { // 行组件 == DIV
      Column() { // 列组件 == 行级元素
        Text(this.message) // 文本组件
          .fontSize(50) // 属性：字号
          .fontWeight(FontWeight.Bold) //属性：字体粗细

        Button() {
          Text('按钮')
        }
        .width('90%')
        .height(45)
        // .onClick(() => router.pushUrl({ url: './Home' }))
      }
      .width('100%') //属性：宽度
    }
    .height('100%') //属性： 高度
  }
}