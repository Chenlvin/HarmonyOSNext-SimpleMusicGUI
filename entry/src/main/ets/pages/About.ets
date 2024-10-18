import { VERSION_NAME } from 'BuildProfile'
import { AboutHead } from '../components/Head'

@Extend(Text)
function TextStyle() {
  .fontSize(18)
  .padding({bottom:10})
}

@Builder
function TextItem(T1:string, T2:string) {
  Row({ space:10 }){
    Text(T1).TextStyle().fontWeight(FontWeight.Bold)
    Text(T2).TextStyle()
  }
}
@Entry
@Component
struct About {
  build() {
    Column() {
      AboutHead()
      TextItem('版本号',VERSION_NAME)
      TextItem('','For HarmonyOS NEXT')
    }
    .padding({top: 10})
    .height('100%')
    .width('100%')
  }
}