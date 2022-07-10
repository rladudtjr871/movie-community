<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Movie Community</title>
    <%@ include file="/WEB-INF/inc/asset.jsp"%>
    <style>
        h2, h5 {
            color: white;
        }

        h2 {
            text-align: center;
        }

        #box {
            width: 500px;
            margin: 0 auto;
        }

        #login-box > input, h2 {
            margin-bottom: 20px;
        }

        #login-box > input {
            height: 50px;
        }

        #labels span a {
            /*font-size: 1.1em;*/
            margin-left: 40px;
            margin-right: 30px;
            color: white;
        }

        #findid-box > div {
            margin-bottom : 20px;
        }

        #findid-box > div > input {
            height: 50px;
        }

        #btn-box {
            margin-bottom: 50px;
        }

    </style>
</head>
<body id="body">
<main>
    <%@ include file="/WEB-INF/inc/header.jsp"%>
    <section>
        <div id="box">
            <h2>아이디 찾기</h2>
            <form action="/movie/member/findid.do" method="post">
                <div id="findid-box">
                    <div>
                        <h5>이름</h5>
                        <input type="text" name="name" id="name" class="form-control" required>
                    </div>
                    <div>
                        <h5>전화번호</h5>
                        <input type="text" name="tel" id="tel" class="form-control" required>
                    </div>
                    <div class="d-grid gap-2" id="btn-box">
                        <input type="submit" value="아이디 찾기" id="findid-btn" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>
    </section>
</main>
<script>
    <c:if test="${not empty id}">
        alert('가입하신 아이디는 ${id} 입니다.');
        location.href="/movie/member/login.do";
    </c:if>

    <c:if test="${noMember == 'y'}">
    alert('일치하는 회원 정보가 존재하지 않습니다.');
    location.href="/movie/member/findid.do";
    </c:if>
</script>
</body>
</html>
