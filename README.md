# jwson

일상과 생각, 좋아하는 것들을 자유롭게 올리는 개인 블로그입니다.
[Chirpy 공식 스타터](https://github.com/cotes2020/chirpy-starter)를 기반으로 구성했습니다.

## 현재 구성

- 한국어 UI, 서울 시간대, 시스템 설정에 따른 밝은/어두운 화면
- 작성자 `jwson95`, 한 줄 소개와 소개 페이지 본문은 비워 둠
- 글 작성용 초안 템플릿
- 검색, 카테고리, 태그, 아카이브, RSS
- 긴 글에서 필요할 때만 목차를 켜는 구성
- 댓글은 미설정, 방문 통계는 비공개 GoatCounter 관리 화면에서 확인
- 글에는 별도의 재사용 라이선스를 부여하지 않음. 테마 코드는 원본 MIT 라이선스 유지
- main 브랜치 변경 시 GitHub Pages 자동 배포

블로그 주소: <https://jwson95.github.io>

공개 저장소: <https://github.com/jwson95/jwson95.github.io>

주소가 달라지면 `_config.yml`의 `url`과 `baseurl`을 변경하세요.

## 내 컴퓨터에서 보기

```bash
cd personal-blog
bash tools/preview.sh
```

브라우저에서 <http://127.0.0.1:4000>을 엽니다. 종료는 `Ctrl+C`입니다.
파일을 저장하면 화면에 변경 사항이 반영됩니다. `_config.yml`을 바꾼 뒤에는 서버를 다시 시작하세요.

초안도 함께 보려면:

```bash
bash tools/preview.sh --drafts
```

## 글 올리기

1. `_posts/`에 `YYYY-MM-DD-짧은-이름.md` 형식으로 파일을 만듭니다.
2. 아래 양식을 복사하고 날짜, 제목, 본문을 바꿉니다.
3. 로컬 미리보기로 확인합니다. 커밋 후 `main` 브랜치를 푸시하면 자동으로 배포됩니다.

```markdown
---
title: 오늘의 작은 기록
date: 2026-10-15 09:00:00 +0900
description: 오늘 기억하고 싶은 것들
categories: [일상]
tags: [기록]
---

여기에 글을 씁니다.

## 작은 제목

**굵게**, *기울임*, [링크](https://example.com)도 사용할 수 있습니다.
```

카테고리와 태그는 자유롭게 바꾸거나 `[]`로 비워도 됩니다. 별도의 등록은 필요 없습니다.
여러 카테고리는 상하위 관계로 처리되므로, 단순 분류라면 카테고리를 하나만 쓰는 편이 편합니다.
긴 글에 목차가 필요하면 머리말에 `toc: true`를 추가하세요.
미래 날짜의 글은 기본 빌드에서 제외되며, 해당 날짜가 지난 후 새로 빌드할 때 게시됩니다.

작성 중인 글은 `_drafts/`에 보관하세요. 현재 배포 설정에서는 초안이 사이트에 표시되지 않습니다.
다만 공개 GitHub 저장소에 올린 초안 파일은 소스로 읽을 수 있으므로 민감한 내용은 넣지 마세요.
게시할 때 `_posts/YYYY-MM-DD-이름.md`로 옮기고 `date`를 추가하면 됩니다.

사진은 `assets/img/posts/`에 넣습니다.

```markdown
![사진 설명](/assets/img/posts/my-photo.jpg)
```

## 블로그 정보 바꾸기

| 바꿀 항목 | 파일 |
| --- | --- |
| 이름, 짧은 소개, 설명, 작성자 | `_config.yml`의 `title`, `tagline`, `description`, `social.name` |
| 소개 페이지 | `_tabs/about.md` |
| 프로필 이미지 | `_config.yml`의 `avatar` 및 `assets/img/avatar.svg` |
| 게시할 글 | `_posts/YYYY-MM-DD-이름.md` |
| 초안 양식 | `_drafts/my-next-post.md` |
| GitHub·RSS 링크 | `_data/contact.yml` |

## 다른 컴퓨터에서 실행하기

Ruby 3.4와 Bundler가 필요합니다. macOS에서는:

```bash
brew install ruby@3.4
export PATH="$(brew --prefix ruby@3.4)/bin:$PATH"
bundle config set --local path vendor/bundle
bundle install
bash tools/preview.sh
```

`Gemfile.lock`을 함께 보관해 동일한 테마와 라이브러리 버전을 사용합니다.

## 빌드와 링크 검사

```bash
export PATH="$(brew --prefix ruby@3.4)/bin:$PATH"
bash tools/test.sh
```

## GitHub Pages 배포

저장소의 **Settings → Pages → Build and deployment → Source**는 **GitHub Actions**를 사용합니다.
`main` 브랜치에 변경 사항을 푸시하면 **Actions → Build and Deploy**가 빌드·링크 검사·배포를 실행합니다.
배포 결과는 Actions 화면에서 확인할 수 있으며, 필요하면 **Run workflow**로 다시 배포할 수 있습니다.

`personal-blog`처럼 다른 저장소 이름을 쓰면 `_config.yml`의 `baseurl`을 `/personal-blog`로 설정해야 합니다.

## 방문 통계

관리 화면: [jwson95 GoatCounter](https://jwson95.goatcounter.com/)

로그인한 본인만 관리 화면에서 방문 추이와 글별 통계를 확인할 수 있습니다.
블로그 화면에는 방문자 수나 조회수를 공개하지 않습니다.

### 연결 설정

1. GoatCounter에 사이트 도메인 `jwson95.github.io`를 등록합니다.
2. 발급된 사이트 코드만 `_config.yml`의 `analytics.goatcounter.id`에 입력합니다. 전체 주소나 `/count`는 넣지 않습니다.
3. GoatCounter의 `Dashboard viewable by`를 `Only logged in users`로 두고, `Allow adding visitor counts on your website`는 끕니다.
4. `_config.yml`의 `pageviews.provider`는 비워둡니다. 블로그에는 방문자 수나 글별 조회수를 표시하지 않습니다.
5. 커밋 후 `main`에 푸시하여 배포합니다. 관리용 API 키나 비밀번호는 저장소에 넣지 않습니다.

### 통계 확인

관리 화면에 로그인하고 `day`, `week`, `month` 또는 시작일·종료일로 기간을 선택합니다.
`Totals`에서 전체 방문 추이를, `Pages`에서 페이지별 방문 수를 확인합니다.
필터에 `/posts/`를 입력하면 글 경로만 볼 수 있고, 경로를 선택해 글별 통계를 살펴봅니다.

집계는 GoatCounter의 `Sessions` 설정을 켜서 최대 8시간 동안 같은 방문자의 반복 새로고침을 중복 제거합니다.
통계는 실제 사람 수와 완전히 일치하는 값이 아니라 서비스 기준으로 집계한 방문 수입니다.
연결 이전의 방문 기록은 복원되지 않습니다.

Chirpy는 `JEKYLL_ENV=production` 빌드에서만 수집 스크립트를 추가하므로 기본 로컬 미리보기에는 적용되지 않습니다.
통계가 보이지 않으면 사이트 코드, 최근 배포 결과, 브라우저의 광고·추적 차단 여부를 확인하세요.

- [GoatCounter 집계 기준](https://www.goatcounter.com/help/sessions)
- [내 방문 제외 방법](https://www.goatcounter.com/help/skip-dev)

## 참고

- [Chirpy 시작하기](https://chirpy.cotes.page/posts/getting-started/)
- [Chirpy 글 작성 안내](https://chirpy.cotes.page/posts/write-a-new-post/)
