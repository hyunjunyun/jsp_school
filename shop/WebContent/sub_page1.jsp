<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">
<style>
td {
	text-align: left;
}
</style>
<script>
	function check() {
		var code = document.form.ccode.value;
		var name = document.getElementById("name").value;
		var year = document.getElementById("year").value;
		var month = document.getElementById("month").value;
		var day = document.getElementById("day").value;

		var gender = document.form.gender.length;
		var checkCount = 0;
		for (var i = 0; i < gender; i++) {
			if (document.form.gender[i].checked == true) {
				checkCount++;
				break;
			}
		}

		var tl = document.getElementById("tl").value;
		var gr = document.getElementById("group").value;

		if (code == "") {
			alert("참가번호가 입력되지 않았습니다!")
			form.ccode.focus();
			return false;
		} else if (code.length > 4) {
			alert("입력형식을 맞추어주세요!")
			form.ccode.focus();
			return false;
		}

		if (name == "") {
			alert("참가자명이 입력되지 않았습니다!")
			form.name.focus();
			return false;
		}
		if (year == "" || month == "" || day == "") {
			alert("생년월일이 입력되지 않았습니다!")
			form.year.focus();
			return false;
		}
		if (checkCount == 0) {
			alert("성별이 입력되지 않았습니다!")
			form.gender.focus();
			return false;
		}
		if (tl == "") {
			alert("특기가 입력되지 않았습니다!")
			form.tl.focus();
			return false;
		}

		if (gr == "") {
			alert("소속사가 입력되지 않았습니다!")
			form.group.focus();
			return false;
		}

		return true;
	}

	function resetFunc() {
		alert("정보를 지우고 처음부터 다시 입력합니다!");
	}
</script>
</head>
<body>
	<header><%@include file="./header.jsp"%>
	</header>

	<section>
		<h1>오디션 등록</h1>

		<form action="./sub_page1_action.jsp" name="form">
			<table border="1">
				<tr>
					<td>참가번호</td>
					<td><input type="text" id="ccode" name="ccode" value="">*참가번호는
						(A000)4자리입니다</td>
				</tr>

				<tr>
					<td>참가자명</td>
					<td><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" id="year" name="year">년<input
						type="text" id="month" name="month">월<input type="text"
						id="day" name="day">일</td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender" value="M">남성 <input
						type="radio" name="gender" value="F">여성</td>
				</tr>
				<tr>
					<td>특기</td>
					<td><select id="tl" name="tl">
							<option value="">특기선택</option>
							<option value="1">보컬</option>
							<option value="2">댄스</option>
							<option value="3">렙</option>
					</select></td>
				</tr>
				<tr>
					<td>소속사</td>
					<td><input type="text" id="group" name="group"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><input
						type="submit" value="오디션등록" onclick="return check();"><input
						type="reset" value="다시쓰기" onclick="return resetFunc();"></td>
				</tr>
			</table>
		</form>
	</section>


	<footer>
		<%@include file="./footer.jsp"%></footer>
</body>
</html>