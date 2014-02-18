# 단일 파일 예제
Hello COFFEECASE를 만들어 보자. 먼저 파일 하나에서 모든 것을 하기 위해 UPPERCASE_ONE 박스를 사용한다. 

    require "./UPPERCASE_ONE/BOOT.js"

BROWSER_CONFIG의 MAIN 값을 main 변수로 뽑아낸다. 이렇게 뽑아내는 것이 들여쓰기를 가장 줄인 형태이다. 

    main = (BOX) ->
        BOX.MATCH_VIEW

페이지를 볼 주소를 지정한다. http://localhost:8888 이 된다.

            uris: [""]

            target: CLASS
                preset: -> VIEW

                init: (cls, inner, self) ->

Hello COFFEECASE를 HTML의 body 태그 밑에 p 태그 안으로 넣는다. 가장 간단한 텍스트 출력 방식이다.

                    P(
                        children: ["Hello COFFEECASE"]
                    ).appendTo BODY

                    return

아래를 생략할 수 있으면 더 간결하겠지만 필요할 수도 있다.

    BOOT
        CONFIG:
            isDevMode: true

        SERVER_CONFIG:
            isNotUseDB: true

        BROWSER_CONFIG:
            MAIN: main

실행은 "nodemon SingleFileModeExample.litcoffee"로 한다.