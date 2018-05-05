<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Governate;
use Exception;

class GovernateController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $governate = Governate::all()->toArray();
      return view('cpanel.governate.index', compact('governate'));
    }

    public function create()
    {
         return view ('cpanel.governate.create');

    }

    public function store(Request $request)
    {
      $governate = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:governates',
        'name_ar' => 'required|max:30|unique:governates'
      ]);
      Governate::create($governate);
      return back()->with('success', trans('governate.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $governate = Governate::find($id);
      return view('cpanel.governate.edit',compact('governate','id'));
    }

    public function update(Request $request, $id)
    {
      $governate = Governate::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:governates',
        'name_ar' => 'required|max:30|unique:governates'
      ]);
      $governate->name_en = $request->get('name_en');
      $governate->name_ar = $request->get('name_ar');
      $governate->save();
      return redirect("cpanel\governate")->with('success', trans('governate.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Governate::where('id', $id)->delete();
              return redirect("cpanel\governate")->with('success',trans('governate.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\governate")->with('success',trans('governate.Dalete_alert'));

                        }

    }
}
