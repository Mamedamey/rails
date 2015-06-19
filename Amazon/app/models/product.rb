class Product < ActiveRecord::Base
	 


:image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

belongs_to :Category



end

<h1>Welcome to Tech Talent South Store!</h1>
<p>Give us all your money!</p>

<div class="row">
<% @products.each do |product| %>
<div class="col-md-4">
<div class="panel panel-default">
<div class="panel-body">
<div style ="height:150px;">
    <%= image_tag product.image.url(:thumb) %>
</div>
<p><a href="#" data-toggle="modal" data-target="#myModal_<%= product.id %>">
<span class="glyphicon glyphicon-plus"></span> quick info </a></p>
<p><strong><%= number_to_currency product.price %></strong></p>
<p><% product.description %></p>
<p>Made by: <%= product.brand%></p>

<p> 
<%# product.rating.times do %>
<!-- <span class="glyphicon glyphicon-star yellow"></span> --> <%# end %></p>

</div>
</div>
</div>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal_<%= product.id %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       <h4 class="modal-title" id="myModalLabel">Modal title</h4>
     </div>
     <div class="modal-body">
       <p><%= product.price %></p>
       <p><%= product.description %></p>
       <p>
     </div>
     <div class="modal-footer">
       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       <button type="button" class="btn btn-primary">Save changes</button>
     </div>
   </div>
 </div>
</div>


<% end %>
</div>

