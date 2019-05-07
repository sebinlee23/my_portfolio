<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sebin Lee</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		
		<link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
		<script>
			$(document).ready(function(){
				$('.connect').hover(function(){
	                $(this).css('background-color','#42dcf4');
	            }, function() {
	                $(this).css('background-color', 'transparent');
	            });
				
				
				$('#about-link').click(function (){
					$('html, body').animate({
						scrollTop: $("#scroll-about").offset().top
					    }, 1000);
				});
				
				$('#projects-link').click(function (){
					$('html, body').animate({
						scrollTop: $("#scroll-projects").offset().top
					    }, 1000);
				});
				
				$('#contact-link').click(function (){
					$('html, body').animate({
						scrollTop: $("#scroll-contact").offset().top
					    }, 1000);
				});
				
				$('#main-link').click(function (){
					$('html, body').animate({
						scrollTop: $("#scroll-top").offset().top
					    }, 1000);
				});
				
				$('.footer-connect').hover(function(){
	                $(this).css('background-color','#3cfca1');
	            }, function() {
	                $(this).css('background-color', 'transparent');
	            });
				
				
				$('.resume').tooltip();
				
				
				$('#truegrit').hover(function(){
	                $('#truegrit').attr('src','/images/truegrit2.png');
	            }, function() {
	                $('#truegrit').attr('src', '/images/truegrit.png');
	            });
				
				$('#choices').hover(function(){
	                $('#choices').attr('src','/images/choices2.png');
	            }, function() {
	                $('#choices').attr('src', '/images/choices1.png');
	            });
				
				$(document).ready(function(){
				    $('.modal').each(function(){
				            var src = $(this).find('iframe').attr('src');

				        $(this).on('click', function(){

				            $(this).find('iframe').attr('src', '');
				            $(this).find('iframe').attr('src', src);

				        });
				    });
				});
				
				
			});
		</script>
	</head>
	<body>
		<div id="scroll-top"></div>
		<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark" id="nav_bar">
	  		<a class="navbar-brand" id="main-link">SEBIN LEE</a>
	  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    		<span id="menu_button">MENU</span> <span class="navbar-toggler-icon"></span>
	  		</button>
	  		<div class="collapse navbar-collapse" id="navbarText">
	    		<ul class="navbar-nav mr-auto">
					<li class="nav-item">
						<a class="nav-link" id="about-link">ABOUT</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="projects-link">PROJECTS</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="contact-link">CONTACT</a>
					</li>
	    		</ul>
	    		<span class="navbar-text">
	    			<a href="https://linkedin.com/in/sebinlee23/" target="_blank"><img class="connect" src="/images/in.png" alt="linkedin_logo"></a>
	    			<a href="https://github.com/sebinlee23" target="_blank"><img class="connect" src="/images/git.png" alt="github_logo"></a>
	    			<a href="https://drive.google.com/open?id=1GyPSZLxvtsb9HMipcC5SBu56pbbp_PiI" target="_blank" class="resume" title="My Resume"><img class="connect" src="/images/resume.png" alt="linkedin_logo"></a>
	    		</span>
	  		</div>
		</nav>
		<div id="main">
			<h4><c:out value="${success}"/></h4>
			<img id="profile_pic" src="/images/profile.jpeg">
			<h1>SEBIN LEE</h1>
			<h3>Full Stack Web Developer</h3>
			<div id="scroll-about"></div>
		</div>
		<div id="about">
			<h2>ABOUT</h2>
			<div id="about-wrapper">
				<div class="about-content" id="about-text">
					<p>I am a diligent full stack developer with an experience of creating and deploying web applications using Python, Javascript, and Java. My <span class="highlight">previous experience in news production</span> has taught me how to have strong attention to detail, the importance of teamwork and clear communication which I believe can be very useful when it comes to developing web applications.</p>
					<br>
					<p>I am very excited for the journey ahead of me as a web developer, and I hope <span class="highlight">my passion for programming</span> can lead me to an opportunity where I can solve unique and interesting problems with my technical abilities</p>
				</div>
				<div class="about-content">
					<img id="broadcast" src="/images/broadcast.jpg" alt="broadcast image">
				</div>
			</div>
			<h2>SKILLS</h2>
			<div id="skill-box">
				<img class="skills" src="/images/skills/python.png">
				<img class="skills" src="/images/skills/flask.png">
				<img class="skills" src="/images/skills/sqlite.png">
				<img class="skills" src="/images/skills/mysql.png">
				<img class="skills" src="/images/skills/django.png">
				<img class="skills" src="/images/skills/js.png">
				<img class="skills" src="/images/skills/mongodb.png">
				<img class="skills" src="/images/skills/express.png">
				<img class="skills" src="/images/skills/angular.png">
				<img class="skills" src="/images/skills/nodejs.png">
				<img class="skills" src="/images/skills/java.png">
				<img class="skills" src="/images/skills/spring.png">
				<img class="skills" src="/images/skills/html.png">
				<img class="skills" src="/images/skills/css3.png">
				<img class="skills" src="/images/skills/jquery.png">
				<img class="skills" src="/images/skills/github.png">
				<img class="skills" src="/images/skills/aws.png">	
			</div>	
			<div id="scroll-projects"></div>
		</div>
		<div id="projects">
			<h2>PROJECTS</h2>
			<div class="project-wrapper">
				<img class="project-pic" id="truegrit" src="/images/truegrit.png" alt="my project screenshot">
				<div class="project-desc">
					<h3>True Grit</h3>
					<p>Created an app that features Login and Registration with validations, displays the logged user's order history and its status. Also displays user’s subscription plan. The subscription plan is specific to user. User can cancel one’s plan or change it to a different one. User can place individual orders without enrolling into subscription plans and check the status. The data is stored and retrieved from MySQL Database, which has 5 models </p>
					<h4>Technologies Used</h4>
					<p>Python, Django, MySQL, HTML5, CSS3, Bootstrap, AJAX, Bcrypt</p>
					<br>
					<button type="button" class="btn btn-dark" data-toggle="modal" data-target=".bd-example-modal-lg-1">Learn More</button>
				</div>
			</div>
			<div class="project-wrapper">
				<img class="project-pic" id="choices" src="/images/choices1.png" alt="my project screenshot">
				<div class="project-desc">
					<h3>Choices</h3>
					<p>Created an Angular app which incorporates Socket.io where user can interact with other users in real time making a choice between given options. Users can also chat in real time sharing their thoughts on their choices while waiting for others to make decisions. Votes are also shown in real time in a graphical bar to show which option has more choices from users. </p>
					<h4>Technologies Used</h4>
					<p>Angular JS, MongoDB, HTML5, CSS3, Bootstrap, Node.js, Socket.io</p>
					<br>
					<button type="button" class="btn btn-dark" data-toggle="modal" data-target=".bd-example-modal-lg-2">Learn More</button>
				</div>
			</div>

		</div>
		<div id="contact">
			<h2>CONTACT ME</h2>
			<div id="message">
			<form method="post" action="/send">
				<div id="sender-info">
				<div class="form-group sender">
			    	
			    	<input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="Name">
			  	</div>
			
			  	<div class="form-group sender">
			    	<input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="Email">
			  	</div>
				</div>
			  	<div class="form-group">
			    	<textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="5" placeholder="Message"></textarea>
			  	</div>
			  	<button type="submit" class="btn btn-primary">Send</button>
			</form>
			</div>
			
			<h4>Connect with me on</h4>
			<a href="https://linkedin.com/in/sebinlee23/" target="_blank"><img class="footer-connect" src="/images/in.png" alt="linkedin_logo"></a>
	    	<a href="https://github.com/sebinlee23" target="_blank"><img class="footer-connect" src="/images/git.png" alt="github_logo"></a>
			<a href="https://www.facebook.com/sebinlee23/" target="_blank"><img class="footer-connect" src="/images/facebook2.png" alt="linkedin_logo"></a>
	    	<a href="https://www.instagram.com/nideseel26" target="_blank"><img class="footer-connect" src="/images/instagram2.png" alt="github_logo"></a>
			<a href="https://drive.google.com/open?id=1GyPSZLxvtsb9HMipcC5SBu56pbbp_PiI" target="_blank" data-toggle="tooltip" data-placement="bottom" class="resume" title="My Resume"><img class="footer-connect" src="/images/resume.png" alt="linkedin_logo"></a>
			<h6>Copyright &#169; 2019 Designed and developed by Sebin Lee</h6>
		</div>
		<div id="scroll-contact"></div>
		<!-- Modal -->
		<div class="modal fade bd-example-modal-lg-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">True Grit Demo</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <iframe width="100%" height="415" src="https://www.youtube.com/embed/0G-E8gLgTww" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- Modal2 -->
		<div class="modal fade bd-example-modal-lg-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Choices Demo</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <iframe width="100%" height="415" src="https://www.youtube.com/embed/nKRJLS88W64" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>		
		
	</body>
</html>

















