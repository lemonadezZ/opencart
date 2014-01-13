<?php echo $header; ?>
<div id="container"><?php echo $menu; ?>
  <div id="content">
    <div class="container">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <div class="panel panel-default">
        <div class="panel-heading">
          <div class="pull-right">
            <button type="submit" form="form-user" class="btn btn-success"><i class="fa fa-check-circle"></i> <?php echo $button_save; ?></button>
            <a href="<?php echo $cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a></div>
          <h1 class="panel-title"><i class="fa fa-pencil-square fa-lg"></i> <?php echo $heading_title; ?></h1>
        </div>
        <div class="panel-body">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-user" class="form-horizontal">
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-username"><?php echo $entry_username; ?></label>
              <div class="col-sm-10">
                <input type="text" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $entry_username; ?>" id="input-username" class="form-control" />
                <?php if ($error_username) { ?>
                <div class="text-danger"><?php echo $error_username; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-user-group"><?php echo $entry_user_group; ?></label>
              <div class="col-sm-10">
                <select name="user_group_id" id="input-user-group" class="form-control">
                  <?php foreach ($user_groups as $user_group) { ?>
                  <?php if ($user_group['user_group_id'] == $user_group_id) { ?>
                  <option value="<?php echo $user_group['user_group_id']; ?>" selected="selected"><?php echo $user_group['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $user_group['user_group_id']; ?>"><?php echo $user_group['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
              <div class="col-sm-10">
                <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
                <?php if ($error_firstname) { ?>
                <div class="text-danger"><?php echo $error_firstname; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
              <div class="col-sm-10">
                <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
                <?php if ($error_lastname) { ?>
                <div class="text-danger"><?php echo $error_lastname; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
              <div class="col-sm-10">
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
              <div class="col-sm-10">
                <?php if ($thumb) { ?>
                <a href="" id="thumb-image" class="img-thumbnail img-edit"><img src="<?php echo $thumb; ?>" alt="" title="" /></a>
                <?php } else { ?>
                <a href="" id="thumb-image" class="img-thumbnail img-edit"><i class="fa fa-camera fa-5x"></i></a>
                <?php } ?>
                <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
              <div class="col-sm-10">
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" autocomplete="off" />
                <?php if ($error_password) { ?>
                <div class="text-danger"><?php echo $error_password; ?></div>
                <?php  } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
              <div class="col-sm-10">
                <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                <?php if ($error_confirm) { ?>
                <div class="text-danger"><?php echo $error_confirm; ?></div>
                <?php  } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
              <div class="col-sm-10">
                <select name="status" id="input-status" class="form-control">
                  <?php if ($status) { ?>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <?php } else { ?>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?> 