# Flutter

![아하ㅏ하하핳](https://memeprod.ap-south-1.linodeobjects.com/user-maker-thumbnail/0acfae5a8de625469337e1dadd5d14ed.gif)

## Flutter 란 ?

<p align="center">
    <img src="https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png" alt="Example Image" width="80%">
</p>

<br/>

- Flutter는 구글이 출시한 오픈 소스 크로스 플랫폼 애플리케이션 프레임워크 <br/>

- 하나의 코드 베이스로 iOS, AOS, Linux, MacOs, Web Windows 다양한 플랫폼에서 동작하는 사용자 인터페이스를 빌드할 수 있음


---

### 전체적인 구성

1. **위젯 (Widget)** :

   - Flutter 앱의 UI를 구성하는 기본 단위
   
   - 모든 UI 요소는 위젯으로 표현(버튼, 텍스트, 이미지 등)

   ---

2. **Dart** :

   - Flutter 는 다트 언어를 사용하여 앱을 개발

   - 객체 지향, 클래스 기반, 가비지 컬렉션, C언어 스타일 구문 사용

   ---
    
3. **Flutter SDK** :

    - Flutter 앱을 만들기 위해서 구글이 제공해주는 소스코드와 도구들 

   ---

4. **Flutter Engine** :

    - 플러터의 핵심적인 부분으로 UI를 렌더링하고 관리하는 기능을 제공

    - C++로 작성되어 있으며, Dart API를 통해 사용됨

    ---

5. **Framework**

   > Flutter Engine 위에 구축된 레이아웃, 애니메이션, 렌더링, 스타일링 등을 처리

   - `Foundation` : `Animation` , `Painting` , `Gesture` 계층에게 기본 기초 클래스를 제공(일반적으로 사용되는 추상 클래스 및 빌딩 블록을 제공)

   - **Rendering** : 렌더링을 위한 추상 클래스를 제공한다. 이 레이어를 사용해서 렌더링 객체 트리를 만들 수 있음

   - **Widget** : 위젯 레이어는 화면을 구성하는 구성의 추상화, `Rendering` 레이어의 각 렌더링 객체는 위젯 레이어에 대응하는 클래스를 가짐

   - **Material, Cupertino** :  Widget 레이어 구성들의 세트

   ---

*cf. 선언형 UI 프레임워크란*

> 선언형 UI는 상태와 함께 *“무엇을”* 렌더링할지 정의해주면 자세한 부분은 프레임워크에서 처리해주는 것

---

## Flutter 프레임워크의 동작 원리

> Flutter는 **“선언형 UI 프레임워크”**

- **주요 개념 흐름**

   ```
   [상태 변화] -> [위젯 트리 재구성] -> [Element 트리 갱신] -> [렌더 트리 재빌드]
   ```

   ---

- **구성 핵심**

    | 구성 요소            | 설명                                                                |
    | ---------------- | ----------------------------------------------------------------- |
    | **Widget**       | Flutter의 UI 구성 요소. 모두 클래스 (`StatelessWidget`, `StatefulWidget`) |
    | **Element**      | Widget의 **인스턴스와 위치를 기억**하는 객체. 내부 상태 트리                           |
    | **RenderObject** | 실제 레이아웃 계산 & 그리기 담당 객체 (Skia와 연동)                                 |
    | **BuildContext** | 위젯이 빌드될 때의 위치 정보와 부모 접근 경로를 담은 객체                                 |

    ---

- **상태 업데이트 흐름**

   ```dart
   setState(() {
    // 상태 변경
   });
   ```

   - 호출 시 `build()` 함수가 다시 실행됨

   - 바뀐 위젯만 다시 그려짐 (전체 앱을 다 그리는 게 아님)

   - 내부적으로 `Element` 트리에서 `diffing` 이 발생해 최소만 갱신

   ---

- **Widget**

   | 위젯              | 설명                                           |
    | --------------- | -------------------------------------------- |
    | `StatelessWidget` | 상태가 변하지 않는 위젯 (예: `Text`)                    |
    | `StatefulWidget`  | 상태 변화 감지 가능한 위젯 (예: `Checkbox`, `TextField`) |
    | `InheritedWidget` | 자식에게 데이터를 전달하는 데 사용하는 위젯 (`context`로 접근)       |

   ---

## 참고

- [Flutter Dock](https://docs.flutter.dev/)

- [Flutter Learn](https://flutter.dev/learn)

- [DartPad](https://dartpad.dev/)

- [블로그 참조 - Dart란-무엇인가](https://velog.io/@cbw6088/Dart%EB%9E%80-%EB%AC%B4%EC%97%87%EC%9D%B8%EA%B0%80)

- [블로그 참조 - Flutter 개발을 위한 Dart 언어 간단 정리](https://blog.leaphop.co.kr/blogs/50/Flutter_%EA%B0%9C%EB%B0%9C_%EC%9D%84_%EC%9C%84%ED%95%9C_Dart_%EC%96%B8%EC%96%B4_%EA%B0%84%EB%8B%A8_%EC%A0%95%EB%A6%AC)

- [블로그 참조 - 플러터의 구성](https://velog.io/@error/Flutter-1.-%ED%94%8C%EB%9F%AC%ED%84%B0%EC%9D%98-%EA%B5%AC%EC%84%B1)

- [블로그 참조 - Flutter UI 디자인 시 알아야 할 핵심 요소 정리](https://conding-note.tistory.com/134)