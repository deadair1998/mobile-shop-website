
<div id="page-wrapper" style="min-height: 323px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Form Add</h1>
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
                                <div class="col-lg-12">
                                    <h3>Enabled Form States</h3>
                                    <form id="form" action="" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Name </label>
                                            <input class="form-control" name="name"   >
        
                                        </div>
                                        <div class="form-group">
                                            <label>Select Type</label>
                                            <select class="form-control" name="id_parent">
                                               
                                                                                                                                                                                                                                          
                                                    <option value="1">Iphone</option>
                                                    <option value="2">Ipad</option>
                                                    <option value="3">Macbook</option>
                                                    <option value="4">iMac-Mac Pro</option>
                                                    <option value="5">Apple watch</option>
                                                    
                                               
                                            </select>

                                        </div>
                                        <div class="form-group">
                                            <label>Select Model</label>
                                            <select class="form-control" name="id_type">
                                               <?php foreach ($items as $value): ?>
                                                                                                                                                                                                                                          
                                                    <option value="<?= $value['id'] ?>"><?= $value['name'] ?></option>
                                                    
                                                <?php endforeach ?> 
                                            </select>

                                        </div>
                                        <div class="alert alert-warning">
                                               [Warning] If there is no suitable model, create a new product model in the categories [Warning]
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input class="form-control"  name="price"  >
                                        </div>
                                        <div class="form-group">
                                            <label>Promotion Price</label>
                                            <input class="form-control"  name="promotion_price"  required>
                                            <p class="help-block">Promotion price can be 0</p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input type="file" name="image" >
                                            
                                        </div>
                                        <div class="alert alert-danger">
                                               [ALERT] Don't press submit button ,if you don't choice image to upload [ALERT]
                                        </div>
                                        <div class="form-group">
                                            <label>Detail</label>
                                            <textarea class="form-control"  name="detail" cols="20" rows ="5"
                                                form ="form" required> </textarea>
                                        </div>                                   
                                 
                                        <div class="form-group">
                                            <label>Status</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="status" id="optionsRadios1" value="0" >Normal
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
                                            <input class="form-control"  name="update_at"  type='date'>
                                           
                                        </div>
                                   
                                     
                                        <input type="submit" class="btn btn-default" value="Submit"></input>
                                        <button type="reset" class="btn btn-default">Reset </button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                         
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