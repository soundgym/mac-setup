# MacOS 셋업 스크립트

## Installation
```bash
git clone https://github.com/soundgym/mac-setup.git
cd mac-setup
sh setup.sh
```

---

## Description

- 기본적으로 모든 설정은 `brewfiles/sample.brewfile` 에 추가합니다.
- 환경별로 다른 설정이 필요할 경우, `brewfile/$env.brewfile` 형태로 새롭게 생성해서 추가합니다.
- 환경이 추가되면 `setup.sh` 파일에 환경을 추가합니다.

---

## TODO

- [ ] 환경 입력받는쪽 스크립트 개선
- [ ] 환경 별로, 설정을 주입하는 조건문 추가

---

아래의 글/레포를 참고하여 작성되었습니다.
- https://velog.io/@iamchanii/Brewfile%EC%9D%84-%EC%9D%B4%EC%9A%A9%ED%95%B4%EC%84%9C-%ED%8C%80-%EA%B0%9C%EB%B0%9C-%ED%99%98%EA%B2%BD-%EB%A7%8C%EB%93%A4%EA%B8%B0
- https://github.com/seongjoojin/mac-dev-setup
