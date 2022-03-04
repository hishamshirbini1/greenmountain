<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');
Route::get('/categories' , 'HomeController@categories')->name('categories.list');
// Route::get('/categories/{sub}' , 'HomeController@categories')->name('subCategories.list');
// Route::get('/categories/{slug}' , 'HomeController@categories')->name('products.list');
Route::resource('services', 'ServicesController');
Route::resource('products' , 'ProductsController');
Route::get('about', 'HomeController@about')->name('about');
Route::get('catalogue', 'HomeController@catalogue')->name('catalogue');
Route::get('contact', 'HomeController@contact')->name('contact');
Route::post('contactus', 'HomeController@contactus')->name('contactus');
Route::post('subscribers', 'HomeController@subscribers')->name('subscribers');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::fallback('HomeController@productOrCategory')->name('productOrCategory');
