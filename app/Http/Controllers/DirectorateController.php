<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Exception;
use App\Directorate;
use App\Assistant;
use App\Administration;
use App\Region;

class DirectorateController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth');
  }

    public function index()
    {
      $directorate = DB::table('directorates')
      ->leftJoin('assistants', 'directorates.assistant_id', '=', 'assistants.id')
      ->leftJoin('administrations', 'directorates.administration_id', '=', 'administrations.id')
      ->select('directorates.*','assistants.id as assistant_id', 'assistants.name_ar as assistant_name_ar', 'assistants.name_en as assistant_name_en',
      'administrations.id as administration_id', 'administrations.name_ar as administration_name_ar', 'administrations.name_en as administration_name_en')
      ->get();
      return view('cpanel.directorate.index',['directorate' => $directorate]);

    }

    public function create()
    {
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\directorate\create',['assistant' => $assistant,'administration' => $administration]);


    }

    public function store(Request $request)
    {

      $this->validateInput($request);
      $keys = ['name_en', 'name_ar', 'assistant_id', 'administration_id'];
      $input = $this->createQueryInput($keys, $request);
      Directorate::create($input);
      return back()->with('success', trans('directorate.Alert_Success'));


    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {

      $directorate = Directorate::findOrFail($id);
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('\cpanel\directorate\edit',['directorate' => $directorate,'assistant' => $assistant ,'administration' => $administration]);

    }

    public function update(Request $request, $id)
    {
      $directorate = Directorate::findOrFail($id);
    // Validate
     $this->validateInput($request);
   // Get Data by id
      $input = [
          'name_en' => $request['name_en'],
          'name_ar' => $request['name_ar'],
          'assistant_id' => $request['assistant_id'],

      ];
      Directorate::where('id', $id)
          ->update($input);
   return redirect('cpanel\directorate')->with('success',trans('directorate.Alert_Edit'));
    }

    public function destroy($id)
    {

          Directorate::findOrFail($id)->delete();

      return redirect("cpanel\directorate")->with('success',trans('directorate.Alert_Delete'));

    }

    public function delete($id, Request $request)
    {
      try{
        Directorate::where('id', $id)->delete();
        return redirect("cpanel\directorate")->with('success',trans('directorate.Alert_Delete'));

                                }catch(Exception $e){
                                 return redirect("cpanel\directorate")->with('success',trans('directorate.Dalete_alertV'));
                                }

            }



    private function validateInput($request) {
            $this->validate($request, [
            'name_en' => 'required|max:255|unique:directorates',
            'name_ar' => 'required|max:255|unique:directorates'
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
