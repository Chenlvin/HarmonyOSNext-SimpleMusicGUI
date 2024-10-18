/*
  首页音乐列表
 */
import { MusicData } from '../model/MusicData'
import { MusicCard } from './MusicCard'
import sendableColorSpaceManager from '@ohos.graphics.sendableColorSpaceManager'

@Preview
@Component
export struct MainMusicList {

  @State MusicArr: MusicData[] = []

  build() {
      List() {
        ForEach(this.MusicArr, (item: MusicData,index)=> {
          ListItem() {
            MusicCard({
              MusicTitle: item.title,
              MusicSinger: item.singer
            })
          }
        })
        ListItem() {
          Text('没有更多了~').fontSize(12).width('100%').padding({top:10,bottom:10}).textAlign(TextAlign.Center)
        }
      }
      .divider({strokeWidth: 1})
      .scrollBar(BarState.Auto)
      .padding({top:10})
  }
}