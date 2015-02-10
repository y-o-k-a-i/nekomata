<?php
/**
 * @file
 * Enables modules and site configuration for the Neko-Mata site installation.
 */
 
/** 
 * Implements hook_form_alter(). 
 * 
 * Allows the profile to alter the site configuration form.
 */
function nekomata_form_install_configure_form_alter(&$form, $form_state) {
  // Set a default name for the dev site. 
  //$form['site_information']['site_name']['#default_value'] = t('My Profile'); 
}
