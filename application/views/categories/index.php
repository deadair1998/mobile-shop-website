<div id="page-wrapper" style="min-height: 323px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Table Product Model</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
                       
              
            <!-- /.row -->
            <div class="row">

                    <div class="panel panel-default">
                        <br>
                        <div class="row">
                            <div class="container">
                                <div class="col-lg-6"><a href="<?= base_url() ?>index.php/admin/Categories/add" class="btn btn-success">Add More</a></div>
                            </div>
                        </div>
                                    <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            
                                            <th>Type</th>
                                            <th> Model</th>
                                            <th>Feature</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($items as $value): ?>
                                            
                                       
                                        <tr>
                                            
                                            <td><?php 
                                                switch ( $value['id_parent'] ) {
                                                    case 1:
                                                        echo '1-Iphone';
                                                        break;
                                                    case 2:
                                                        echo '2-Ipad';
                                                        break;
                                                    case 3:
                                                        echo '3-Macbook';
                                                        break;
                                                    case 4:
                                                        echo '4-iMac - Mac Pro';
                                                        break;
                                                    case 5:
                                                        echo '5-Apple Watch';
                                                        break;
                                                    default:
                                                        echo 'Undefine';
                                                        
                                                }

                                             ?></td>
                                            <td> <?= $value['name'] ?> </td>
                                      
                                           
                                            <td>
                                                
                                                <a href="<?= base_url() ?>index.php/admin/Categories/delete/<?= $value['id'] ?>" class="fa fa-trash fa-2x" 
                                                onclick="return confirm('Bạn có chắc là muốn xóa không ?');">
                                                    
                                                </a>
                                            </td>
                                            
                                        </tr>
                                         <?php endforeach ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
         
                <!-- /.col-lg-6 -->
                
            </div>
        </div>
