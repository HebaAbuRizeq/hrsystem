<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Exception;
use App\Employee;
use App\Governate;
use App\Institute;
use App\Region;
use App\Directorate;
use App\Assistant;
use App\Administration;
use App\Job;
use Mapper;

class InstituteController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $institute = DB::table('institutes')
      ->leftJoin('regions', 'institutes.region_id', '=', 'regions.id')
      ->leftJoin('governates', 'institutes.governate_id', '=', 'governates.id')
      ->leftJoin('directorates', 'institutes.directorate_id', '=', 'directorate_id')
      ->select('institutes.*','regions.id as region_id', 'regions.name_ar as region_name_ar', 'regions.name_en as region_name_en',
      'directorates.id as directorate_id', 'directorates.name_ar as directorate_name_ar', 'directorates.name_en as directorates_name_en',
      'governates.id as governate_id', 'governates.name_ar as governate_name_ar', 'governates.name_en as governate_name_en')
      ->get();
      $employee = DB::table('employees')
      ->leftJoin('jobs', 'employees.job_id', '=', 'jobs.id')
      ->leftJoin('institutes', 'employees.institute_id', '=', 'institutes.id')
      ->select('employees.*','jobs.id as job_id', 'jobs.name_ar as job_name_ar', 'jobs.name_en as job_name_en',
      'institutes.id as institute_id', 'institutes.name_ar as institute_name_ar', 'institutes.name_en as institute_name_en', 'institutes.phone as institute_phone')
      ->get();
      foreach ($institute as $map) {
      Mapper::map($map->lat,$map->long, ['zoom' => 15, 'markers' => ['title' => 'sss', 'animation' => 'DROP']]);
      }


      return view('cpanel\institute\index',['institute' => $institute , 'employee' => $employee]);
    }

    public function create()
    {
      $governate = Governate::all();
      $directorate = Directorate::all();
      $region = Region::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\institute\create',['directorate' => $directorate,'assistant' => $assistant,'administration' => $administration,'governate' => $governate, 'region' => $region]);
    }


    public function store(Request $request)
    {
      $this->validateInput($request);
      $keys = ['name_en', 'name_ar','address_en','address_ar', 'phone','fax','mobile','email','neighborhood_ar','neighborhood_en','street_ar','street_en','bulding','lat','long','governate_id','region_id','directorate_id','assistant_id','administration_id'];
      $input = $this->createQueryInput($keys, $request);
      Institute::create($input);
      return redirect('cpanel\institute')->with('success',trans('institute.Alert_Success'));
    }

    public function selectAjax(Request $request)
    {
      if($request->ajax()){
        $region= DB::table('regions')->where('assistant_id',$request->assistant_id)->get();
        $data = view('ajax-select-region',compact('region'))->render();
        return response()->json(['options'=>$data]);
      }
    }



    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $institute = Institute::find($id);
      $region = Region::all();
      $directorate = Directorate::all();
      $governate = Governate::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\institute\edit',['directorate' => $directorate,'institute' => $institute,'region' => $region ,'assistant' => $assistant,'administration' => $administration,'governate' => $governate]);
    }

    public function update(Request $request, $id)
    {
      $institute = Institute::findOrFail($id);
      $this->validateInput($request);
      $keys = ['name_en', 'name_ar','address_en','address_ar', 'phone','fax','mobile','email','neighborhood_ar','neighborhood_en','street_ar','street_en','bulding','lat','long','governate_id','region_id','directorate_id','assistant_id','administration_id'];
      $input = $this->createQueryInput($keys, $request);
      Institute::where('id', $id)
          ->update($input);
          return redirect('cpanel\institute')->with('success',trans('institute.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }

    public function delete($id, Request $request)
    {
      try{
        Institute::where('id', $id)->delete();
        return redirect('cpanel\institute')->with('success',trans('institute.Alert_Delete'));

                                }catch(Exception $e){
                                 return redirect('cpanel\institute')->with('success',trans('institute.Dalete_alertV'));
                                }

}
    private function validateInput($request) {
            $this->validate($request, [
            'name_en' => 'required|max:255|unique:institutes',
            'name_ar' => 'required|max:255|unique:institutes',
            'email' => 'required|email|max:255|unique:institutes',
            'phone' => ['required','unique:institutes','regex:/^0(2|3|5|6|)\d{7}+$/'],
            'fax' => ['required','unique:institutes','regex:/^0(2|3|5|6|)\d{7}+$/'],
            'mobile' => ['required','unique:institutes','regex:/^07(7|8|9)\d{7}+$/'],

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
