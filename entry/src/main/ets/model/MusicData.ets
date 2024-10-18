export class MusicData {
  pic: string = '' //封面
  title: string = 'Null' //曲名
  singer: string = 'Null' //作者
  src: string = '' //资源路径
  time: number = 0 //歌曲长度
  //TimeLength: number = -1
  constructor(pic:string, title:string, singer:string) {
    this.pic = pic
    this.title = title
    this.singer = singer
  }
}
