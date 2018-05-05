<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Exception;
use App\Region;
use App\Department;
use App\Directorate;
use App\Assistant;
use App\Administration;

class DepartmentController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth');
  }

    public function index()
    {

      $department = DB::table('departments')
      ->leftJoin('directorates', 'departments.directorate_id', '=', 'directorates.id')
      ->leftJoin('assistants', 'departments.assistant_id', '=', 'assistants.id')
      ->leftJoin('administrations', 'departments.administration_id', '=', 'administrations.id')
      ->leftJoin('regions', 'departments.region_id', '=', 'regions.id')
      ->select('departments.*','directorates.id as directorate_id', 'directorates.name_ar as directorate_name_ar', 'directorates.name_en as directorate_name_en',
      'assistants.id as assistant_id', 'assistants.name_ar as assistant_name_ar', 'assistants.name_en as assistant_name_en',
      'administrations.id as administration_id', 'administrations.name_ar as administration_name_ar', 'administrations.name_en as administration_name_en',
      'regions.id as region_id', 'regions.name_ar as region_name_ar', 'regions.name_en as region_name_en','regions.address_ar as region_address_ar','regions.address_en as region_address_en','regions.phone as region_phone',
      'regions.fax as region_fax','regions.mobile as region_mobile','regions.email as region_email','regions.lat as region_lat','regions.long as region_long'
      )->get();
      return view('cpanel\department\index',['department' => $department]);
    }

    public function create()
    {
      $region = Region::all();
      $directorate = Directorate::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\department\create',['assistant' => $assistant,'administration' => $administration,'directorate' => $directorate,'region' => $region]);
    }




    public function store(Request $request)
    {

                $this->validateInput($request);
                $keys = ['name_en', 'name_ar','directorate_id','region_id','assistant_id', 'administration_id'];
                $input = $this->createQueryInput($keys, $request);
                Department::create($input);
                return back()->with('success',trans('department.Alert_Success'));
    }

    public function selectAjax(Request $request)
    {
      if($request->ajax()){
        $directorate= DB::table('directorates')->where('assistant_id',$request->assistant_id)->get();
        $data = view('ajax-select',compact('directorate'))->render();
        return response()->json(['options'=>$data]);
      }
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {

      $department = Department::findOrFail($id);
      $directorate = Directorate::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('\cpanel\department\edit',['department'=>$department,'directorate' => $directorate,'assistant' => $assistant ,'administration' => $administration]);
    }

    public function update(Request $request, $id)
    {
      $department = Department::findOrFail($id);
      $this->validateInput($request);
      $input = [
          'name_en' => $request['name_en'],
          'name_ar' => $request['name_ar'],
          'directorate_id' => $request['directorate_id']

      ];
      Department::where('id', $id)
          ->update($input);
   return redirect('cpanel\department')->with('success',trans('department.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {
      try{
        Department::where('id', $id)->delete();
        return redirect("cpanel\department")->with('success',trans('department.Alert_Delete'));

                                }catch(Exception $e){
                                 return redirect("cpanel\department")->with('success',trans('department.Dalete_alert'));
                                }

            }
    private function validateInput($request) {
            $this->validate($request, [
            'name_en' => 'required|max:255|unique:departments',
            'name_ar' => 'required|max:255|unique:departments'
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
