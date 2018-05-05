<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use App\Assistant;
use App\Administration;
use Exception;


class AssistantController extends Controller
{
  public function __construct()
  {
      $this->middleware('auth');
  }

    public function index()
    {

      $assistant = DB::table('assistants')
        ->leftJoin('administrations', 'assistants.administration_id', '=', 'administrations.id')
        ->select('assistants.*','administrations.id as administration_id', 'administrations.name_ar as administration_name_ar', 'administrations.name_en as administration_name_en')
        ->get();

        return view('cpanel.assistant.index',['assistant' => $assistant]);
    }



    public function create()
    {
      $administration = Administration::all();
      return view('cpanel.assistant.create',['administration' => $administration]);

    }


    public function store(Request $request)
    {
      $assistant = $this->validate(request(), [
        'name_en' => 'required|max:255|unique:assistants',
        'name_ar' => 'required|max:255|unique:assistants',
      ]);
      Assistant::create([
                 'name_en' => $request['name_en'],
                 'name_ar' => $request['name_ar'],
                 'administration_id' => $request['administration_id'],
             ]);
               return back()->with('success', trans('assistant.Alert_Success'));

    }


    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $administration = Administration::all();
      $assistant = Assistant::findOrFail($id);
      return view('\cpanel\assistant\edit')->with(['assistant'=> $assistant,'administration' => $administration]);
    }

    public function update(Request $request, $id)
    {
      $assistant = Assistant::findOrFail($id);
    // Validate
     $this->validateInput($request);
   // Get Data by id
      $input = [
          'name_en' => $request['name_en'],
          'name_ar' => $request['name_ar'],

      ];
      Assistant::where('id', $id)
          ->update($input);
   return redirect('cpanel\assistant')->with('success',trans('assistant.Alert_Edit'));
    }


    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{
              Assistant::where('id', $id)->delete();
              return redirect("cpanel\assistant")->with('success',trans('assistant.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\assistant")->with('success',trans('assistant.Dalete_alert'));

                        }
    }

   public function massDestroy(Request $request)
 {
     $assistants = explode(',', $request->input('ids'));
     foreach ($assistants as $assistant_id) {
         $assistant = Assistant::findOrFail($assistant_id);
         $assistant->delete();
     }
     return view("cpanel/assistant/test");
 }

private function validateInput($request) {
        $this->validate($request, [
        'name_en' => 'required|max:255|unique:assistants',
        'name_ar' => 'required|max:255|unique:assistants'
    ]);
    }
}
