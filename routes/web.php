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

Route::get('reserva/pruebas','ReservaController@pruebas');

//api routes
Route::post('api/register','UserController@register');
Route::post('api/login','UserController@login');
Route::post('api/user/update','UserController@update');

//rutas del controlador de escenarios 

Route::resource('api/escenarios','EscenarioController');

//ruta controlador de reservas

Route::get('api/reserva/{id}','ReservaController@reservas');
Route::post('api/reserva/crear','ReservaController@registrarReserva');
Route::get('api/reserva/pendientes/{estado}','ReservaController@reservasPendientes');
Route::post('api/reserva/actualizar','ReservaController@actualizarReserva');