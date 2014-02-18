# 단일 파일 예제

    require "./UPPERCASE_ONE/BOOT.js"

이렇게 뽑아내는 것이 들여쓰기를 가장 줄인 형태이다.

    main = (BOX) ->
        BOX.MATCH_VIEW
            uris: [
                ""
                "View"
            ]

            target: CLASS
                preset: -> VIEW

                init: (cls, inner, self) ->
                    div = DIV(
                        style:
                            fontSize: 50

                        children: [SPAN(children: ["Hello UPPERCASE!"])]
                    ).appendTo(BODY)

                    self.close = close = (params) ->
                        div.remove()
                        return

                    return

아래를 생략할 수 있으면 더 간결하겠지만 필요할 수도 있다.

    BOOT
        CONFIG:
            isDevMode: true

        SERVER_CONFIG:
            isNotUseDB: true

        BROWSER_CONFIG:
            MAIN: main
