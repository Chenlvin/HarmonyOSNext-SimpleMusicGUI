import { MusicSelector } from '../components/MusicSelector'

@Extend(Text)
function OneLineTextEllipsis() {
  .textOverflow({ overflow: TextOverflow.Ellipsis })
  .maxLines(1)
}

@Preview
@Component
export struct MusicCard {
  ImageUrl: string = 'app.media.DefaultMusicPic'
  MusicTitle: string = '未知歌曲'
  MusicSinger: string = '未知歌手'

  build() {
    Row() {
      Button({type: ButtonType.Normal}) {
        Row() {
          Image($r(`${this.ImageUrl}`)).height(40).width(40).borderRadius(5)

          Column() {
            Text(this.MusicTitle)
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
              .OneLineTextEllipsis()
              .width('100%')
              .padding({ bottom: 3 })
              .fontColor($r('app.color.reverse'))

            Text(this.MusicSinger)
              .textAlign(TextAlign.Start)
              .fontSize(10)
              .OneLineTextEllipsis()
              .width('100%')
              .fontColor($r('app.color.reverse'))
          }
          .padding({ left: 10 })
          .width('80%')
        }
      }
      .backgroundColor('#00cccccc')
      .borderRadius(0)
      .layoutWeight(1)
      .onClick(()=> {

      })

      MusicSelector({
        MusicTitle: this.MusicTitle,
        MusicAuthor: this.MusicSinger
      }).width(30)

    }
    .width('100%')
    .height(45)
    .padding({ left: 10, right: 10 })
    .justifyContent(FlexAlign.SpaceAround)
  }
}