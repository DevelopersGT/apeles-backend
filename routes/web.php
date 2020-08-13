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
    if (file_exists(storage_path('installed'))) {
        if (!is_null(config('app.front_url'))) {
            return redirect(config('app.front_url'));
        }
        return response()->json('Success');
    } else {
        Artisan::call('config:clear', []);
        \View::addLocation(base_path().'/Modules/Installer/Views');
        \View::addNamespace('theme', base_path().'/Modules/Installer/Views');
        return View::make('theme::welcome');
    }
})->name('index');

// Application cache cleared.
Route::get('/cache-clear', function() {
    Artisan::call('cache:clear');
    return "Application cache cleared!";
});

// Configuration cached.
Route::get('/config-cache', function() {
    Artisan::call('config:cache');
    return "Configuration cache cleared!<br>Configuration cached successfully!";
});
