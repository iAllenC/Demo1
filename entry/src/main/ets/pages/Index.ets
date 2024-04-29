import { Cover } from './Cover';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State showCover: boolean = false

  build() {
    Row() {
      Column() {
        Button(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick((_) => {
            this.showCover = true
          })
          .bindContentCover($$this.showCover, this.coverBuilder)
      }
      .width('100%')
    }
    .height('100%')
  }

  @Builder
  coverBuilder() {
    Stack() {
      Cover({
        showing: $showCover
      })
    }
  }
}