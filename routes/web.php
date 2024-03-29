<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->group(['prefix' => 'api'], function () use ($router) {
    
    $router->post('/register', 'Auth\UserRegistrationController@register');
    $router->post('/login', 'Auth\UserLoginController@login');

    $router->group(['middleware' => 'auth'], function () use ($router) {
        $router->get('/users', 'Auth\UserDetailsController@getDetails');
    });
});