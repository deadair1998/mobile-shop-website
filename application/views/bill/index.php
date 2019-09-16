<div id="page-wrapper" style="min-height: 323px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Bill</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
                       
              
            <!-- /.row -->
            <div class="row">
               
                    <div class="panel panel-default">
                <!--         <div class="panel-heading">
                           Iphone <i class="fa fa-mobile fa-3x"></i>
                        </div><br>
                        <div class="row">
                            <div class="container">
                                <div class="col-lg-6"><a href="#" class="btn btn-success">Add More</a></div>
                            </div>
                        </div> -->
                                    <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Customer</th>
                                            <th>Total</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Date order </th>
                                            <th>Detail</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($items as $value): ?>
                                            
                                       
                                        <tr>
                                            <td><?= $value['name'] ?></td>
                                            <td><?= $value['total'] ?></td>
                                            <td><?= $value['address'] ?></td>
                                            <td><?= $value['phone'] ?></td>
                                            <td><?= $value['date_order'] ?></td>
                                           
                                            <td>
                                                <a href="<?= base_url() ?>index.php/admin/Bill/showBillDetail/<?= $value['id'] ?>" class="fa fa-cog fa-2x"></a>
                                                
                                            </td>
                                            <!-- <?= base_url() ?>index.php/admin/Product/updateProduct/<?= $value['id'] ?>/<?=$this->uri->segment(3)?> -->
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
