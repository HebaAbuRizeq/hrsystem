<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use App\Administration;
use App\Governate;
use Mapper;

class AdministrationController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
    $administration = DB::table('administrations')
    ->leftJoin('governates', 'administrations.governate_id', '=', 'governates.id')
    ->select('administrations.*', 'governates.name_ar as governate_name_ar', 'governates.name_en as governate_name_en')
    ->get();
    foreach ($administration as $admin) {
    Mapper::map($admin->lat,$admin->long, ['zoom' => 10, 'markers' => ['title' => 'VTC', 'animation' => 'DROP']]);
    }

    return view('cpanel.administration.index',['administration' => $administration]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
