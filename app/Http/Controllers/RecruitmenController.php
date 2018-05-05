<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Recruitmen;
use Exception;

class RecruitmenController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $recruitmen = Recruitmen::all()->toArray();
      return view('cpanel.recruitmen.index', compact('recruitmen'));
    }

    public function create()
    {
         return view ('cpanel.recruitmen.create');

    }

    public function store(Request $request)
    {
      $recruitmen = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:recruitmens',
        'name_ar' => 'required|max:30|unique:recruitmens'
      ]);
      Recruitmen::create($recruitmen);
      return back()->with('success', trans('recruitmen.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $recruitmen = Recruitmen::find($id);
      return view('cpanel.recruitmen.edit',compact('recruitmen','id'));
    }

    public function update(Request $request, $id)
    {
      $recruitmen = Recruitmen::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:recruitmens',
        'name_ar' => 'required|max:30|unique:recruitmens'
      ]);
      $recruitmen->name_en = $request->get('name_en');
      $recruitmen->name_ar = $request->get('name_ar');
      $recruitmen->save();
      return redirect("cpanel\recruitmen")->with('success', trans('recruitmen.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Recruitmen::where('id', $id)->delete();
              return redirect("cpanel\recruitmen")->with('success',trans('recruitmen.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\recruitmen")->with('success',trans('recruitmen.Dalete_alert'));

                        }

    }
}
