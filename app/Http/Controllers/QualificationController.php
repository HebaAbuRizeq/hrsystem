<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Qualification;
use Exception;

class QualificationController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $qualification = Qualification::all()->toArray();
      return view('cpanel.qualification.index', compact('qualification'));
    }

    public function create()
    {
         return view ('cpanel.qualification.create');

    }

    public function store(Request $request)
    {
      $qualification = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:qualifications',
        'name_ar' => 'required|max:30|unique:qualifications'
      ]);
      Qualification::create($qualification);
      return back()->with('success', trans('qualification.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $qualification = Qualification::find($id);
      return view('cpanel.qualification.edit',compact('qualification','id'));
    }

    public function update(Request $request, $id)
    {
      $qualification = Qualification::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:qualifications',
        'name_ar' => 'required|max:30|unique:qualifications'
      ]);
      $qualification->name_en = $request->get('name_en');
      $qualification->name_ar = $request->get('name_ar');
      $qualification->save();
      return redirect("cpanel\qualification")->with('success', trans('qualification.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Qualification::where('id', $id)->delete();
              return redirect("cpanel\qualification")->with('success',trans('qualification.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\qualification")->with('success',trans('qualification.Dalete_alert'));

                        }

    }
}
