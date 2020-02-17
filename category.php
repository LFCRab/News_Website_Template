<?php get_header(); ?>

<!-- a page which serves the same purpose as index but to display all posts of an individual category-->

<!-- define the $categories term-->

<?php
  $categories = get_categories();
?>

<!--create the category loop and the title-->
<h1 class="title">
<?php foreach((get_the_category()) as $category) { 
    echo $category->name . ' '; 
} 
?></h1>
<div class="container">
<?php 
if ( have_posts() ) : 
	while ( have_posts() ): the_post(); 
?>

<!-- display all cards of a selected category-->

<a href ="<?php the_permalink();?>">
    <div class="card">
    <img src="
    <?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
    echo get_post_meta($post->ID, 'image', true); ?>
    " class="card-img-top" alt="<?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
    echo get_post_meta($post->ID, 'alt', true); ?>">
    <div class="card-body">
        <h3 class="card-title"><?php the_title(); ?></h3>
        <p> <?php echo get_post_meta($post->ID, 'brief', true); ?> </p>
        <a href="<?php the_permalink();?>" class="btn btn-primary">Read More</a>
    </div>
    </div>  

<?php
    endwhile;
endif;
?>
</a>
</div>
<?php get_footer();?>