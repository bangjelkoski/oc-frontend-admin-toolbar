<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-fe_tlb" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-fe_tlb" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="fe_tlb_style"><?php echo $entry_style; ?></label>
            <div class="col-sm-10">
			  <select name="fe_tlb_style" id="fe_tlb_style" class="form-control">
					  <option value="style1" <?php if($fe_tlb_style == 'style1') echo 'selected'; ?> ><?php echo $style1; ?></option>
					  <option value="style2" <?php if($fe_tlb_style == 'style2') echo 'selected'; ?> ><?php echo $style2; ?></option>
					  <option value="style3" <?php if($fe_tlb_style == 'style3') echo 'selected'; ?> ><?php echo $style3; ?></option>
			  </select>
              <?php if ($error_style) { ?>
              <div class="text-danger"><?php echo $error_style; ?></div>
              <?php } ?>
            </div>
          </div>
            <div class="form-group required">
            <label class="col-sm-2 control-label" for="fe_tlb_clink"><?php echo $entry_links; ?></label>
            <div class="col-sm-10">
		<?php foreach ($fe_tlb_links as $fe_tlb_link) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if(in_array($fe_tlb_link['value'], $fe_tlb_clink)) { ?>
                          <input type="checkbox" name="fe_tlb_clink[]" value="<?php echo $fe_tlb_link['value']; ?>" checked="checked" />
                          <?php echo $fe_tlb_link['text']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="fe_tlb_clink[]" value="<?php echo $fe_tlb_link['value']; ?>" />
                          <?php echo $fe_tlb_link['text']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>			  
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="fe_tlb_status" id="input-status" class="form-control">
                <?php if ($fe_tlb_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
         <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_mobile; ?></label>
            <div class="col-sm-10">
              <select name="fe_tlb_mobile" id="input-status" class="form-control">
                <?php if ($fe_tlb_mobile) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $fun; ?></label>
            <div class="col-sm-10">
              <select name="fe_tlb_fun" id="input-status" class="form-control">
                <?php if ($fe_tlb_fun) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>