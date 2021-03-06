<?php

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes(['verify' => false]);

Route::get('/home', 'HomeController@index')->name('home');



// API
Route::get('/api/get_all', 'ContactsController@get_all');
Route::post('/api/create', 'ContactsController@create');
Route::post('/api/update/{id}', 'ContactsController@update');

