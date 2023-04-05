<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 사이트</title>
</head>
<body>
    <header>
        <section>
            <a href="#">
                <img src="${contextPath}/resources/images/porory.jpg" alt="logo" name="logo" width="300px" height="100px">
            </a>
        </section>
        
        <section>
            <article>
                <form action="#">
                    <fieldset>
                        <input type="search" id="search" name="search" autocomplete="off" placeholder="검색어를 입력해주세요.">
                        <button id="search-btn">검색</button>
                    </fieldset>

                </form>

            </article>

        </section>
        <section></section>
    </header>

    <nav>
        <ul>
            <li>
                <a href="">공지사항/이벤트</a>
            </li>
            <li>
                <a href="">메인</a>
            </li>
            <li>
                <a href="">마음의소리</a>
            </li>
          
        </ul>

    </nav>

    <section>    
         <!--게시판 목록이 나와야함-->
        <h3>게시글</h3>

        <table border="1">
            <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
            </tr>
            </thead>

        </table>



          <table>
            <tr>
                <th>아이디</th>
                <td><input type="text" id="inputId" name="inputId"></td>
                <td><button id="loginBtn3" name="loginBtn">로그인</button></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" id="inputPw" name="inputPw"></td>
            </tr>
            <tr>
              <td><button id="loginBtn1" name="loginBtn">회원가입</button></td>
              <td><button id="loginBtn2" name="loginBtn">비밀번호 찾기</button></td>
              
             
            </tr>
            
        </table>
    </section>


    <section>


    </section>

    <!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
  
  

</body>
</html>