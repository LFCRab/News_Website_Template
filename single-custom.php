<?php get_header();
/*
Template Name: Sporting News Template
Template Post Type: post
*/
?>
    <div class="main sport">
        <?php
        if (have_posts()) :
            while (have_posts()) :
                the_post();
        ?>
                <h1><?php the_title();?></h1>
        <div class="text_content">
                <img src="
        <?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
        echo get_post_meta($post->ID, 'image', true); ?>
        " class="card-img-top" alt="<?php echo get_bloginfo('template_directory'); ?>/assets/img/<?php 
        echo get_post_meta($post->ID, 'alt', true); ?>">
        <p><?php the_content();?></p>
        <?php
            endwhile;
        endif;
        ?>
        </div>
    </div>
<?php get_footer();?>