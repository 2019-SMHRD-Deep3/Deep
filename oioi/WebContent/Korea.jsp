<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Dimension by HTML5 UP</title>
<script type="text/javascript" src="assets/js/jquery-3.4.1.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />

</noscript>
<style>
img#img {
	width: 200px;
	height: 200px;
}

#popimg0 { /* ������ �� -> �̹��� ���� �� */
	max-width: 100%;
	height: auto !important;
}

#popimg1 { /* ������ �� -> �̹��� ���� �� */
	max-width: 100%;
	height: auto !important;
}

#mem {
	position: absolute !important;
	top: 30px !important;
	right: 35px !important;
	display: inline !important;
	float: right !important;
}

#mem li {
	float: right !important;
}

.incom {
	background-color: rgba(91, 100, 113, 0.0175);
}

#wrapper {
	background-repeat: repeat;
	background-size: cover;
}

#videobcg {
	top: 0px;
	left: 0px;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -1000;
	overflow: hidden;
}
</style>

</head>
<body class="is-preload">
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	 	// System.out.print(info.getId() + info.getName());
	%>
	<!-- Wrapper -->
	
			<div id="wrapper" position=relative;>
				<video id="videobcg" autoplay="autoplay" loop="loop" muted="muted"
					style="position: fixed;">
					<source src="video/seoul.mp4" type="video/mp4">
				</video>


				<!-- Header -->

				<ul id="mem">
					<table class="incom" bgcolor="#5b6471">
						<tr>
						<% if (info == null) { %>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Login">�α��� </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Join">ȸ������ </a></td>
						<%} else { %>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="#Login"><%= info.getId()%> </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="LogoutService.do">�α׾ƿ� </a></td>
							<td class="inTag" style="color: rgba(255, 255, 255, 1.0);">
							<a href="update.jsp"> ȸ���������� </a></td>
						<% } %>
						</tr>
					</table>

				</ul>

				<header id="header">
					<nav>
						<ul>
							<li><a href="#intro">���</a></li>
							<li><a href="#work">������</a></li>
							<li><a href="#about">ó������?</a></li>
							<li><a href="#contact">�ڽ� ��õ</a></li>
							<!--<li><a href="#elements">Elements</a></li>-->
						</ul>
					</nav>
				</header>


				<!-- Main -->
				<div id="main">

					<!-- Login -->
					<article id="Login">
						<form action="LoginService.do" method="post">
							<table>
								<tr>
									<td>���̵�</td>
									<td><input placeholder="���̵� �Է�" type="text" name=id></td>
								</tr>
								<tr>
									<td>��й�ȣ</td>
									<td><input placeholder="��й�ȣ �Է�" type="password" name=pw></td>
								</tr>
								<tr>
									<td></td>
									<td><input type=submit value="�α���"> <input
										type=reset value="�ʱ�ȭ"></td>
								</tr>
							</table>
						</form>
					</article>


					<!-- Join -->
					<article id="Join">
						<form action="JoinService.do" method="post">
							<table>
								<tr>
									<td>���̵�</td>
									<td><input id = 'search' placeholder="���̵� �Է� " type="text" name=id>
									</td>
									<td><button type="button" id="btn">�Է�</button></td>
								</tr>
								<tr>
									<td>��й�ȣ</td>
									<td colspan=2><input placeholder="��й�ȣ �Է� "
										type="password" name=pw></td>
								</tr>
								<tr>
									<td>��й�ȣ Ȯ��</td>
									<td colspan=2><input placeholder="��й�ȣ ���Է� "
										type="password" name=pw></td>
								</tr>
								<tr>
									<td>�̸�</td>
									<td colspan=2><input placeholder="��ȭ��ȣ �Է� " type="text"
										name=name></td>
								</tr>
								<tr>
									<td>�̸���</td>
									<td colspan=2><input placeholder="�̸��� �Է� " type="text"
										name=email></td>
								</tr>
								<tr>
									<td></td>
									<td colspan=2><input type=submit value="ȸ������"> <input
										type=reset value="�ʱ�ȭ"></td>
								</tr>
							</table>
						</form>
					</article>



					<!-- Intro -->
					<article id="intro">
						<h2 class="major">����</h2>
						<span class="image main"><img src="images/pic01.jpg" alt="" /></span>
						<p>����Ư���ô� ���ѹα��� �������� �ִ� �����Դϴ�. �ѹݵ� �߾ӿ� ������, �Ѱ��� ���̿� �ΰ� ��������
							������ �ִ�. ���� ���� ������ ������, ���� ���� ������ ���ϵ�, ���� ���� ���ʱ� ������, ���� ���� ������
							����̴�. ��û�� �߱� ������1��(�����1�� 31)�� �ִ�. �ѹݵ��� 0.28%(���� ������ 0.61%)�� �ش��ϴ�
							���̷�, ���ϰ� ����Ÿ� 30.30km, ������ ����Ÿ� 36.78km�̴�. 1394��(���� 3)���� �ѱ��� ������
							�Ǿ� ��ġ���������������ȸ����ȭ�������� �߽����� �Ǿ� �Դ�. 1960��� ���� ���������� �Բ� ����ȭ�� ����Ǹ鼭
							��� �� ���������� �ݰ� 30km ���� �ֺ� �����ǿ� ���������� Ȯ��ǰ� �־�, �Ŵ뵵��(Megalopolis)��
							�ǰ� �ִ�. ���� ����(��Դ) 600���� 1994�⿡ 10�� 28���� ����ù��� ���� �����Ǿ� ���� ���� ��簡
							������ �ִ�. 1988�� �����ø����� ���Ȱ�, 2010�� G20, 2012�� �پȺ�����ȸ�ǰ� ���ȴ�.</p>
						<a href="#work">awesome work</a>.
						<p>������</p>
					</article>

					<!-- Work -->

					<article id="work">
						<h1>���� 10�� ���</h1>
						<h2 class="major1" href="#" style="display: inline;">�ְ�</h2>
						<h2 class="major2" href="#" style="display: inline;">�߰�</h2>



						<div class='display'>
							<span><img id="popimg0" src="img/k1.PNG" alt="" /></span>
							<button class="ten" id="ko1">�溹��</button>
							<button class="ten" id="ko2">��</button>
							<button class="ten" id="ko3">�λ絿</button>
							<button class="ten" id="ko4">�ڿ���</button>
							<button class="ten" id="ko5">â����</button>
							<button class="ten" id="ko6">������</button>
							<button class="ten" id="ko7">63����</button>
							<button class="ten" id="ko8">�������</button>
							<button class="ten" id="ko9">�����ѿ�����</button>
							<button class="ten" id="ko10">�����߾ӹڹ���</button>
						</div>

						<div id='g'>
							<span><img id="popimg1" src="img/k1.PNG" alt="" /></span>
							<button class="next" id="k1">�溹��</button>
							<button class="next" id="k2">ȫ��</button>
							<button class="next" id="k3">�������</button>
							<button class="next" id="k4">���� N Ÿ��</button>
							<button class="next" id="k5">������</button>
							<button class="next" id="k6">û��õ</button>
							<button class="next" id="k7">���μ���</button>
							<button class="next" id="k8">���ǵ� �Ѱ� ����</button>
							<button class="next" id="k9">�Ե�����</button>

						</div>
						<script type="text/javascript">
							$(document).ready(function() {
								$('.display').show(); //�������� �ε��� �� ǥ���� ���
								$('#g').hide(); //�������� �ε��� �� ���� ���
							});
							var btn1 = document.querySelector('.major1');

							btn1.addEventListener('click', function() {
								$('#g').hide();
								$('.display').show();
							});

							var btn2 = document.querySelector('.major2');
							btn2.addEventListener('click', function() {

								$('.display').hide(); //Ŭ�� �� ù ��° ��� ����
								$('#g').show(); //Ŭ�� �� �� ��° ��� ǥ��

							});
						</script>
						<p id="texttext">�����</p>

					</article>



					<!-- About -->
					<article id="about">
						<h2 class="major">����Ʈ �׸�</h2>
						<span class="image main"><img src="images/pic03.jpg" alt="" /></span>
						<p>Lorem ipsum dolor sit amet, consectetur et adipiscing elit.
							Praesent eleifend dignissim arcu, at eleifend sapien imperdiet
							ac. Aliquam erat volutpat. Praesent urna nisi, fringila lorem et
							vehicula lacinia quam. Integer sollicitudin mauris nec lorem
							luctus ultrices. Aliquam libero et malesuada fames ac ante ipsum
							primis in faucibus. Cras viverra ligula sit amet ex mollis mattis
							lorem ipsum dolor sit amet.</p>
					</article>

					<!-- Contact -->
					<article id="contact">
						<h2 class="major">Contact</h2>
						<form method="post" action="#">
							<div class="fields">
								<div class="field half">
									<label for="name">Name</label> <input type="text" name="name"
										id="name" />
								</div>
								<div class="field half">
									<label for="email">Email</label> <input type="text"
										name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="4"></textarea>
								</div>
							</div>
							<ul class="actions">
								<li><input type="submit" value="Send Message"
									class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</form>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span
									class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span
									class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span
									class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span
									class="label">GitHub</span></a></li>
						</ul>
					</article>

					<!-- Elements -->
					<article id="elements">
						<h2 class="major">Elements</h2>

						<section>
							<h3 class="major">Text</h3>
							<p>
								This is <b>bold</b> and this is <strong>strong</strong>. This is
								<i>italic</i> and this is <em>emphasized</em>. This is <sup>superscript</sup>
								text and this is <sub>subscript</sub> text. This is <u>underlined</u>
								and this is code:
								<code>for (;;) { ... }</code>
								. Finally, <a href="#">this is a link</a>.
							</p>
							<hr />
							<h2>Heading Level 2</h2>
							<h3>Heading Level 3</h3>
							<h4>Heading Level 4</h4>
							<h5>Heading Level 5</h5>
							<h6>Heading Level 6</h6>
							<hr />
							<h4>Blockquote</h4>
							<blockquote>Fringilla nisl. Donec accumsan interdum
								nisi, quis tincidunt felis sagittis eget tempus euismod.
								Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
								adipiscing eu felis iaculis volutpat ac adipiscing accumsan
								faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum
								dolor sit amet nullam adipiscing eu felis.</blockquote>
							<h4>Preformatted</h4>
							<pre>
						<code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code>
					</pre>
						</section>

						<section>
							<h3 class="major">Lists</h3>

							<h4>Unordered</h4>
							<ul>
								<li>Dolor pulvinar etiam.</li>
								<li>Sagittis adipiscing.</li>
								<li>Felis enim feugiat.</li>
							</ul>

							<h4>Alternate</h4>
							<ul class="alt">
								<li>Dolor pulvinar etiam.</li>
								<li>Sagittis adipiscing.</li>
								<li>Felis enim feugiat.</li>
							</ul>

							<h4>Ordered</h4>
							<ol>
								<li>Dolor pulvinar etiam.</li>
								<li>Etiam vel felis viverra.</li>
								<li>Felis enim feugiat.</li>
								<li>Dolor pulvinar etiam.</li>
								<li>Etiam vel felis lorem.</li>
								<li>Felis enim et feugiat.</li>
							</ol>
							<h4>Icons</h4>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github"><span
										class="label">Github</span></a></li>
							</ul>

							<h4>Actions</h4>
							<ul class="actions">
								<li><a href="#" class="button primary">Default</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
							<ul class="actions stacked">
								<li><a href="#" class="button primary">Default</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
						</section>

						<section>
							<h3 class="major">Table</h3>
							<h4>Default</h4>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td>Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>

							<h4>Alternate</h4>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>Name</th>
											<th>Description</th>
											<th>Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Item One</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Two</td>
											<td>Vis ac commodo adipiscing arcu aliquet.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Three</td>
											<td>Morbi faucibus arcu accumsan lorem.</td>
											<td>29.99</td>
										</tr>
										<tr>
											<td>Item Four</td>
											<td>Vitae integer tempus condimentum.</td>
											<td>19.99</td>
										</tr>
										<tr>
											<td>Item Five</td>
											<td>Ante turpis integer aliquet porttitor.</td>
											<td>29.99</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2"></td>
											<td>100.00</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</section>

						<section>
							<h3 class="major">Buttons</h3>
							<ul class="actions">
								<li><a href="#" class="button primary">Primary</a></li>
								<li><a href="#" class="button">Default</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#" class="button">Default</a></li>
								<li><a href="#" class="button small">Small</a></li>
							</ul>
							<ul class="actions">
								<li><a href="#"
									class="button primary icon solid fa-download">Icon</a></li>
								<li><a href="#" class="button icon solid fa-download">Icon</a></li>
							</ul>
							<ul class="actions">
								<li><span class="button primary disabled">Disabled</span></li>
								<li><span class="button disabled">Disabled</span></li>
							</ul>
						</section>

						<section>
							<h3 class="major">Form</h3>
							<form method="post" action="#">
								<div class="fields">
									<div class="field half">
										<label for="demo-name">Name</label> <input type="text"
											name="demo-name" id="demo-name" value=""
											placeholder="Jane Doe" />
									</div>
									<div class="field half">
										<label for="demo-email">Email</label> <input type="email"
											name="demo-email" id="demo-email" value=""
											placeholder="jane@untitled.tld" />
									</div>
									<div class="field">
										<label for="demo-category">Category</label> <select
											name="demo-category" id="demo-category">
											<option value="">-</option>
											<option value="1">Manufacturing</option>
											<option value="1">Shipping</option>
											<option value="1">Administration</option>
											<option value="1">Human Resources</option>
										</select>
									</div>
									<div class="field half">
										<input type="radio" id="demo-priority-low"
											name="demo-priority" checked> <label
											for="demo-priority-low">Low</label>
									</div>
									<div class="field half">
										<input type="radio" id="demo-priority-high"
											name="demo-priority"> <label for="demo-priority-high">High</label>
									</div>
									<div class="field half">
										<input type="checkbox" id="demo-copy" name="demo-copy">
										<label for="demo-copy">Email me a copy</label>
									</div>
									<div class="field half">
										<input type="checkbox" id="demo-human" name="demo-human"
											checked> <label for="demo-human">Not a robot</label>
									</div>
									<div class="field">
										<label for="demo-message">Message</label>
										<textarea name="demo-message" id="demo-message"
											placeholder="Enter your message" rows="6"></textarea>
									</div>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send Message"
										class="primary" /></li>
									<li><input type="reset" value="Reset" /></li>
								</ul>
							</form>
						</section>

					</article>

				</div>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. Design: <a href="https://html5up.net">HTML5
							UP</a>.
					</p>
				</footer>

			</div>

			<p id="texttext1">�溹��</p>
			<p id="texttext2">���ѹα����� ���� ��� ���� ���� ����Ư���ø� ��¡�ϴ� ��ȭ���̴�. ���� �ô뿡��
				���ð������� ���������� �湫�ΰ� ����������� �����ϸ� ���������� ���� �����·� ���ϰ� �Ǿ� ���ѹα� �ְ��� ��ȭ����
				�ߵ��� �ϰ� �Ǿ���. ���� ������ �����ڶ�� �Ҹ� ������ �Ŵ��� ���� ��ȭ�� �����Ǿ� �մµ�, ���� ���� ��ȭ���� ����
				��ǰ,�귣�� ����� ���ƴ϶� �������Ա��� �پ��� ������ �־� ���ο� ����ȭ ���ִٰ� ���� �� �ִ�. ���� ������ ���ΰ�
				�԰� �����Ÿ�,���Ÿ� ���� �־� ������ �Ӹ��ƴ϶� �ܱ��ε鵵 �ѱ����� ��� �� �ִ� ������ �����̶� �Ҹ��� �ִ�.~</p>
			<p id="texttext3">����~</p>
			<p id="texttext4">����~</p>
			<p id="texttext5">����~</p>
			<p id="texttext6">����~</p>
			<p id="texttext7">����~</p>
			<p id="texttext8">����~</p>
			<p id="texttext9">����~</p>
			<p id="texttext10">����~</p>

			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/jquery-3.4.1.min.js"></script>

			<!-- BG -->
			<div id="bg"></div>
			<script type="text/javascript">
				var text = document.querySelector('#texttext');
				var popimgs = document.getElementById('popimg0');
				var test1 = document.querySelector('#texttext1').textContent;
				var test2 = document.querySelector('#texttext2').textContent;
				var test3 = document.querySelector('#texttext3').textContent;
				var test4 = document.querySelector('#texttext4').textContent;
				var test5 = document.querySelector('#texttext5').textContent;
				var test6 = document.querySelector('#texttext6').textContent;
				var test7 = document.querySelector('#texttext7').textContent;
				var test8 = document.querySelector('#texttext8').textContent;
				var test9 = document.querySelector('#texttext9').textContent;
				var test10 = document.querySelector('#texttext10').textContent;
				// ��ư 1
				$('#ko1:button').on('click', function() {

					$('#popimg0').attr('src', 'img/k2.PNG');
					$('#texttext').html(test1);
				});
				// ��ư2
				$('#ko2:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k3.PNG');
					$('#texttext').html(test2);
				});
				// ��ư3
				$('#ko3:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k4.PNG');
					$('#texttext').html(test3);
				});
				// ��ư4
				$('#ko4:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k6.PNG');
					$('#texttext').html(test4);
				});
				// ��ư5
				$('#ko5:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k6.PNG');
					$('#texttext').html(test5);
				});
				// ��ư6
				$('#ko6:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k7.PNG');
					$('#texttext').html(test6);
				});
				// ��ư7
				$('#ko7:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k8.jpg');
					$('#texttext').html(test7);
				});
				// ��ư8
				$('#ko8:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k9.PNG');
					$('#texttext').html(test8);
				});
				// ��ư9
				
				$('#ko9:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k10.PNG');
					$('#texttext').html(test9);
				});
				// ��ư10
				$('#ko10:button').on('click', function() {
					$('#popimg0').attr('src', 'img/k11.PNG');
					$('#texttext').html(test10);
				});
			</script>


			<p id="texttext11">1��</p>
			<p id="texttext22">2��</p>
			<p id="texttext33">3��</p>
			<p id="texttext44">4��</p>
			<p id="texttext55">5��</p>
			<p id="texttext66">6��</p>
			<p id="texttext77">7��</p>
			<p id="texttext88">8��</p>
			<p id="texttext99">9��</p>



			<div id="bg"></div>
			<script type="text/javascript">
				var text = document.querySelector('#texttext');
				var popimgs = document.getElementById('popimg0');
				var test11 = document.querySelector('#texttext11').textContent;
				var test22 = document.querySelector('#texttext22').textContent;
				var test33 = document.querySelector('#texttext33').textContent;
				var test44 = document.querySelector('#texttext44').textContent;
				var test55 = document.querySelector('#texttext55').textContent;
				var test66 = document.querySelector('#texttext66').textContent;
				var test77 = document.querySelector('#texttext77').textContent;
				var test88 = document.querySelector('#texttext88').textContent;
				var test99 = document.querySelector('#texttext99').textContent;
				// ��ư 1
				$('#k1:button').on('click', function() {

					$('#popimg1').attr('src', 'img/1.png');

					$('#texttext').html(test11);
				});
				// ��ư2
				$('#k2:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k3.PNG');
					$('#texttext').html(test22);
				});
				// ��ư3
				$('#k3:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k4.PNG');
					$('#texttext').html(test33);
				});
				// ��ư4
				$('#k4:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k6.PNG');
					$('#texttext').html(test44);
				});
				// ��ư5
				$('#k5:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k6.PNG');
					$('#texttext').html(test55);
				});
				// ��ư6
				$('#k6:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k7.PNG');
					$('#texttext').html(test66);
				});
				// ��ư7
				$('#k7:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k8.jpg');
					$('#texttext').html(test77);
				});
				// ��ư8
				$('#k8:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k9.PNG');
					$('#texttext').html(test88);
				});
				// ��ư9
				$('#k9:button').on('click', function() {
					$('#popimg1').attr('src', 'img/k10.PNG');
					$('#texttext').html(test99);
				});
			</script>
			
			
			<script type="text/javascript">
			
			$('#btn').on('click',play);
			
      function play(){
         var id = $('#search').val();
         console.log(id);
         
         $.ajax({
            url : "IdCheckService.do",
            type : "POST",
            dataType : "json",
            data : 'id='+id,
            success : function(result){
            	if(result == true)
            		alert("���̵� �ߺ��Ǿ����ϴ�.");
            	else
            		alert("��밡���� ���̵��Դϴ�.");
            },
            error : function(){
            	console.log(2);
            }
         });
      }
   
            
   </script>
</body>
</html>