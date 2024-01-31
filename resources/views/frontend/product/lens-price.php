<label  class="lens-type">Standard Lens Power</label>
<!--<div class="col-sm-10">-->
    <select name="lens_price" class="lens-type">
        <?php foreach ($lensPrices as $lensPrice) { ?>
            <option value="<?php echo $lensPrice->id;?>"><?php echo $lensPrice->lens_price; ?></option>
        <?php } ?>
    </select>
<!--</div>-->
