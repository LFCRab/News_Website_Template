<?php
function my_custom_styles() {
  // Register my custom stylesheet
  wp_register_style( 'custom-styles', get_template_directory_uri().'/assets/css/main.css' );
  // Load my custom stylesheet
  wp_enqueue_style( 'custom-styles' );

  wp_enqueue_script('custom_script', get_template_directory_uri().'/assets/js/app.js','', '', true);
}
add_action( 'wp_enqueue_scripts', 'my_custom_styles' );

class Custom_Walker extends Walker_Category {

  // Configure the start of each level
  function start_lvl(&$output, $depth = 0, $args = array()) {
      $output .= "";
  }
  
  // Configure the end of each level
  function end_lvl(&$output, $depth = 0, $args = array()) {
      $output .= "";
  }
  
  // Configure the start of each element
  function start_el( &$output, $category, $depth = 0, $args = array(), $id = 0) {
  
      // Set the category name and slug as a variables for later use
      $cat_name = esc_attr( $category->name );
      $cat_name = apply_filters( 'list_cats', $cat_name, $category );
      $cat_slug = esc_attr( $category->slug );
  
      // Configure the output for the top list element and its URL
      if ( $depth === 0 ) {
          $link = '<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          '. $cat_name .'
          </a><div class="dropdown-menu" aria-labelledby="navbarDropdown">';
          $indent = str_repeat("\t", $depth);
          $output .= "\t$link\n\n<ul style='padding-inline-start: 0px;'>\n";
      }
  
      // Configure the output for lower level list elements and their URL's
      if ( $depth > 0 ) {
      
          $link = '<a class="dropdown-item" href="' . esc_url( get_term_link($category) ) . '"' . '>' . $cat_name . '</a>';
          $output .= "\t$link\n";
      }
  
  }
  
  // Configure the end of each element
  function end_el(&$output, $page, $depth = 0, $args = array() ) {
      if ( $depth === 0 ) {
          $indent = str_repeat("\t", $depth);
          $output .= "</ul>\n</div>\n";
      }
      if ( $depth > 0 ) {
          $output .= "</li>";
      }
  
  }
  
  }
  
  