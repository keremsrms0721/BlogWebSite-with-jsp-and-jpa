<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("../adminlogin.jsp");
}
else
{

%>

<%@page
	import="com.admin.transactions.AllTransactions,com.blog.entity.Blog"%>
<%@include file="adminstatics/header.jsp"%>
<%
	AllTransactions a = new AllTransactions();
long blogId = Long.parseLong(request.getParameter("blogId"));
Blog b = a.getSingulerBlog(blogId);
request.setCharacterEncoding("UTF-8");
%>


<!-- End Navbar -->
<div class="content">
	<div class="container-fluid"></div>
	<form action="../adminvalid/transactions.jsp" method="post">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group">
					<label class="bmd-label-floating">Date</label> <input type="text"
						class="form-control" disabled value="<%=b.getDate()%>">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label class="bmd-label-floating">Title</label> <input type="text"
						class="form-control" name="title" placeholder="Enter to title"
						value="<%=b.getBlogTitle()%>">
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>Content</label>
					<div class="form-group">
						<textarea class="form-control" rows="12" name="content"
							placeholder="Enter to content"><%=b.getBlogContent()%></textarea>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" value="<%=b.getBlogId()%>" name="blogHiddenId"/>
		<button type="submit" class="btn btn-primary pull-right"
			name="transaction_update">Update</button>
		<div class="clearfix"></div>
	</form>
</div>
<%@include file="adminstatics/footer.jsp"%>
<% } %>