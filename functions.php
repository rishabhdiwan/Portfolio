<?php 
//Timber Activation
if ( ! class_exists( 'Timber' ) ) {
    add_action( 'admin_notices', function() {
        echo '<div class="error"><p>Timber not activated. Make sure you activate the plugin in <a href="'.esc_url( admin_url( 'plugins.php' ) ).'">'.esc_url( admin_url( 'plugins.php' ) ).'</a></p></div>';
    });
    return;
}
// Theme Enqueue
function learning_theme_enqueue() {
    wp_enqueue_script('particles-effect', get_template_directory_uri() . '/assets/particles.js-master/particles.min.js', array('jquery'), '1.0', true);
    wp_enqueue_script('custom-scr', get_template_directory_uri() . '/assets/build/js/custom.min.js', array('jquery'), '1.0', true);
    wp_enqueue_style( 'custom-style', get_template_directory_uri() . '/assets/build/css/style.min.css');
    wp_enqueue_style( 'font-awesome', get_template_directory_uri() .'/assets/icons/fontawesome-660-web/css/all.min.css');
} 
add_action('wp_enqueue_scripts', 'learning_theme_enqueue');

// Timber global context and more
Timber::$dirname = array('templates');

class StarterSite extends Timber\Site {
    public function __construct() {
        add_action( 'after_setup_theme', array( $this, 'theme_supports' ) );
        add_filter( 'timber/context', array( $this, 'add_to_context' ) );
        parent::__construct();
    }
    public function add_to_context( $context ) {
        $context['menu'] = new Timber\Menu();
        $context['site'] = $this;
        return $context;
    }
    public function theme_supports() {
        // Add your theme support features here
        add_theme_support( 'post-thumbnails' );
        register_nav_menus( array(
            'primary' => __( 'Primary Menu', 'textdomain' ),
        ) );
    }
}

new StarterSite();

// Custom Cursor Effect
echo '<div class="custom-cursor">
    <div class="cursor-dot"></div>
    <div class="cursor-circle"></div>
</div>';