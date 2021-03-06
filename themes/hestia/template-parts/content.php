<?php
/**
 * The default template for displaying content
 *
 * Used for index/archive/search.
 *
 * @package Hestia
 * @since Hestia 1.0
 */
?>

<article
		id="post-<?php the_ID(); ?>" <?php ( is_sticky() && is_home() && ! is_paged() ) ? post_class( 'card card-raised card-blog' ) : post_class( 'card card-plain card-blog' ); ?>>
	<div class="row">
		<?php
		$post_thumbnail_url = get_the_post_thumbnail( get_the_ID(), 'hestia-blog' );
		if ( ! empty( $post_thumbnail_url ) ) :
		?>
		<div class="col-ms-5 col-sm-5">
			<div class="card-image">
				<a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
					<?php echo $post_thumbnail_url; ?>
				</a>
			</div>
		</div>

		<div class="col-ms-7 col-sm-7">
			<?php else : ?>
			<div class="col-sm-12">
				<?php endif; ?>
				<?php
				the_title(
					sprintf(
						'<h2 class="card-title entry-title"><a href="%s" title="%s" rel="bookmark">', esc_url( get_permalink() ), the_title_attribute(
							array(
								'echo' => false,
							)
						)
					), '</a></h2>'
				);
					?>
				<div class="card-description">
					<p>
						<?php
						$hestia_more = strpos( $post->post_content, '<!--more' );
						if ( $hestia_more ) :
							echo get_the_content();
						else :
							echo get_the_excerpt();
						endif;
						?>
					</p>
				</div>
				<div class="author">
					<?php
					printf(
						sprintf(
							sprintf(
								/* translators: %1$s is Time since, %2$s is Link to post */
								'<a href="%2$s"><time>Postitatud %1$s tagasi</time>',
								esc_html( human_time_diff( get_the_time( 'U' ), current_time( 'timestamp' ) ) ),
								esc_url( get_permalink() )
							),
							'</a>'
						)
					);
					?>
					<time class="date updated published" datetime="<?php echo esc_html( get_the_date( DATE_W3C ) ); ?>"><?php echo esc_html( get_the_time( get_option( 'date_format' ) ) ); ?></time>
				</div>
			</div>
		</div>

</article>
