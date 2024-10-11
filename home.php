<?php
/**
 * Template Name: Homepage
 * Description: Use this template for custom Home Page.
 */
/* Projects Post Type */

/* Banner Section and About Us */
$context = Timber::context();
$context['animated_line'] = do_shortcode( '[typed string0="A Frontend Developer," string1="With experience in Wordpress," string2="experience in Drupal," string3="and experience in Laravel." typeSpeed="40" startDelay="0" backSpeed="40" backDelay="500" loop="1"]' );
$about_us = get_field('about_us');

$context['body_class'] = 'rd-web-custom-home-class';
$context['title'] = $about_us['title'];
$context['body'] = $about_us['body'];

/* Technical Skills */
$technical_skills = get_field('technical_skills');
/* Languages */
$languages = $technical_skills['languages'];
$context['skill_1_l'] = $languages['skill_1_image'];
$context['skill_2_l'] = $languages['skill_2_image'];
$context['skill_3_l'] = $languages['skill_3_image'];
$context['skill_4_l'] = $languages['skill_4_image'];
$context['skill_5_l'] = $languages['skill_5_image'];

/* CMS */
$cms = $technical_skills['cms'];
$context['skill_1_cms'] = $cms['skill_1_image'];
$context['skill_2_cms'] = $cms['skill_2_image'];

/* Tools, Frameworks and Libraries */
$tools_frameworks_and_libraries = $technical_skills['tools_frameworks_and_libraries'];
$context['skill_1_lft'] = $tools_frameworks_and_libraries['skill_1_image'];
$context['skill_2_lft'] = $tools_frameworks_and_libraries['skill_2_image'];
$context['skill_3_lft'] = $tools_frameworks_and_libraries['skill_3_image'];
$context['skill_4_lft'] = $tools_frameworks_and_libraries['skill_4_image'];
$context['skill_5_lft'] = $tools_frameworks_and_libraries['skill_5_image'];
$context['skill_6_lft'] = $tools_frameworks_and_libraries['skill_6_image'];
$context['skill_7_lft'] = $tools_frameworks_and_libraries['skill_7_image'];
$context['skill_8_lft'] = $tools_frameworks_and_libraries['skill_8_image'];
$context['skill_9_lft'] = $tools_frameworks_and_libraries['skill_9_image'];
$context['skill_10_lft'] = $tools_frameworks_and_libraries['skill_10_image'];
$context['skill_11_lft'] = $tools_frameworks_and_libraries['skill_11_image'];
$context['skill_12_lft'] = $tools_frameworks_and_libraries['skill_12_image'];
$context['skill_13_lft'] = $tools_frameworks_and_libraries['skill_13_image'];

$context['projects'] = Timber::get_posts([
    'post_type' => 'project',
    'posts_per_page' => -1,
    'taxonomy' => 'type_of_project',
]);

$context['project_terms'] = Timber::get_terms([
    'taxonomy' => 'type_of_project',
    'count' => true,
]);
/* Contact Section */
$contact = get_field('contact');
$context['email'] = $contact['email'];
$context['phone'] = $contact['phone'];
$context['lets_talk'] = do_shortcode('[contact-form-7 id="474d839" title="Let Talk!"]');
Timber::render( 'home.twig', $context );
?>