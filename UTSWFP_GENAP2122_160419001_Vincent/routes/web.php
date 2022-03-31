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

Route::get('/', function () {
    return view('layout.home');
});

Route::get('/listobat160419001', 'ObatController160419001@listobat')->name('listobat160419001.listobat');

Route::get('/obatbatuk160419001', 'ObatController160419001@obatbatuk')->name('obatbatuk160419001.obatbatuk');

Route::get('/daftarkategori160419001', 'ObatController160419001@descharga')->name('daftarkategori160419001.daftarkategori');

Route::get('/stokobatbanyak160419001', 'ObatController160419001@stokobat')->name('stokobatbanyak160419001.stokobat');