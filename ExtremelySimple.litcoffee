# 가장 간단한 예제

## 준비물

 * node : 알아서 설치
 * nodemon : npm install -g nodemon
 * UPPERCASE : 프로젝트 디렉토리에 복사
 * UPPERCASE_ONE : 프로젝트 디렉토리에 복사

의외로 COFFEECASE는 필요없다.

## 코드

가장 먼저 필요한 것을 불러온다.

    require './UPPERCASE_ONE/BOOT.js'

간단한 로직을 넣는다.

    P ->
        'Hello World'

``` nodemon HelloWorld.litcoffee``` 을 명령창에서 실행한 다음,
브라우저로 http://localhost:8888 을 연다.

``` coffeecase drink HelloWorld``` 하면 require 쓰지 않아도 자동으로 붙여주고 litcoffee도 생략할 수 있고
브라우저도 자동으로 열어주면 좋겠다.

궁극적으로는 로직에만 집중할 수 있는 환경이 제공되면 제일 좋겠지만. coffeecase 패키지를 만드는
것도 방법일듯. coffeecase roast Examples 하면 Examples 디렉토리를 만들고 그 안에
필요한 박스들이 다 설치한다. 이렇게 하면 필요한 것은

 * node : 알아서
 * coffeecase : npm install -g coffeecase

가 된다.
