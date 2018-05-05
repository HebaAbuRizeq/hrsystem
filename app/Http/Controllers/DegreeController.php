<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Degree;
use Exception;

class DegreeController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $degree = Degree::all()->toArray();
      return view('cpanel.degree.index', compact('degree'));
    }

    public function create()
    {
         return view ('cpanel.degree.create');

    }

    public function store(Request $request)
    {
      $degree = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:degrees',
        'name_ar' => 'required|max:30|unique:degrees'
      ]);
      Degree::create($degree);
      return back()->with('success', trans('degree.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $degree = Degree::find($id);
      return view('cpanel.degree.edit',compact('degree','id'));
    }

    public function update(Request $request, $id)
    {
      $degree = Degree::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:degrees',
        'name_ar' => 'required|max:30|unique:degrees'
      ]);
      $degree->name_en = $request->get('name_en');
      $degree->name_ar = $request->get('name_ar');
      $degree->save();
      return redirect("cpanel\degree")->with('success', trans('degree.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Degree::where('id', $id)->delete();
              return redirect("cpanel\degree")->with('success',trans('degree.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\degree")->with('success',trans('degree.Dalete_alert'));

                        }

    }
}
