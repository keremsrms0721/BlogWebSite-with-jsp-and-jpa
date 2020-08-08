<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("../adminlogin.jsp");
}
else
{

%>
<%@page
	import="com.admin.transactions.AllTransactions,com.blog.entity.Blog,java.util.List,java.io.*"%>
<%@include file="adminstatics/header.jsp"%>


<%
	String blogId = request.getParameter("blogId");
	if(blogId != null)
	{
		AllTransactions a = new AllTransactions();
		boolean result = a.remove(Long.parseLong(blogId));
		response.sendRedirect("showblog.jsp?success=true");
	}
%>
<!-- End Navbar -->
<div class="content">
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header card-header-primary">
					<h4 class="card-title ">All Blogs</h4>
					<p class="card-category">Here is your all blogs.</p>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<% if(Boolean.parseBoolean(request.getParameter("success"))){
								%>
								<div class="alert alert-success">
								                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
								                    </button>
								                    <span>
								                      <b> Success - </b> Transaction is succeeded.</span>
								</div>
								<%
							} %>
							<thead class=" text-primary">
								<tr>
									<th>ID <i class="fa fa-sort-numeric-asc"
										aria-hidden="true"></i></th>
									<th>Blog Title <i class="fa fa-pencil" aria-hidden="true"></i></th>
									<th>Date <i class="fa fa-calendar" aria-hidden="true"></i></th>
									<th></th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
									<%
										AllTransactions t = new AllTransactions();
									List<Blog> bList = t.getAllBlogs();
									for (Blog b : bList) {
									%>
									<tr>
									<td><%=b.getBlogId()%></td>
									<td><%=b.getBlogTitle()%></td>
									<td><%=b.getDate()%></td>
									<td class="text-primary"><a href="showblog.jsp?blogId=<%=b.getBlogId()%>">
									<i class="fa fa-trash" aria-hidden="true"></i></a></td>
									<td class="text-primary"><a href="update.jsp?blogId=<%=b.getBlogId()%>"> <i
											class="fa fa-cog" aria-hidden="true"></i></a></td>
									</tr>
									<%
										}
									%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>
<%@include file="adminstatics/footer.jsp"%>
<% } %>