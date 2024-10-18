import { LargeControlButton } from '../components/Buttons'

@Component
export struct FullMusicContent {
  @Link isPlaying:boolean
  @Prop music_pic:string = 'app.media.DefaultMusicPic'
  @Prop music_title:string = ''
  @Prop music_singer:string = ''
  @State Progress:number = 14;


  build() {
    Column() {
      Column() {
        Image($r(`${this.music_pic}`))
          .margin(30)
          .width(200)
          .height(200)
      }
        .layoutWeight(1)
      Column() {
        Slider().width('75%').padding({top:20, bottom:20})
        //播控按钮
        Row({ space: 40 }) {
          LargeControlButton({ImageUrl: 'app.media.icon_forward'})
          if(this.isPlaying == false) {
            LargeControlButton({ImageUrl: 'app.media.icon_play_fill'})
              .onClick(()=>{
                this.isPlaying = !this.isPlaying
              })
          }else {
            LargeControlButton({ImageUrl: 'app.media.icon_pause'})
              .onClick(()=>{
                this.isPlaying = !this.isPlaying
              })
          }
          LargeControlButton({ImageUrl: 'app.media.icon_forward'})
        }
        .width('100%')
        .padding({left:30, right:30})
        .justifyContent(FlexAlign.SpaceEvenly)
      }
      .height('33%')
    }
    .width('100%')
    .height('100%')
  }
}