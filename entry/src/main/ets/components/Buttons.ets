/*
  Button 按钮组件
 */
@Preview
@Component
export struct CommonCircleButton {

  ButtonImageName: string = 'icon_warning'
  BgColor: string = '#CBCBCB'

  build() {
    Column() {
      Button({type: ButtonType.Circle}) {
        Image($r(`app.media.${this.ButtonImageName}`))
          .width(25)
          .fillColor($r('app.color.reverse'))
      }
      .height(35)
      .width(35)
      .backgroundColor(this.BgColor)
      .opacity(0.8)
    }
  }
}

@Component
export struct ControlButton {
  ImageUrl: string = ''
  build() {
    Button() {
      Image($r(this.ImageUrl))
        .height(27)
        .fillColor($r('app.color.reverse'))
    }
    .width('12%')
    .backgroundColor('#00dddddd')
    .animation({duration:1000})
  }
}

@Component
export struct LargeControlButton {
  ImageUrl: string = ''
  build() {
    Button() {
      Image($r(this.ImageUrl))
        .height(27)
        .fillColor($r('app.color.reverse'))
    }
    .width('12%')
    .backgroundColor('#00dddddd')
    .animation({duration:1000})
  }
}