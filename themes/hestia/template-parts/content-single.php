<?php
/**
 * The default template for displaying content
 *
 * Used for single posts.
 *
 * @package Hestia
 * @since Hestia 1.0
 */

$hestia_remove_sidebar_on_single_post = get_theme_mod( 'hestia_sidebar_on_single_post', false );
if ( is_active_sidebar( 'sidebar-1' ) && ( $hestia_remove_sidebar_on_single_post == false ) ) {
	$class_to_add = 'col-md-8';
} else {
	$class_to_add = 'col-md-8 col-md-offset-2';
}

$default_blog_layout = hestia_sidebar_on_single_post_get_default();
$hestia_blog_sidebar_layout = get_theme_mod( 'hestia_blog_sidebar_layout', $default_blog_layout );

$args = array(
	'sidebar-right' => 'col-md-8 single-post-wrap',
	'sidebar-left' => 'col-md-8 single-post-wrap',
	'full-width' => 'col-md-8 col-md-offset-2 single-post-wrap',
);
$hestia_sidebar_width = get_theme_mod( 'hestia_sidebar_width',25 );
if ( $hestia_sidebar_width > 3 && $hestia_sidebar_width < 80 ) {
	$args['sidebar-left'] .= ' col-md-offset-1';
}

$class_to_add = hestia_get_content_classes( $hestia_blog_sidebar_layout, 'sidebar-1', $args );
?>

<div class="row">
	<?php
	if ( $hestia_blog_sidebar_layout === 'sidebar-left' ) {
		get_sidebar();
	}
	?>
	<div class=" <?php echo esc_attr( $class_to_add ); ?>">
	    	<div class="hestia_blog_image">
	    	<?php if ( has_post_thumbnail() ) : ?>
        <?php the_post_thumbnail(); ?>
    <?php endif; ?>
	</div>


		<article id="post-<?php the_ID(); ?>" class="section section-text">
			<?php
			the_content();

			hestia_wp_link_pages(
				array(
					'before' => '<div class="text-center"> <ul class="nav pagination pagination-primary">',
					'after' => '</ul> </div>',
					'link_before' => '<li>',
					'link_after' => '</li>',
				)
			);
			?>
		</article>

		<div class="section section-blog-info">
			<hr>
			<?php
			$author_description = get_the_author_meta( 'description' );
			if ( ! empty( $author_description ) ) :
				hestia_author_box();
			endif;
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
			?>
		</div>
	</div>
	<?php
	if ( $hestia_blog_sidebar_layout === 'sidebar-right' ) {
		get_sidebar();
	}
	?>
</div>

