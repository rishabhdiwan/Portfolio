<?php
/**
 * Template Name: Homepage
 * Description: Use this template for custom Home Page.
 */
/* Projects Post Type */

/* Banner Section and About Us */
$about_us = get_field('about_us');

$context = Timber::context();
$context['body_class'] = 'rd-web-custom-home-class';
$context['title'] = $about_us['title'];
$context['body'] = $about_us['body'];

$context['projects'] = Timber::get_posts([
    'post_type' => 'project',
    'posts_per_page' => -1,
    'taxonomy' => 'type_of_project',
]);

$context['project_terms'] = Timber::get_terms([
    'taxonomy' => 'type_of_project',
    'count' => true,
]);

Timber::render( 'home.twig', $context );
?>