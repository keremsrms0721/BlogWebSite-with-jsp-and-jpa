<%@page import="com.admin.transactions.AllTransactions,com.blog.entity.Blog"%>
<%@include file="statics/header.jsp" %>
<%
	AllTransactions a = new AllTransactions();
	Blog b = a.getSingulerBlog(Long.parseLong(request.getParameter("blogId")));

%>
    <div class="main-wrapper">
	    
	    <article class="blog-post px-3 py-5 p-md-5">
		    <div class="container">
			    <header class="blog-post-header">
				    <h2 class="title mb-2"><%= b.getBlogTitle() %></h2>
				    <div class="meta mb-3"><span class="date">Published <%= b.getDate() %></span></div>
			    </header>
			    
			    <div class="blog-post-body">
				    <figure class="blog-banner">
				        <a href="https://Www.junioryazilim.com"><img class="img-fluid" src="assets/images/blog/deneme.jpg" alt="image"></a>
				    </figure>
					<p>
						<%= b.getBlogContent() %>
					</p>				    
				   


				   
			    </div>
				    
			    <nav class="blog-nav nav nav-justified my-5">
				  <a class="nav-link-prev nav-item nav-link rounded-left" href="index.jsp">Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
				  <a class="nav-link-next nav-item nav-link rounded-right" href="blog-list.jsp">Next<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
				</nav>
				
				
				
		    </div><!--//container-->
	    </article>
	    

	    

    <!-- Page Specific JS -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.14.2/highlight.min.js"></script>

    <!-- Custom JS -->
    <script src="assets/js/blog.js"></script>
<%@include file="statics/footer.jsp" %>
