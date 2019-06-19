  <jsp:include page="../head.jsp" />

<script>
	function backToSummary() {
		document.location.href = "${pageContext.request.contextPath}/admin?match=add";
	}
</script>
</head>

<body>
<header>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <nav class="navbar navbar-expand-lg navbar-dark default-color">
        <a class="navbar-brand" href="#"><strong>FlashScore</strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/crud/logout">Logout <span class="sr-only">(current)</span></a>
                </li>
         
            </ul>
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a class="nav-link"><i class="fab fa-facebook-f"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"><i class="fab fa-twitter"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"><i class="fab fa-instagram"></i></a>
                </li>
            </ul>
        </div>
    </nav>

</header>
<!--Main Layout-->
<main>
    <div class="container-full mb-3" style="    background: #2bbb8c;
    padding-bottom: 23px;">
        <div class="row pt-5">
            <div class="col text-center">
                <h2> FlashScore-TN</h2>
                <h5>Welcome Admin</h5>
            </div>
        </div>
    </div>
</main>
<!--Main Layout-->
	<div class="container">
		

		<h4>
			<strong>Editing user User</strong>
		</h4>

		<form role="form" method="post" action="${pageContext.request.contextPath}/admin?match=update">
			<input type="hidden" name="idmatch" value="${matchEdit.idmatch}"/>
			<div class="form-group">
				<label for="statue">statue</label>
				<input type="text" class="form-control" name="statue" id="login" placeholder="Insert statue" required value="${matchEdit.statue}"/>
			</div>
			<div class="form-group">
				<label for="scoreequipeone">scoreequipeone</label>
				<input type="text" class="form-control" name="scoreequipeone" id="scoreequipeone" placeholder="Insert scoreequipeone" required value="${matchEdit.scoreequipeone}"/>
			</div>
				<div class="form-group">
				<label for="scoreequipetwo">scoreequipetwo</label>
				<input type="text" class="form-control" name="scoreequipetwo" id="scoreequipetwo" placeholder="Insert scoreequipetwo" required value="${matchEdit.scoreequipetwo}"/>
			</div>
					<div class="form-group">
				<label for="scoreequipetwo">nameequipeone</label>
				<input type="text" class="form-control" name="nameequipeone" id="nameequipeone" placeholder="Insert nameequipeone" required value="${matchEdit.nameequipeone}"/>
			</div>
			
			<!-- Password -->
			<div class="form-group">
				<label for="nameequipetow">nameequipetow</label>
				<input type="text" class="form-control" name="nameequipetow" id="nameequipetow" placeholder="Insert nameequipetow" required value="${matchEdit.nameequipetow }"/>
			</div>
	
			<!-- Send this form to server -->
			<div class="form-group" align="center">
				<button type="submit" class="btn btn-default btn-lg btn-info">
					Update
				</button>
				<button type="button" class="btn btn-default btn-lg"
						onclick="backToSummary()">Cancel</button>
			</div>
		</form>
	</div>

</body>
</html>