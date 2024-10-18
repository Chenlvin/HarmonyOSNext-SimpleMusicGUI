import { IndexHead } from '../components/Head'
import { CommonCircleButton } from '../components/Buttons'
import { MusicData } from '../model/MusicData'
import { MusicCard } from '../components/MusicCard'
import { MainMusicList } from '../components/MainMusicList'
import { ScreenDisplay } from '../common/DisplayFunction'
import { PlayCard } from '../components/PlayCard'
import * as GetFiles from '../model/GetFile'
import { ReadMusicInfo } from '../model/GetFile'

@Entry
@Component
struct Index {
  @State MusicArr: MusicData[] = []
  @State MusicCount: number = this.MusicArr.length //歌曲数量

  aboutToAppear(): void {
    this.MusicArr = ReadMusicInfo()
    this.MusicCount = ReadMusicInfo().length
  }

  build() {
    Column() {
      IndexHead()

      Row() {
        Text(`共 ${this.MusicCount} 首歌曲`).fontSize(13)
      }
      .width('100%')
      .height(24)
      .padding({
        left: 10,
        right: 10,
        top: 5,
        bottom: 5
      })
      .backgroundColor($r('app.color.main_background'))

      MainMusicList({ MusicArr: this.MusicArr }).layoutWeight(1)

      PlayCard()

    }
    .backgroundColor($r('app.color.main_background')) //$r('app.color.main_background')
    .height('100%')
  }
}