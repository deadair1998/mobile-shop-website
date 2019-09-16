
<div id="page-wrapper" style="min-height: 323px;">
 
    <?php foreach ($items as $item): ?>       
         
    
    <div class="col-lg-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3><?= $item['name'] ?></h3>
            </div>
            <img class="card-img-top img-responsive" src="<?= base_url() ?>uploads/<?= $item['image'] ?>" alt="Card image cap" style="height: 150px">
            <div class="panel-body">
                <p>quantity: <?= $item['quantity'] ?></p>
                <p>total: <?= $item['price'] ?></p>
            </div>
            <div class="panel-footer">
               <p>Update at : <?= $item['date_order'] ?></p>
            </div>
        </div>
    </div>
    <?php endforeach ?>   
   
   
  
   
      
           
</div>