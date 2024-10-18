/*
  顶栏
 */
import { CommonConstants } from '../common/CommonConstant'
import { CommonCircleButton } from './Buttons'
import router from '@ohos.router';

@Preview
@Component
export struct IndexHead {
  build() {
    Row() {
      CommonCircleButton({ ButtonImageName: 'icon_music_note_list', BgColor: '#00cbcbcb' })
      Text('歌曲列表').height('100%').fontSize(18)
      CommonCircleButton({ ButtonImageName: 'icon_dot_grid_2x2', BgColor: '#00cbcbcb' })
        .bindMenu(this.RightTopMenu())
    }
    .width('100%')
    .height(CommonConstants.HeadHeight)
    .backgroundColor($r('app.color.main_background'))
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({ left: 10, right: 10 })
  }

  @Builder
  RightTopMenu() {
    Menu() {
      MenuItem({ startIcon: $r('app.media.icon_paste'), content: "设置" })
        .onClick(()=>{
          router.pushUrl({url: 'pages/Settings'})
        })
    }
  }
}


@Component
export struct SettingsHead {
  build() {
    Row() {
      CommonCircleButton({ ButtonImageName: 'icon_arrow_left', BgColor: '#00cbcbcb' }).onClick(()=>{ router.back() })
      Text('设置').height('100%').fontSize(18)
      CommonCircleButton({ ButtonImageName: 'icon_share', BgColor: '#00cbcbcb' })
        .onClick(()=>{
          AlertDialog.show({
            title: "提示",
            message: '这是分享按钮~',
            autoCancel:true,
            alignment: DialogAlignment.Center
          })
        })
    }
    .width('100%')
    .height(CommonConstants.HeadHeight)
    .backgroundColor($r('app.color.main_background'))
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({ left: 10, right: 10 })
  }
}

@Component
export struct AboutHead {
  build() {
    Row() {
      CommonCircleButton({ ButtonImageName: 'icon_arrow_left', BgColor: '#00cbcbcb' }).onClick(()=>{ router.back() })
      Text('关于').height('100%').fontSize(18)
      Column().height(35).width(35).opacity(0)

    }
    .width('100%')
    .height(CommonConstants.HeadHeight)
    .backgroundColor($r('app.color.main_background'))
    .justifyContent(FlexAlign.SpaceBetween)
    .padding({ left: 10, right: 10 })
  }
}

@Component
export struct FullContentHead {
  @Prop isShow: boolean;
  CloseisShow = () => {}
  build() {
    Column() {
      Row() {}.width('100%').height(40).backgroundColor($r('app.color.main_background'))
      Row() {
        CommonCircleButton({ ButtonImageName: 'icon_arrowtriangle_down_fill', BgColor: '#00cbcbcb' })
          .onClick(() => {
          this.CloseisShow()
        })

        Text('').height('100%').fontSize(18)
        CommonCircleButton({ ButtonImageName: 'icon_dot_grid_2x2', BgColor: '#00cbcbcb' })
          .onClick(() => {
            this.CloseisShow()
          })
      }
      .width('100%')
      .height(CommonConstants.HeadHeight)
      .backgroundColor($r('app.color.main_background'))
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 10, right: 10 })
    }
  }

}
