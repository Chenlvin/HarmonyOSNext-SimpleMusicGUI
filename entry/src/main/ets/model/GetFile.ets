import { MusicData } from '../model/MusicData'
export const ReadMusicInfo = (): MusicData[] => {
  let result: MusicData[] = new Array()
  result = [
    new MusicData('app.media.DefaultMusicPic','搁浅','周杰伦'),
    new MusicData('app.media.DefaultMusicPic','The Old Man and the Sea','Yorushika'),
    new MusicData('app.media.DefaultMusicPic','我记得','赵雷'),
    new MusicData('app.media.DefaultMusicPic','演员','薛之谦'),
    new MusicData('app.media.DefaultMusicPic','ギターと孤独と蒼い惑星','結束バンド'),
    new MusicData('app.media.DefaultMusicPic','Ticking Away','VALORANT, Grabbitz, bbno$'),
    new MusicData('app.media.DefaultMusicPic','Fool For You','KASTRA'),
    new MusicData('app.media.DefaultMusicPic','追梦赤子心','GALA'),
    new MusicData('app.media.DefaultMusicPic','搁浅','周杰伦'),
    new MusicData('app.media.DefaultMusicPic','The Old Man and the Sea','Yorushika'),
    new MusicData('app.media.DefaultMusicPic','我记得','赵雷'),
    new MusicData('app.media.DefaultMusicPic','演员','薛之谦'),
    new MusicData('app.media.DefaultMusicPic','ギターと孤独と蒼い惑星','結束バンド'),
    new MusicData('app.media.DefaultMusicPic','Ticking Away','VALORANT, Grabbitz, bbno$'),
    new MusicData('app.media.DefaultMusicPic','Fool For You','KASTRA'),
    new MusicData('app.media.DefaultMusicPic','追梦赤子心','GALA'),
    new MusicData('app.media.DefaultMusicPic','搁浅','周杰伦'),
    new MusicData('app.media.DefaultMusicPic','The Old Man and the Sea','Yorushika'),
    new MusicData('app.media.DefaultMusicPic','我记得','赵雷'),
    new MusicData('app.media.DefaultMusicPic','演员','薛之谦'),
    new MusicData('app.media.DefaultMusicPic','ギターと孤独と蒼い惑星','結束バンド'),
    new MusicData('app.media.DefaultMusicPic','Ticking Away','VALORANT, Grabbitz, bbno$'),
    new MusicData('app.media.DefaultMusicPic','Fool For You','KASTRA'),
    new MusicData('app.media.DefaultMusicPic','追梦赤子心','GALA')

  ]
  return result
}

export const GetPlayCardObject = (): MusicData => {
  let result: MusicData = new MusicData('app.media.DefaultMusicPic', '我记得','赵雷')
  return result
}