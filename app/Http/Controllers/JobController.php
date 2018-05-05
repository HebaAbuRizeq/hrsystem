<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use Exception;

class JobController extends Controller
{
    public function __construct()
    {
      $this->middleware('auth');
    }

    public function index()
    {
      $job = Job::all()->toArray();
      return view('cpanel.job.index', compact('job'));
    }

    public function create()
    {
         return view ('cpanel.job.create');
    }

    public function store(Request $request)
    {
      $job= $this->validate(request(), [
        'name_en' => 'required|max:30|unique:jobs',
        'name_ar' => 'required|max:30|unique:jobs'
      ]);
      Job::create($job);
      return back()->with('success', trans('job.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $job = Job::find($id);
      return view('cpanel.job.edit',compact('job','id'));
    }

    public function update(Request $request, $id)
    {
      $job = Job::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:jobs',
        'name_ar' => 'required|max:30|unique:jobs'
      ]);
      $job->name_en = $request->get('name_en');
      $job->name_ar = $request->get('name_ar');
      $job->save();
      return redirect("cpanel\job")->with('success', trans('job.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }

    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Job::where('id', $id)->delete();
              return redirect("cpanel\job")->with('success',trans('job.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\job")->with('success',trans('job.Dalete_alert'));

                        }

    }
}
