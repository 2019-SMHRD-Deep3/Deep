<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
div table {
	margin: 0px auto;
	text-align: center;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div>
		<table border=1px solid black>
			<tr>
				<td>����</td>
				<td>
				<ol>
					<li> <input type="radio" value="15-20��" name="age" id="age">15-20��</li>
					<li> <input type="radio" value="21-30��" name="age" id="age">21-30��</li>
					<li><input type="radio" value="31-40��" name="age" id="age">31-40�� </li>
					<li> <input type="radio" value="41-50��" name="age" id="age">41-50��</li>
					<li> <input type="radio" value="51-60��" name="age" id="age">51-60��</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<ol>
					<li><input type="radio" value="����" name="gender" id="gender">���� </li>
					<li><input type="radio" value="����" name="gender" id="gender">���� </li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<ol>
					<li><input type="radio" value="��Ÿ" name="nation" id="nation">��Ÿ </li>
					<li><input type="radio" value="�븸" name="nation" id="nation">�븸</li>
					<li> <input type="radio" value="����" name="nation" id="nation">����</li>
					<li> <input type="radio" value="���þ�" name="nation" id="nation">���þ�</li>
					<li> <input type="radio" value="�����̽þ�" name="nation" id="nation">�����̽þ�</li>
					<li> <input type="radio" value="����" name="nation" id="nation">����</li>
					<li> <input type="radio" value="�̱�" name="nation" id="nation">�̱�</li>
					<li> <input type="radio" value="��Ʈ��" name="nation" id="nation">��Ʈ��</li>
					<li> <input type="radio" value="�̰�����" name="nation" id="nation">�̰�����</li>
					<li> <input type="radio" value="����" name="nation" id="nation">����</li>
					<li> <input type="radio" value="�ε�" name="nation" id="nation">�ε�</li>
					<li> <input type="radio" value="�ε��׽þ�" name="nation" id="nation">�ε��׽þ�</li>
					<li> <input type="radio" value="�Ϻ�" name="nation" id="nation">�Ϻ�</li>
					<li> <input type="radio" value="�߱�" name="nation" id="nation">�߱�</li>
					<li> <input type="radio" value="�ߵ�" name="nation" id="nation">�ߵ�</li>
					<li> <input type="radio" value="ĳ����" name="nation" id="nation">ĳ����</li>
					<li> <input type="radio" value="�±�" name="nation" id="nation">�±�</li>
					<li> <input type="radio" value="������" name="nation" id="nation">������</li>
					<li> <input type="radio" value="�ʸ���" name="nation" id="nation">�ʸ���</li>
					<li> <input type="radio" value="ȣ��" name="nation" id="nation">ȣ��</li>
					<li> <input type="radio" value="ȫ��" name="nation" id="nation">ȫ��</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>�����ϴ� ��</td>
				<td>
				<ol>
				<li> <input type="radio" value="1��" name="month" id="month">1��</li>
				<li> <input type="radio" value="2��" name="month" id="month">2�� </li>
				<li> <input type="radio" value="3��" name="month" id="month">3�� </li>
				<li> <input type="radio" value="4��" name="month" id="month">4�� </li>
				<li> <input type="radio" value="5��" name="month" id="month">5��</li>
				<li> <input type="radio" value="6��" name="month" id="month">6��</li>
				<li> <input type="radio" value="7��" name="month" id="month">7��</li>
				<li> <input type="radio" value="8��" name="month" id="month">8��</li>
				<li> <input type="radio" value="9��" name="month" id="month">9��</li>
				<li> <input type="radio" value="10��" name="month" id="month">10��</li>
				<li><input type="radio" value="11��" name="month" id="month">11��</li>
				<li><input type="radio" value="12��" name="month" id="month">12�� </li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>�������� ����</td>
				<td>
				<ol>
					<li> <input type="radio" value="Air-tel" name="trip_type" id="trip_type">Air-tel</li>
					<li> <input type="radio" value="��������" name="trip_type" id="trip_type">��������</li>
					<li> <input type="radio" value="��ü����" name="trip_type" id="trip_type">��ü����</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>������ �Ѵٸ� ���� 1���� ǰ��</td>
				<td>
				<ol>
					<li> <input type="radio" value="�����" name="item" id="item">�����</li>
					<li> <input type="radio" value="��Ÿ" name="item" id="item">��Ÿ</li>
					<li> <input type="radio" value="���" name=item id="item">���</li>
					<li> <input type="radio" value="����/�Ǽ��縮" name="item" id="item">����/�Ǽ��縮</li>
					<li> <input type="radio" value="�ķ�ǰ" name="item" id="item">�ķ�ǰ</li>
					<li> <input type="radio" value="�Ź߷�" name="item" id="item">�Ź߷�</li>
					<li> <input type="radio" value="�Ƿ�" name="item" id="item">�Ƿ�</li>
					<li> <input type="radio" value="�λ�,�Ѿ���" name="item" id="item">�λ�,�Ѿ��� </li>
					<li> <input type="radio" value="����ο�ǰ,ĥ��,����ǰ" name="item" id="item">����ο�ǰ,ĥ��,����ǰ</li>
					<li> <input type="radio" value="�ַ�" name="item" id="item">�ַ�</li>
					<li> <input type="radio" value="�ѷ���Ÿ���û�ǰ" name="item" id="item">�ѷ���Ÿ���û�ǰ</li>
					<li> <input type="radio" value="���,ȭ��ǰ" name="item" id="item">���,ȭ��ǰ</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>���ڽü� ����</td>
				<td>
				<ol>
					<li> <input type="radio" value="�Խ�Ʈ�Ͽ콺/ȣ����" name="stay" id="stay">�Խ�Ʈ�Ͽ콺/ȣ����</li>
					<li> <input type="radio" value="��Ÿ" name="stay" id="stay">��Ÿ</li>
					<li> <input type="radio" value="����/����" name="stay" id="stay">����/����</li>
					<li> <input type="radio" value="�ιڡ���������" name="stay" id="stay">�ιڡ���������</li>
					<li><input type="radio" value="ģô�Ǵ�ģ����" name="stay" id="stay">ģô�Ǵ�ģ����</li>
					<li> <input type="radio" value="�ܵ�,���,����������" name="stay" id="stay">�ܵ�,���,����������</li>
					<li> <input type="radio" value="�б�/ȸ������,������" name="stay" id="stay">�б�/ȸ������,������</li>
					<li> <input type="radio" value="ȣ��" name="stay" id="stay">ȣ��</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td>�����ϴ� Ȱ��</td>
				<td>
				<ol>				
					<li> <input type="radio" value="���/�����������湮" name="act" id="act">���/�����������湮</li>
					<li> <input type="radio" value="����,�μ�,���,��������������" name="act" id="act">����,�μ�,���,��������������</li>
					<li> <input type="radio" value="��Ÿ" name="act" id="act">��Ÿ</li>
					<li> <input type="radio" value="���̰���/�׸���ũ" name="act" id="act">���̰���/�׸���ũ</li>
					<li> <input type="radio" value="���/��ȭ�Կ����湮" name="act" id="act">���/��ȭ�Կ����湮</li>
					<li> <input type="radio" value="������Ȱ��" name="act" id="act">������Ȱ��</li>
					<li> <input type="radio" value="�ڹ���,���ð��湮" name="act" id="act">�ڹ���,���ð��湮</li>
					<li> <input type="radio" value="��Ƽ����" name="act" id="act">��Ƽ����</li>
					<li> <input type="radio" value="����" name="act" id="act">����</li>
					<li> <input type="radio" value="������Ȱ��" name="act" id="act">������Ȱ��</li>
					<li> <input type="radio" value="����" name="act" id="act">����</li>
					<li> <input type="radio" value="��Ƽ��������̿�" name="act" id="act">��Ƽ��������̿�</li>
					<li> <input type="radio" value="�ĵ�������" name="act" id="act">�ĵ�������</li>
					<li> <input type="radio" value="��������" name="act" id="act">��������</li>
					<li> <input type="radio" value="����������������" name="act" id="act">����������������</li>
					<li> <input type="radio" value="����/����" name="act" id="act">����/����</li>
					<li> <input type="radio" value="�Ƿ����" name="act" id="act">�Ƿ����</li>
					<li> <input type="radio" value="�ڿ��������" name="act" id="act">�ڿ��������</li>
					<li> <input type="radio" value="���빮ȭü��" name="act" id="act">���빮ȭü��</li>
					<li> <input type="radio" value="�޾�,�޽�" name="act" id="act">�޾�,�޽�</li>
				</ol>
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<button type="button" name="button" id="radioButton">Let's Go Seoul</button>
				</td>
			</tr>
			<tr>
				<td colspan=2><br> ����� �ٶ�� ���� : <span id='result'></span></td>
			</tr>
		</table>
	</div>




	<script type="text/javascript">
	        $('#radioButton').click(function () {
	            // getter
	            var age = $('input[name="age"]:checked').val();
	  			var gender = $('input[name="gender"]:checked').val()
	  			var nation = $('input[name="nation"]:checked').val()
	  			var month = $('input[name="month"]:checked').val()
	  			var trip_type = $('input[name="trip_type"]:checked').val()
	  			var item = $('input[name="item"]:checked').val()
	  			var stay = $('input[name="stay"]:checked').val()
	  			var act = $('input[name="act"]:checked').val()
	            
	            
	            
	            
		  		$.ajax({
		  			url : "http://localhost:9000/re/" + age + "/" + gender + "/" + nation + "/" + month + "/" + trip_type + "/" + item
		  					+ "/" + stay + "/" + act,
		  			method : "POST",
		  			success : function(rs) {
		  				if (rs.result == "DMC,�����Ű����") {
		  					$('#result').text('DMC, �����Ű����')
		  				} else if (rs.result == "���μ���") {
		  					$('#result').text('���μ���')
		  				} else if (rs.result == "������") {
		  					$('#result').text('������')
		  				} else if (rs.result == "��ȭ������") {
		  					$('#result').text('��ȭ�� ����')
		  				} else if (rs.result == "���빮�м�Ÿ��") {
		  					$('#result').text('���빮 �м�Ÿ��')
		  				} else if (rs.result == "��,���빮,��â") {
		  					$('#result').text('��, ���빮, ��â')
		  				} else if (rs.result == "����,ȫ���ֺ�") {
		  					$('#result').text('����, ȫ���ֺ�')
		  				} else if (rs.result == "���ǵ�(63����)") {
		  					$('#result').text('���ǵ� (63����)')
		  				} else if (rs.result == "���¿�(���¿� ���� ���İŸ�,�ѳ���)") {
		  					$('#result').text('���¿� (���¿� ���� ���İŸ�, �ѳ���)')
		  				} else if (rs.result == "���") {
		  					$('#result').text('���')
		  				} else if (rs.result == "����,û��") {
		  					$('#result').text('����, û��')
		  				} else if (rs.result == "û�㵿,�б�����") {
		  					$('#result').text('û�㵿, �б�����')
		  				} else if (rs.result == "�ڿ���") {
		  					$('#result').text('�ڿ���')
		  				} else if (rs.result == "�Ѱ�,������") {
		  					$('#result').text('�Ѱ�, ������')
		  				} else{
		  					$('#result').text('���� �����߻�')
		  				}
		  			}
	        });
	});
	</script>
</body>
</html>