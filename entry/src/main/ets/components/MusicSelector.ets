@Preview
@Component
export struct MusicSelector {
  ImageUrl: string = 'app.media.DefaultMusicPic'
  MusicTitle: string = '未知歌曲'
  MusicAuthor: string = '未知歌手'

  build() {
    Image($r('app.media.icon_dot_grid_1x2'))
      .padding({left:10})
      .height(25)
      .fillColor($r('app.color.reverse'))
      .onClick(()=> {
      })
  }
}