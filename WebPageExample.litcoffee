# 시작점

    require "./COFFEECASE/BOOT.coffee"
    
    BOOT

## 설정
설정 명칭에 대한 원칙은 다음과 같다.

 * 명사나 동사원형으로 시작한다
 * 긍정형을 쓴다

아래는 새로이 제안하는 이름들이다.

        CONFIG:
            defaultBoxName: "WebPageExample"
            devMode: true

        SERVER_CONFIG:
            isNotUsingDB: true
            isNotRequiringDBAuth: false

        BROWSER_CONFIG:
            isSupportingHD: true
            isSupportingLayerOnCanvas: true


싱글 파일 모드가 필요하다. 아주 간단하게 작성하는 경우에 편하다. 아래와 같이 설정하고 밑에 View 클래스를 만들 수 있으면 가능할 것이다. 서버도 동일하다.

           MAIN: METHOD(run: (m, params) ->
      
              # localhost:8888 or localhost:8888/#View
              WebPageExample.MATCH_VIEW
                uris: [
                  ""
                  "View"
                ]
                target: WebPageExample.View

              return
            )

        SERVER_CONFIG:
           isNotUsingDB: true

# View

    WebPageExample.View = CLASS(
        preset: ->
          VIEW

        init: (cls, inner, self) ->
          div = DIV(
            style:
              fontSize: 50

            childs: [SPAN(childs: "Hello UPPERCASE!")]
          ).appendTo(BODY)
          
          self.close = close = (params) ->
            div.remove()
            return

          return
      ) 