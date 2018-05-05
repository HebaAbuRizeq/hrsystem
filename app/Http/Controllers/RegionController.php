<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Exception;
use App\Governate;
use App\Region;
use App\Assistant;
use App\Administration;
use Mapper;
class RegionController extends Controller

{
    public function __construct()
    {
      $this->middleware('auth');
    }


    public function index()
    {
      $region = DB::table('regions')
      ->leftJoin('assistants', 'regions.assistant_id', '=', 'assistants.id')
      ->leftJoin('governates', 'regions.governate_id', '=', 'governates.id')
      ->select('regions.*','assistants.id as assistant_id', 'assistants.name_ar as assistant_name_ar', 'assistants.name_en as assistant_name_en','governates.id as governate_id', 'governates.name_ar as governate_name_ar', 'governates.name_en as governate_name_en')
      ->get();
      foreach ($region as $reg) {
      Mapper::map($reg->lat,$reg->long, ['zoom' => 10, 'markers' => ['title' => 'VTC', 'animation' => 'DROP']]);
      }
      return view('cpanel\region\index',['region' => $region]);
    }

    public function create()
    {
      $governate = Governate::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\region\create',['assistant' => $assistant,'administration' => $administration,'governate' => $governate]);
    }


    public function store(Request $request)
    {
      $this->validateInput($request);
      $keys = ['name_en', 'name_ar', 'address_ar', 'phone', 'fax', 'mobile','email', 'address_en','neighborhood_ar','neighborhood_en','street_ar','street_en','bulding','lat','long', 'governate_id','assistant_id'];
      $input = $this->createQueryInput($keys, $request);
      Region::create($input);
      return redirect('cpanel\region')->with('success',trans('region.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $region = Region::find($id);

      $governate = Governate::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\region\edit',['region' => $region ,'assistant' => $assistant,'administration' => $administration,'governate' => $governate]);
    }


    public function update(Request $request, $id)
    {
      $region = Region::findOrFail($id);
      $this->validateInput($request);
      $keys = ['name_en', 'name_ar', 'address_ar', 'phone', 'fax', 'mobile','email', 'address_en','neighborhood_ar','neighborhood_en','street_ar','street_en','bulding','lat','long', 'governate_id','assistant_id'];
      $input = $this->createQueryInput($keys, $request);
      Region::where('id', $id)
          ->update($input);
          return redirect('cpanel\region')->with('success',trans('region.Alert_Edit'));
    }

    public function destroy($id)
    {

    }

    public function delete($id, Request $request)
    {
      try{
        Region::where('id', $id)->delete();
        return redirect('cpanel\region')->with('success',trans('region.Alert_Delete'));

                                }catch(Exception $e){
                                 return redirect('cpanel\region')->with('success',trans('region.Dalete_alert'));
                                }

}
        private function validateInput($request) {
                $this->validate($request, [
                'name_en' => 'required|max:255|unique:regions',
                'name_ar' => 'required|max:255|unique:regions',
                'email' => 'required|email|max:255|unique:regions',
                'phone' => ['required','unique:regions','regex:/^0(2|3|5|6|)\d{7}+$/'],
                'fax' => ['required','unique:regions','regex:/^0(2|3|5|6|)\d{7}+$/'],
                'mobile' => ['required','unique:regions','regex:/^07(7|8|9)\d{7}+$/'],
            ]);

            }

            private function createQueryInput($keys, $request) {
    $queryInput = [];
    for($i = 0; $i < sizeof($keys); $i++) {
        $key = $keys[$i];
        $queryInput[$key] = $request[$key];
    }

    return $queryInput;
}
}
