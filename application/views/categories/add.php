
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
                                            <label>Name Model</label>
                                            <input class="form-control" name="name"  required >
        
                                        </div>
                                        <div class="form-group">
                                            <label>Select Type</label>
                                            <select class="form-control" name="id_type" required>
                                                <option value="1">1-Iphone</option>
                                                <option value="2">2-Ipad</option>
                                                <option value="3">3-Macbook</option>
                                                <option value="4">4-iMac-Mac Pro</option>
                                                <option value="5">5-Apple Watch</option>                                              
                                                
                                            </select>
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