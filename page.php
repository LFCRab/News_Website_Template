<?php get_header(); 
/*
Template Name: Page Template
Template Post Type: page
*/
?>
    <div class="main page">
        <?php
        if (have_posts()) :
            while (have_posts()) :
                the_post();
        ?>
                <h1><?php the_title();?></h1>
        <div class="text_content">
        <p><?php the_content();?></p>
        <?php
            endwhile;
        endif;
        ?>
        </div>
    </div>
<?php get_footer();?>