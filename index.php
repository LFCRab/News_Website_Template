<?php get_header(); ?>

  <!-- creating an array for the images in carousel-->

  <?php
  $the_query = new WP_Query(array('cat' => 8 ) );
  ?>
      
  <!-- the carousel-->


  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">

    <!--setting up the php loop to display the images in the carousel-->

    <?php if ($the_query->have_posts() ) : while ($the_query->have_posts() ) : $the_query->the_post(); ?>
      <div class="carousel-item <?php if ($the_query->current_post == 0 ) : ?>active<?php endif; ?>">
          <a href ="<?php the_permalink();?>">
              <img class="d-block w-100" src="<?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
              echo get_post_meta($post->ID, 'jumbo', true); ?>
              " alt="<?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
              echo get_post_meta($post->ID, 'image', true); ?>">
            <div class="carousel-caption d-none d-md-block">
                <h2 class="caption"><?php the_title(); ?></h2>
            </div>
          </a>
      </div>
      <?php endwhile; endif; ?>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <!-- the php loop definition to display posts on the homepage-->

  <div class="container">
    <?php 
        if ( have_posts() ) : 
            while ( have_posts() ): the_post(); 
    ?>
        <a href ="<?php the_permalink();?>">

  <!--bootstrap display cards for all posts-->

      <div class="card">
      <img src="
      <?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
      echo get_post_meta($post->ID, 'image', true); ?>
      " class="card-img-top" alt="<?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
      echo get_post_meta($post->ID, 'jumbo', true); ?>">

    <!-- displays the title of each post and a brief description-->

        <div class="card-body">
          <h3 class="card-title"><?php the_title(); ?></h3>
          <p> <?php echo get_post_meta($post->ID, 'brief', true); ?> </p>
          <a href="<?php the_permalink();?>" class="btn btn-primary">Read more</a>
        </div>
      </div>  
      </a>
      <?php
          endwhile;
      endif;
      ?>
  </div>
  <div class="youtube">
    <iframe src="http://www.youtube.com/embed/3IQX0Zt0g4U"
    width="560" height="315" frameborder="0" allowfullscreen>
    </iframe>
  </div>
<?php get_footer(); ?>
