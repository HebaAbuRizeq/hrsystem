<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Specialization;
use Exception;

class SpecializationController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $specialization = Specialization::all()->toArray();
      return view('cpanel.specialization.index', compact('specialization'));
    }

    public function create()
    {
         return view ('cpanel.specialization.create');

    }

    public function store(Request $request)
    {
      $specialization = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:specializations',
        'name_ar' => 'required|max:30|unique:specializations'
      ]);
      Specialization::create($specialization);
      return back()->with('success', trans('specialization.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $specialization = Specialization::find($id);
      return view('cpanel.specialization.edit',compact('specialization','id'));
    }

    public function update(Request $request, $id)
    {
      $specialization = Specialization::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:specializations',
        'name_ar' => 'required|max:30|unique:specializations'
      ]);
      $specialization->name_en = $request->get('name_en');
      $specialization->name_ar = $request->get('name_ar');
      $specialization->save();
      return redirect("cpanel\specialization")->with('success', trans('specialization.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Specialization::where('id', $id)->delete();
              return redirect("cpanel\specialization")->with('success',trans('specialization.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\specialization")->with('success',trans('specialization.Dalete_alert'));

                        }

    }
}
