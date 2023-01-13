<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admins')->insert([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin@123'),
            'picture' => 'admin.jpg',
        ]);

        DB::table('pages')->insert([
            'about_heading' => 'About Heading',
            'about_content' => 'About Content',
            'about_status' => 1,
            'terms_heading' => 'Terms Heading',
            'terms_content' => 'Terms Content',
            'terms_status' => 1,
            'privacy_heading' => 'Privacy Heading',
            'privacy_content' => 'Privacy Content',
            'privacy_status' => 1,
            'contact_heading' => 'Contact Heading',
            'contact_map' => 'Contact Map',
            'contact_status' => 1,
            'image_gallery_heading' => 'Image Gallery Heading',
            'image_gallery_status' => 1,
            'video_gallery_heading' => 'Video Gallery Heading',
            'video_gallery_status' => 1,
            'faq_heading' => 'FAQ Heading',
            'faq_status' => 1,
            'blog_heading' => 'Blog Heading',
            'blog_status' => 1,
            'room_heading' => 'Room Heading',
            'cart_heading' => 'Cart Heading',
            'cart_status' => 1,
            'checkout_heading' => 'Checkout Heading',
            'checkout_status' => 1,
            'payment_heading' => 'Payment Heading',
            'signup_heading' => 'Signup Heading',
            'signup_status' => 1,
            'signin_heading' => 'Signin Heading',
            'signin_status' => 1,
            'forgot_password_heading' => 'Forgot Password Heading',
            'reset_password_heading' => 'Reset Password Heading',

        ]);

        DB::table('settings')->insert([
            'logo' => 'logo.png',
            'favicon' => 'favicon.png',
            'phone' => '1234567890',
            'email' => 'cs@hotelku.com',
            'home_featured_status' => 'Show',
            'home_room_total' => 4,
            'home_room_status' => 'Show',
            'home_testimonial_status' => 'Show',
            'home_latest_post_total' => 4,
            'home_latest_post_status' => 'Show',
            'address' => 'JL Asia Afrika No 8, Jakarta Pusat',
            'copyrigth' => 'Hotelku 2021',
            'facebook' => 'https://facebook.com',
            'twitter' => 'https://twitter.com',
            'linkedin' => 'https://linkedin.com',
            'pinterest' => 'https://pinterest.com',
            'instagram' => 'https://instagram.com',
            'theme_color_1' => '#0dbfb7',
            'theme_color_2' => '#ccfbfb'
        ]);



    }
}
