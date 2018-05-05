<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Status;
use Exception;

class StatusController extends Controller
{

    public function index1()
    {
    $status = Status::all()->toArray();
    return view('website.status.index', compact('status'));
    }

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $status = Status::all()->toArray();
      return view('cpanel.status.index', compact('status'));
    }

    public function create()
    {
         return view ('cpanel.status.create');

    }

    public function store(Request $request)
    {
      $status = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:statuss',
        'name_ar' => 'required|max:30|unique:statuss'
      ]);
      Status::create($status);
      return back()->with('success', trans('status.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $status = Status::find($id);
      return view('cpanel.status.edit',compact('status','id'));
    }

    public function update(Request $request, $id)
    {
      $status = Status::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:statuss',
        'name_ar' => 'required|max:30|unique:statuss'
      ]);
      $status->name_en = $request->get('name_en');
      $status->name_ar = $request->get('name_ar');
      $status->save();
      return redirect("cpanel\status")->with('success', trans('status.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Status::where('id', $id)->delete();
              return redirect("cpanel\status")->with('success',trans('status.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\status")->with('success',trans('status.Dalete_alert'));

                        }

    }
}
