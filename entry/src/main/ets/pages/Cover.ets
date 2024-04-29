import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@Component
export  struct Cover {
  @State message: string = 'Hello World';
  @Link showing: boolean

  build() {
    Row() {
      Column() {
        Button(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick((_) => {
            this.showing = false
          })
      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor('white')
  }

  onBackPress(): boolean | void {
    hilog.debug(0, 'Cover', 'Back!')
  }

  onPageShow(): void {
    hilog.debug(0, 'Cover',  'Show!', '')
  }

  onPageHide(): void {
    hilog.debug(0, 'Cover',  'Hide!', '')
  }

}