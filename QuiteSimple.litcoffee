다음으로 간단하다.

    require "./UPPERCASE_ONE/BOOT.js"

BODY 태그에 넣을 태그를 맨 마지막에 반환하면 완성된다.

    BODY ->
        a = 1
        b = 2
        c = a + b

        div = DIV(
                children: ["1 + 2 = ", c]
            )

        div2 = DIV(
                children: ["1 + 2 = ", c]
            )

        container = DIV(
                children: [div, div2]
            )
