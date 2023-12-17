# project-pm | 포트폴리오 커머스 웹 애플리케이션(포 매)
> 사용자 간 포트폴리오 거래 목적의 커머스 웹 애플리케이션

<div>
  <img src="https://img.shields.io/badge/pm-1.0.0 ver-blue"/>
  <img alt="GitHub License" src="https://img.shields.io/github/license/jeongwon201/project-pm">
</div>
<br />
<br />

<div align="center">
    <image src="portfolio_matching/src/main/webapp/resources/images/port_banner.png" style="float: left; width: 700px; height: 300px;"/>
</div>
<br />
      
포트폴리오 커머스 웹 애플리케이션(포 매)은 사용자들에게 창의적인 포트폴리오를 거래할 수 있는 플랫폼으로, 사용자들은 자신만의 작품이나 기술을 판매하고 구매할 수 있습니다. 
이 독특한 시스템에서는 사용자가 판매자이면서 동시에 구매자가 될 수 있어, 다양한 분야의 작품이나 기술을 손쉽게 거래할 수 있는 새로운 경험을 제공합니다. 
예를 들어, 사진 작가가 자신의 작품을 판매하는 것뿐만 아니라, 고객의 요구에 맞춰 특정 사진을 제작하여 대가를 받을 수 있습니다. 
이를 통해 창의적인 서비스를 제공하고 동시에 자신의 기술과 작품을 마켓플레이스에서 거래할 수 있는 새로운 기회를 제공합니다.  

또한, 이 웹 앱은 카카오 결제 API를 통해 신속하고 안전한 결제 시스템을 제공합니다. 
이를 통해 사용자들은 자신의 포트폴리오나 기술을 비롯해 다양한 상품을 손쉽게 구매하고 판매할 수 있으며, 창작물을 거래하며 새로운 경제적 기회를 발견할 수 있습니다. 
이 웹 앱은 창의성과 경제적 융합을 통해 새로운 거래 경험을 제공하며, 사용자들에게 창조적인 비즈니스 모델을 제시합니다.

## 시작하기

### 설치 방법

윈도우:
> Jdk 8 이상, Maven, MariaDB 가 필요합니다.
1. Git Repository 를 Clone 하세요.
> ```sh
> git clone https://github.com/jeongwon201/project-pm.git
> ```
<br />

2. application.properties 파일을 자신의 환경에 맞게 수정하세요.
> 경로: ```src/main/resources/application.properties```
> ```yaml
> server.port=8000 # 8000 포트가 사용중이라면, 사용 중이지 않은 포트로 변경하세요.
> 
> #DB
> spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
> spring.datasource.url=jdbc:mysql://127.0.0.1:3306/search?useSSL=false
> spring.datasource.username={username} # 현재 사용중인 MySQL 사용자 username 으로 변경하세요.
> spring.datasource.password={password} # 현재 사용중인 MySQL 사용자 password 으로 변경하세요.
> 
> #JPA
> spring.jpa.database=mysql
> spring.jpa.database-platform=org.hibernate.dialect.MySQL5InnoDBDialect
> spring.jpa.hibernate.ddl-auto=update
> spring.jpa.generate-ddl=true
> spring.jpa.show-sql=true
> spring.jpa.open-in-view=false
> ```
<br />

3. MySQL 에 데이터베이스를 추가하세요.
> sql 폴더의 ```search.sql``` 파일을 MySQL 에서 실행하여 데이터베이스를 준비합니다.
<br />

4. Gradle 을 이용하여 프로젝트를 빌드하세요.
> ```sh
> cd 경로/search
> gradle build
> ```
<br />

5. 서버를 오픈하세요.
> build/libs 폴더의 ```search-1.0.0.jar``` 파일을 원하는 디렉토리에 복사 후 다음 명령어를 이용하여 서버를 오픈하세요.
> 
> ```sh
> java -jar search-1.0.0.jar
> ```
> 
> ```CTRL + C``` 을 두 번 키다운하여 서버를 종료할 수 있습니다.  


### 사용 예제

_더 많은 예제와 사용법은 다음 링크를 참고하세요._

- <a href="https://github.com/jeongwon201/project-pm/blob/main/readme/usage.md" target="_blank">포트폴리오 커머스 웹 애플리케이션(포 매) 사용 예제</a>

## 업데이트 내역

* 1.0.0
    * 첫 출시
* 0.0.1
    * 작업 진행 중

## 작성자
- 이정원 - jeongwon201@naver.com
- 김영우
- 정다윤
- 정하민

## 라이센스

이 프로젝트는 MIT 라이센스를 준수하며 <a href="https://github.com/jeongwon201/project-pm/blob/main/LICENSE" target="_blank">LICENSE</a>에서 자세한 정보를 확인할 수 있습니다.

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
