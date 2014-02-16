# Boostrap

	require "./COFFEECASE/BOOT.coffee"
	
    BOOT
        CONFIG:
	       defaultBoxName: "WebPageExample"
	       isDevMode: true

        BROWSER_CONFIG:

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
          # div
          
          # close.
          div = DIV(
            style:
              fontSize: 50

            childs: [SPAN(childs: "Hello UPPERCASE!")]
          ).appendTo(BODY)
          
          #OVERRIDE: self.close
          self.close = close = (params) ->
            div.remove()
            return

          return
      ) 