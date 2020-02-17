<?php get_header(); ?>
    <div class="searchBar">
        <?php
        $s=get_search_query();
        $args = array(
        's' =>$s
        );
        //the query
        $the_query = new WP_query ( $args );
        if ($the_query->have_posts() ) {
            _e("<h2 style='font-weight:bold;color:black; margin: 20px; margin-top:70px; border-bottom:2px solid black;'>Search Results for: ".get_query_var('s').
            "</h2>");
            while ($the_query->have_posts() ) {
                $the_query->the_post();
        ?>
    </div>
    <ul class="results">
        <li>
            <a href="<?php the_permalink(); ?>" class="searchedItems"><h4><?php the_title(); ?></h4></a>
        </li>
    </ul>
    <?php
        }
    }else{
    ?>
        <h2 style='font-weight:bold;color:black; margin:20px; margin-top: 70px;border-bottom:2px solid black;'>Nothing found</h2>
            <div class="alert alert-info">
                <p>Sorry, but nothing matched your criteria, please try again</p>
                <script> alert("Sorry there were no results for your search");</script>
            </div>
    <?php } ?>
<?php get_footer(); ?>
