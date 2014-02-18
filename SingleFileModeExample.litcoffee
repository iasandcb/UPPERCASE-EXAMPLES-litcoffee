# run: nodemon WebPageExample.js

    require "./UPPERCASE_ONE/BOOT.js"

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

    BOOT
        CONFIG:
            isDevMode: true

        SERVER_CONFIG:
            isNotUseDB: true

        BROWSER_CONFIG:
            MAIN: main
