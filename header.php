<!--this page is the header of every webpage on my website-->
<!doctype html>
<html>
  <head>
	<title>Rab's news</title>
    <!-- Required meta tags stuff -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<!-- Link to my own css-->
	<?php wp_head(); ?>
  </head>
  <body>

  <?php

  $args = array(
    'walker'                => new Custom_Walker(),
    'hide_title_if_empty'   => false,
    'hierarchical'          => true,
    'order'                 => 'ASC',
    'orderby'               => 'name',
    'seperator'             => '<br/>',
    'show_count'            => 0,
    'show_option_all'       => '',
    'title_li'              => __( '' ),
    'use_desc_for_title'    => 1,
    'exclude'               => '1',
  );
  ?>

<div class="loader">
  <img src="<?php echo get_bloginfo('template_directory'); ?>/assets/img/loader.gif">
</div>
  <!--The bootstrap code for the navbar-->
<header>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="<?php echo get_home_url(); ?>">Rab's News</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon">
        </span>
      </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

      <li class="nav-item dropdown">

        <?php 
        wp_list_categories($args)
        ?>

        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
<!-- the code used to display the dropdown categories-->
<?php
  $categories = get_categories( array(
    'orderby' => 'date',
    'order' => 'ASC',
    'exclude' => '1'
  ) );
?>
<?php
  foreach ($categories as $category)  {
    echo '<div class="dropdown-item"><a href="' . get_category_link($category->term_id) . '">' . $category->name . '</a></div>';
  }
?>
          </div>
        </li>
      </ul>
      <!--add a search bar to the nav-->
      <?php get_search_form(); ?>
    </div>
  </nav>
</header>