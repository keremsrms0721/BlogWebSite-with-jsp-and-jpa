<%@include file="statics/header.jsp" %>
<%@page import="com.admin.transactions.AllTransactions,java.util.*,com.blog.entity.*"%>
    <div class="main-wrapper">
	    
	    <section class="blog-list px-3 py-5 p-md-5">
		    <div class="container">
		    
		    
			 <%
			 AllTransactions a = new AllTransactions();
			 List<Blog> bList=	a.getAllBlogs();
			 for(Blog b : bList){
			 %>
			    <div class="item mb-5">
				    <div class="media">
					    <img class="mr-3 img-fluid post-thumb d-none d-md-flex" src="assets/images/blog/deneme.jpg" alt="image">
					    <div class="media-body">
						    <h3 class="title mb-1"><a href="blog-post.jsp"><%= b.getBlogTitle() %></a></h3>
						    <div class="meta mb-1"><span class="date">Published <%= b.getDate() %></div>
						    <div class="intro"><%= b.getBlogContent().substring(0, b.getBlogContent().length()/6) %>...</div>
						    <a class="more-link" href="blog-post.jsp?blogId=<%= b.getBlogId() %>">Read more &rarr;</a>
					    </div><!--//media-body-->
				    </div><!--//media-->
			    </div><!--//item-->
			  <% } %>
			  
			    
			   
			    
			    
			    
			    
			    <nav class="blog-nav nav nav-justified my-5">
				  <a class="nav-link-prev nav-item nav-link rounded-left" href="index.jsp">Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
				  <a class="nav-link-next nav-item nav-link rounded-right" href="blog-list.jsp">Next<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
				</nav>
				
		    </div>
	    </section>
	    
<%@include file="statics/footer.jsp" %>
