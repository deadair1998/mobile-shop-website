
<div id="page-wrapper" style="min-height: 323px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Form Update</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        
                        <?php echo validation_errors(); ?>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <h3>Enabled Form States</h3>
                                    <form id="form" action="" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Name </label>
                                            <input class="form-control" name="name" value="<?= $items['name'] ?>"  >
        
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input class="form-control"  name="price" value="<?= $items['price'] ?>" >
                                        </div>
                                        <div class="form-group">
                                            <label>Promotion Price</label>
                                            <input class="form-control"  name="promotion_price" value="<?= $items['promotion_price'] ?>" required>
                                            <p class="help-block">Promotion price can be 0</p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input type="file" name="image" value=" <?= $items['image'] ?>">
                                            
                                        </div>
                                        <div class="alert alert-danger">
                                               [ALERT] Don't press submit button ,if you don't choice image to upload [ALERT]
                                        </div>
                                        <div class="form-group">
                                            <label>Detail</label>
                                            <textarea class="form-control"  name="detail" cols="20" rows ="5"
                                                form ="form" required> <?= $items['detail'] ?></textarea>
                                        </div>                                   
                                 
                                        <div class="form-group">
                                            <label>Status</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="status" id="optionsRadios1" value="0" checked="" required>Normal
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="status" id="optionsRadios2" value="1">Hot
                                                </label>
                                            </div>
                                            
                                        </div>
                                         <div class="form-group">
                                            <label>Update at</label>
                                            <input class="form-control"  name="update_at" value="<?= $items['update_at'] ?>" type='date'>
                                           
                                        </div>
                                   
                                     
                                        <input type="submit" class="btn btn-default" value="Submit"></input>
                                        <button type="reset" class="btn btn-default">Reset </button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-4">
                                    <h3>Disabled Form States</h3>
                                    <form role="form">
                                        <fieldset disabled="">
                                            <div class="form-group">
                                                <label for="disabledSelect"> Id Product</label>
                                                <input class="form-control" id="disabledInput" type="text" placeholder="<?= $items['id'] ?>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label for="disabledSelect">Id Type</label>
                                                <input class="form-control" id="disabledInput" type="text" placeholder="<?= $items['id_type'] ?>" disabled="">
                                            </div>
                                                                                      
                                        </fieldset>
                                    </form>
                           
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-4">
                                   <h3> Image</h3> 
                                   <img src="<?= base_url() ?>uploads/<?= $items['image'] ?>" alt="" class="img-responsive">
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>