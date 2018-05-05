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

Route::get('lang/{lang}', ['as'=>'lang.switch', 'uses'=>'LanguageController@switchLang']);

Route::get('/', function () {
    return view('auth/login');
});

Route::get('/we',function(){
  return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/profile','HomeController@profile');
Route::get('/home/report','HomeController@report');
Route::get('/home/report2','HomeController@report2');
Route::get('/home/report3','HomeController@report3');
Route::get('/home/report4','HomeController@report4');
Route::get('/home/report5','EmployeeController@report');

Route::get('/home/copy','HomeController@copy');

Route::get('avatars/{name}','EmployeeController@load');

Route::resource('cpanel/employee','EmployeeController');
Route::post('select-ajax-dept', ['as'=>'select-ajax-dept','uses'=>'EmployeeController@selectAjaxdept']);
Route::post('select-ajax-instite', ['as'=>'select-ajax-instite','uses'=>'EmployeeController@selectAjaxinstite']);
Route::get('/cpanel/employee/delete/{id}', 'EmployeeController@delete'); // Delete

Route::resource('cpanel/administration','AdministrationController');

Route::resource('cpanel/assistant','AssistantController');
Route::get('/cpanel/assistant/delete/{id}', 'AssistantController@delete'); // Delete

Route::resource('cpanel/directorate','DirectorateController');
Route::get('/cpanel/directorate/delete/{id}', 'DirectorateController@delete'); // Delete

Route::resource('cpanel/department','DepartmentController');
Route::post('select-ajax', ['as'=>'select-ajax','uses'=>'DepartmentController@selectAjax']);
Route::get('/cpanel/department/delete/{id}', 'DepartmentController@delete'); // Delete

Route::resource('cpanel/region','RegionController');
Route::get('/cpanel/region/delete/{id}', 'RegionController@delete'); // Delete

Route::resource('cpanel/institute','InstituteController');
Route::post('select-ajax-region', ['as'=>'select-ajax-region','uses'=>'InstituteController@selectAjax']);
Route::get('/cpanel/institute/delete/{id}', 'InstituteController@delete'); // Delete

Route::resource('cpanel/governate','GovernateController');
Route::get('/cpanel/governate/delete/{id}', 'GovernateController@delete'); // Delete

Route::resource('cpanel/job','JobController');
Route::get('/cpanel/job/delete/{id}', 'JobController@delete'); // Delete

Route::resource('cpanel/qualification','QualificationController');
Route::get('/cpanel/qualification/delete/{id}', 'QualificationController@delete'); // Delete

Route::resource('cpanel/specialization','SpecializationController');
Route::get('/cpanel/specialization/delete/{id}', 'SpecializationController@delete'); // Delete

Route::resource('cpanel/recruitmen','RecruitmenController');
Route::get('/cpanel/recruitmen/delete/{id}', 'RecruitmenController@delete'); // Delete

Route::resource('cpanel/category','CategoryController');
Route::get('/cpanel/category/delete/{id}', 'CategoryController@delete'); // Delete

Route::resource('cpanel/degree','DegreeController');
Route::get('/cpanel/degree/delete/{id}', 'DegreeController@delete'); // Delete

Route::resource('cpanel/status','StatusController');
Route::get('/cpanel/status/delete/{id}', 'StatusController@delete'); // Delete
