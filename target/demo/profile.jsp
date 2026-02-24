<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>첫번째 포트 폴리오</title>
    <style>
        /* 전체 선택자 : 전체 태그가 공통으로 적용되어질 값을 선택할 때 사용.  */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #b9b9b9;
            color: #2f3640;
            font-family: 'Malgun Gothic', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px;
        }
        /* [2] 프로필 카드: Flexbox로 내부 정렬 */
        #profile-card {
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            display: flex; /* 가로 정렬의 시작 */
            flex-direction: column;
            gap: 30px;     /* 부품 간의 간격 */
            align-items: center;
            width: 100%;
            max-width: 600px;
        }

        /* [3] 이미지 영역 꾸미기 */
        .photo-area {
            width: 120px;
            height: 120px;
            background: #dcdde1;
            border-radius: 50%;
            overflow: hidden;  
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

.photo-area img {
    width: 100%;
    height: 100%;
    object-fit: cover;         /* 찌그러지지 않고 꽉 차게 */
    display: block;            /* 이미지 아래 여백(미세한 틈) 방지 */
}
        /* [4] 버튼 스타일 */
        button {
            background: #75a7ff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }
        button:hover {
    background: #2f7afd;   /* 마우스 올렸을 때 색 */
    color: #1e1e1e;        /* 글자색 변경 */
    transition: 0.3s;      /* 부드럽게 변함 */
}
        /* 메탈릭 카드 공통 스타일 */
/* 진짜 철(브러시드 스틸) 카드 */
.metal-card{
  position: relative;
  width: 100%;
  max-width: 600px;
  padding: 30px;
  margin-top: 30px;
  border-radius: 22px;
  overflow: hidden;

  background:
    /* 빛 반사(하이라이트) */
    radial-gradient(120% 80% at 20% 0%, rgba(255,255,255,0.85) 0%, rgba(255,255,255,0) 55%),
    radial-gradient(100% 60% at 80% 20%, rgba(255,255,255,0.35) 0%, rgba(255,255,255,0) 60%),
    radial-gradient(120% 90% at 50% 120%, rgba(0,0,0,0.20) 0%, rgba(0,0,0,0) 60%),

    /* 브러시 결(철판 결) */
    repeating-linear-gradient(
      90deg,
      rgba(255,255,255,0.10) 0px,
      rgba(255,255,255,0.10) 1px,
      rgba(0,0,0,0.07) 2px,
      rgba(0,0,0,0.07) 3px
    ),

    /* 메탈 베이스 */
    linear-gradient(145deg, #f2f3f5 0%, #cfd3d8 35%, #f7f8fa 60%, #b9bec6 100%);

  border: 1px solid rgba(255,255,255,0.35);
  box-shadow:
    0 18px 35px rgba(0,0,0,0.18),
    inset 0 1px 0 rgba(255,255,255,0.55),
    inset 0 -1px 0 rgba(0,0,0,0.15);
}

/* 미세 입자감(질감 핵심) */
.metal-card::before{
  content:"";
  position:absolute;
  inset:0;
  pointer-events:none;

  background:
    repeating-linear-gradient(
      0deg,
      rgba(255,255,255,0.02) 0px,
      rgba(255,255,255,0.02) 1px,
      rgba(0,0,0,0.02) 2px,
      rgba(0,0,0,0.02) 3px
    ),
    radial-gradient(circle at 30% 40%, rgba(0,0,0,0.06) 0%, rgba(0,0,0,0) 45%),
    radial-gradient(circle at 70% 60%, rgba(255,255,255,0.06) 0%, rgba(255,255,255,0) 50%);

  opacity: 0.55;
  mix-blend-mode: overlay;
}

/* 가장자리 반짝 라인 */
.metal-card::after{
  content:"";
  position:absolute;
  inset:1px;
  border-radius: 21px;
  pointer-events:none;
  background: linear-gradient(135deg, rgba(255,255,255,0.55), rgba(255,255,255,0) 40%, rgba(0,0,0,0.08));
  opacity: 0.35;
}

/* 스킬 리스트 정리 (skills-card에만 적용) */
#skills-card ul{
  list-style:none;
  margin-top: 15px;
  padding-left:0;
}
#skills-card li{
  padding:10px 0;
  border-bottom:1px solid rgba(0,0,0,0.12);
}
#skills-card li:last-child{
  border-bottom:none;
}


/* 리스트 스타일 조금 정리 */
#skills-card ul {
    list-style: none;
    margin-top: 15px;
}

#skills-card li {
    padding: 8px 0;
    border-bottom: 1px solid rgba(0,0,0,0.1);
}
    </style>
</head>

<body>
    <%-- 1단계 html을 통한 데이터의 뼈대 구성 --%>
    <header>
        <h1>My Coding Journey</h1>
    </header>
    <%-- 실제 보여줄 상세 내용 --%>
    <main>
        <article id="profile-card">
            <div class='photo-area'>
            <img src="/demo/html/images/다운로드.jfif" alt="프로필 사진">
            </div>
            <div class='info-area'>
                <h2>황민창</h2>
                <p>부자가 되고싶은 개발자</p>
                <button id='msg-btn'>오늘의 한마디</button>
                <p id="display-msg"></p>
            </div>
            
        </article>
        <section id="skills-card" class="metal-card">
                <h3>My skill</h3>
                <ul>
                    <li>침대에 누워있기</li>
                    <li>하루종일 폰만 보기</li>
                    <li>데굴데굴 굴러다니기</li>
                </ul>
            </section>
    </main>
    <footer>
        <p>&copy; 2026 minchang develop portfolio</p>
    </footer>
    <%-- 3단계 : 자바 스크립트를 통한 동적 기능 구현 --%>
    <script>
        // 1. HTML에서 동적으로 작업한 요소를 찾기
    const msgBtn = document.getElementById('msg-btn');
    const displayArea = document.getElementById('display-msg');
        // 2. 찾은 요소에 적용할 내용을 작성
        const messages = [
        "나는 생각한다, 고로 존재한다.",
        "그럼에도 불구하고, 지구는 돈다.",
        "예술은 거짓말이지만, 우리로 하여금 진실을 깨닫게 한다",
        "상상력은 지식보다 중요하다",
        "우리를 죽이지 못하는 것은 우리를 더 강하게 만든다."
        ];
        // 3. 이벤트를 위한 처리
        msgBtn.addEventListener('click',function(){
            // 랜덤한 메세지 출력
            const randomIndex = Math.floor(Math.random() *messages.length); // 5.982344 -> 5
            // 화면에 표시
            displayArea.innerText = messages[randomIndex];
            // 강조 효과를 위해 색상을 변경
            displayArea.style.color = '#000000';
            displayArea.style.fontWeight = 'bold';
        });
    </script>
</body>
</html>