import { SettingsHead } from '../components/Head'
import router from '@ohos.router';

@Entry
@Component
struct Settings {

  build() {
    Column() {
      SettingsHead()
      Column() {
      }
      .padding({ top:10, bottom:15 })
      .layoutWeight(1)
      Text('关于应用').fontSize(15)
        .onClick(()=>{
          router.pushUrl({ url:'pages/About' })
        })
    }
  }
}