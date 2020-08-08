<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("../adminlogin.jsp");
}
else
{

%>
<%@include file="adminstatics/header.jsp"%>
<!-- End Navbar -->
<div class="content">
	<div class="container-fluid">
		<!-- your content here -->
	</div>
	<form action="../adminvalid/transactions.jsp" method="post">
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="bmd-label-floating">Title</label> <input type="text"
						class="form-control" name="title" placeholder="Enter to title" required="required">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>Content</label>
					<div class="form-group">
						<textarea class="form-control" rows="12" name="content"
							placeholder="Enter to content" required="required"></textarea>
					</div>
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-primary pull-right"
			name="transaction_persist">Add</button>
		<div class="clearfix"></div>
	</form>
</div>

<%@include file="adminstatics/footer.jsp"%>

<% }  %>