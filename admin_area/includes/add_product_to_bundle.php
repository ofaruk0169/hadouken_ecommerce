<?php require_once 'includes/header.php'; ?>
<?php
	if (isset($_POST['submit'])) {
		$rel_title = $_POST['rel_title'];
		$product_id = $_POST['product_id'];
		$bundle_id = $_POST['bundle_id'];



	  $insert_relation = $getFromU->create("bundle_product_relation", array("rel_title" => $rel_title, "product_id" => $product_id, "bundle_id" => $bundle_id));

		if ($insert_relation) {
			$_SESSION['rel_insert_msg'] = "Relation has been added Sucessfully";
      header('Location: index.php?view_product_to_bundles');
		}else {
			echo '<script>alert("Relation has not added")</script>';
		}


	}

?>



<nav aria-label="breadcrumb" class="my-4">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="index.php?dashboard">Dashboard</a></li>
		<li class="breadcrumb-item active" aria-current="page">Insert Relation</li>
	</ol>
</nav>



<div class="card rounded">
	<div class="card-header bg-light h5"><i class="fas fa-plus-square"></i> Insert Relation</div>
	<div class="card-body">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<form method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
				  <div class="form-row mb-3">
				    <div class="col-3">
				      <label for="rel_title">Relation Title</label>
				    </div>
				    <div class="col-md-9">
				    	<input type="text" name="rel_title" class="form-control" id="rel_title" placeholder="Relation Title" required>
				      <div class="invalid-feedback">
				        Please provide a Relation Title.
				      </div>
				    </div>
				  </div>

				  <div class="form-row mb-3">
						<div class="col-3">
							<label for="product_id">Select a Product</label>
						</div>
						<div class="col-md-9">
							<select name="product_id" id="product_id" class="form-control" required>
								<option value="">----- Select a Product -----</option>
								<?php
									$products = $getFromU->view_bundle_products('product');
									foreach ($products as $product) {
										$product_id = $product->product_id;
										$product_title = $product->product_title;
								?>
								<option value="<?php echo $product_id; ?>"><?php echo $product_title; ?></option>
								<?php } ?>
							</select>
							<div class="invalid-feedback">
								Please Select a Product.
							</div>
						</div>
					</div>

					<div class="form-row mb-3">
						<div class="col-3">
							<label for="bundle_id">Select a Bundle</label>
						</div>
						<div class="col-md-9">
							<select name="bundle_id" id="product_id" class="form-control" required>
								<option value="">----- Select a Bundle -----</option>
								<?php
									$products = $getFromU->view_bundle_products('bundle');
									foreach ($products as $product) {
										$product_id = $product->product_id;
										$product_title = $product->product_title;
								?>
								<option value="<?php echo $product_id; ?>"><?php echo $product_title; ?></option>
								<?php } ?>
							</select>
							<div class="invalid-feedback">
								Please Select a Bundle.
							</div>
						</div>
					</div>

				  <div class="row">
				  	<div class="col-12 my-5">
				  		<button class="btn btn-info form-control" name="submit" type="submit"><i class="fas fa-plus-circle"></i> Insert Relation</button>
				  	</div>
				  </div>
				</form>
			</div>
		</div>

		<script>
			// Example starter JavaScript for disabling form submissions if there are invalid fields
			(function() {
			  'use strict';
			  window.addEventListener('load', function() {
			    // Fetch all the forms we want to apply custom Bootstrap validation styles to
			    var forms = document.getElementsByClassName('needs-validation');
			    // Loop over them and prevent submission
			    var validation = Array.prototype.filter.call(forms, function(form) {
			      form.addEventListener('submit', function(event) {
			        if (form.checkValidity() === false) {
			          event.preventDefault();
			          event.stopPropagation();
			        }
			        form.classList.add('was-validated');
			      }, false);
			    });
			  }, false);
			})();
		</script>
	</div>
</div>





<?php require_once 'includes/footer.php'; ?>


<!-- include summernote css/js -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>

<script>
  $(document).ready(function() {
      $('.summernote').summernote();
  });
</script>