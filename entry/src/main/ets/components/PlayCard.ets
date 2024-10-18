import * as GetFiles from '../model/GetFile'
import { GetPlayCardObject } from '../model/GetFile'
import { MusicData } from '../model/MusicData'
import { ControlButton } from '../components/Buttons'
import { FullMusicContent } from '../components/FullMusicContent'
import { FullContentHead } from './Head'


@Extend(Text)
function OneLineTextEllipsis() {
  .textOverflow({ overflow: TextOverflow.Ellipsis })
  .maxLines(1)
}

@Component
export struct PlayCard {
  @State NowPlaying: MusicData = new MusicData('', '', '')
  @State isPlaying: boolean = false
  @State isShow: boolean = false

  aboutToAppear(): void {
    this.NowPlaying = GetPlayCardObject()
  }

  build() {
    Row() {
      Button() {
        Row() {
          Image($r(`${this.NowPlaying.pic}`)).height(35).width(35).borderRadius(5)

          Column() {
            Text(this.NowPlaying.title)
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .OneLineTextEllipsis()
              .width('100%')
              .padding({ bottom: 3 })

            Text(this.NowPlaying.singer)
              .textAlign(TextAlign.Start)
              .fontSize(9)
              .OneLineTextEllipsis()
              .width('100%')
          }
          .padding({ left: 10 })
        }
      }
      .layoutWeight(1)
      .backgroundColor('#00cccccc')
      .onClick(()=>{ this.isShow = true })
      .bindContentCover(this.isShow, this.Full(), {
        modalTransition: ModalTransition.DEFAULT,
        backgroundColor: $r('app.color.main_background'),
        onWillAppear: () => {},
        onWillDisappear: () => {this.isShow = false}
      })

      ControlButton({ImageUrl: 'app.media.icon_forward'})
      if(this.isPlaying == false) {
        ControlButton({ImageUrl: 'app.media.icon_play_fill'})
          .onClick(()=>{
            this.isPlaying = !this.isPlaying
          })
      }else {
        ControlButton({ImageUrl: 'app.media.icon_pause'})
          .onClick(()=>{
            this.isPlaying = !this.isPlaying
          })
      }
      ControlButton({ImageUrl: 'app.media.icon_forward'})
    }
    .width('100%')
    .padding({ left: 25, right: 25 })
    .height(50)
    .backgroundColor($r('app.color.main_background'))
  }

  @Builder Full() {
    Column() {
      FullContentHead({
        isShow: this.isShow,
        CloseisShow: () => {
          this.isShow = false
        }
      })

      FullMusicContent({
        isPlaying: this.isPlaying,
        music_pic: this.NowPlaying.pic,
        music_title: this.NowPlaying.title,
        music_singer: this.NowPlaying.singer,
      })
    }
    .width('100%')
    .height('100%')
  }
}