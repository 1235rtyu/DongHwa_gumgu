<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/header.css">
  <title>main</title>
</head>
<body>
    <div class="header">
      <img class="hamburger-icon-svg-1" src="hamburger-icon-svg-10.png" />
    </div>

    <div class="menu" id="hamburgerMenu">
      <ul>
        <li>1</li>
        <li>2</li>
        <li>3</li>
      </ul>
    </div>
    
</body>

<script>
  // 햄버거 아이콘 클릭 시 메뉴 토글
  const hamburgerIcon = document.querySelector('.hamburger-icon-svg-1');
  const menu = document.getElementById('hamburgerMenu');

  hamburgerIcon.addEventListener('click', () => {
    menu.classList.toggle('active'); // 'active' 클래스를 토글하여 애니메이션 효과 적용
  });
</script>

</html>