# Java Spring Course

# 시작하기
## 1. 개요    
  - ### Spring이란?  
    Spring makes it easy to create Java **enterprise** applications.  
    https://spring.io/  
    https://docs.spring.io/spring-framework/docs/current/reference/html/overview.html#spring-introduction  
  - ### Spring MVC란?  
    A Spring MVC is a framework to build web applications. It follows the MVC(Model-View-Controller) design pattern.
    https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/mvc.html  

<br>

## 2. 환경설정    

- ### JDK
2.1 JDK 8 설치 
- https://techhans.tistory.com/100

2.2 JDK 11 설치 (기준)
- https://techhans.tistory.com/100

<br>
   **[참고]** openJDK버전별 다운로드 - https://jdk.java.net/archive/
<br>

- ### Eclipse
2.1 Eclipse STS 3 설치 
- https://techhans.tistory.com/102
- https://github.com/spring-attic/toolsuite-distribution/wiki/Spring-Tool-Suite-3

2.2 Eclipse 한글 설정 
- https://techhans.tistory.com/103

2.3 Eclipse Heap Memory 설정
- https://techhans.tistory.com/104

2.4 설치 후 아래 기본 설정
<br><br>
**-vm**  
**c:\jdk11\bin\javaw.exe**  
**-Xmx2048m**  
<br> 
```bash
  -startup
  plugins/org.eclipse.equinox.launcher_1.6.300.v20210813-1054.jar
  --launcher.library
  plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.2.300.v20210828-0802
  -product
  org.springsource.sts.ide
  --launcher.defaultAction
  openFile
  -vm
   c:\jdk11\bin\javaw.exe
  -vmargs
  -Dosgi.requiredJavaVersion=11
  -Dosgi.dataAreaRequiresExplicitInit=true
  -Xms1024m
  -Xmx2048m
  --add-modules=ALL-SYSTEM
  -Dosgi.module.lock.timeout=10
```

<br>

- ### Git
2.4 Git 설치하기
- https://techhans.tistory.com/101
- https://git-scm.com/

```bash
     $ git --version
     git version 2.39.0.windows.1


     $ git --version  
     git version 2.39.0  
```

    설치 후에 위와 같이 버전이 보이면 정상 설치된 것입니다.  

<br>

2.5 소스트리(sourcetree) 설치하기
 - https://www.sourcetreeapp.com/

<br>

- ### 기타
2.6 VS Code 설치하기
- https://code.visualstudio.com/download  
- VSC 플러그인 - https://marketplace.visualstudio.com/VSCode 


2.7 sublimeText 설치하기
- https://techhans.tistory.com/105
- https://www.sublimetext.com/

<br>

## 3. Cloud     
- ### Cloud 가 무엇인가?  
  
클라우드 컴퓨팅(영어: cloud computing)은 사용자의 직접적인 활발한 관리 없이 특히,
데이터 스토리지(클라우드 스토리지)와 컴퓨팅 파워와 같은 컴퓨터 시스템 리소스를 필요시 
바로 제공(on-demand availability)하는 것을 말한다. 
일반적으로는 인터넷 기반 컴퓨팅의 일종으로 정보를 자신의 컴퓨터가 아닌 클라우드에 
연결된 다른 컴퓨터로 처리하는 기술을 의미한다. 공유 컴퓨터 처리 자원과 데이터를 컴퓨터와 
다른 장치들에 요청 시 제공해준다. 

구성 가능한 컴퓨팅 자원(예: 컴퓨터 네트워크, 데이터 베이스, 서버, 스토리지, 애플리케이션, 서비스, 인텔리전스)에 대해 
어디서나 접근할 수 있는, 주문형 접근(on-demand availability of computer system resources)을 가능케하는 모델이며 
최소한의 관리 노력으로 빠르게 예비 및 릴리스를 가능케 한다    
    
- ### Oracle Cloud (OCI) 가 무엇인가?
  
오라클에서 제공하는 무료 클라우드 (가장 하단에 무료혜택 기술)
- https://docs.oracle.com/en-us/iaas/Content/FreeTier/freetier_topic-Always_Free_Resources.htm


- ### AWS 와 Oracle Cloud (OCI) 는 어떻게 다른가?

클라우드는 다양한 업체에서 제공하고 있으며 그 구조나 아키텍트 사용법등은 거의 유사하며 
단지 오라클클라우드(OCI)는 후발주자이기에 AWS와는 비교되지 않는 항상 무료 서비스(Always Free)를 제공한다.
(AWS도 가입시 12개월 동안 프리티어 계정(무료계정) 사용가능하나 사용량이 넘어가면 과금이 되어 실제 돈을 지불해야 함)

- ### Oracle Cloud (OCI) 무료 가입방법

3.1 OCI 무료 가입방법

<br>
- https://techhans.tistory.com/36
- https://techhans.tistory.com/37
- https://techhans.tistory.com/38
- https://techhans.tistory.com/39

<br>
본 과정에서는 아래 참조 링크를 통해 개발/테스트에 필요한 일부 무료 서비스를 이용할 예정
(Ubuntu Linux, JDK 8, Nginx, PHP, Mariadb, Tomcat 설치 추천)
<br>

- ### Oracle Cloud (OCI) 가 주는 무료서버와 무료공인아이피

3.2 무료서버와 무료공인아이피 (개발시 이점)
 
> 오라클클라우드(OCI)의 Alwasy Free 서비스는 사용량 제한이 없어 절대 과금이 이루어 지지 않는다
> 실제 무료로 사용하는 서버가 2대 이며, 개발시 참조하는 공인아이피를 통해 접속하기 용이하기에
> 개발테스트할 때 굳이 자신의 PC나 노트북에 설치할 필요가 없다

<br>

**[참고]** 오라클 클라우드 무료 혜택
```
  무료 VM 인스턴스 : 무료서버를 2대 제공 (사용량 제한 없음, 각 인스턴스 마다 CPU 1 OCPU, 1 GB 메모리 제공)    
  무료 공인 아이피 : 해당되는 서버마다 접속 제공 아이피 제공 (최대 2개)
  무료 디스크 볼륨 : 무료로 제공되는 디스크가 총 200GB
  무료 트래픽 비용 : OutBound 1TB 무료 제공 (왠만한 서비스도 모두 사용 못하는 수준)
  그 외에 ARM서버(4 OCPU, 24 GB) 추가 제공, 20G 오브젝트 스토리지, 20G ATP Oracle Database * 2 서버 제공 등등
```


<br>
<br>
