<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use Exception;

class CategoryController extends Controller
{

    public function __construct()
    {
    $this->middleware('auth');
    }

    public function index()
    {
      $category = Category::all()->toArray();
      return view('cpanel.category.index', compact('category'));
    }

    public function create()
    {
         return view ('cpanel.category.create');

    }

    public function store(Request $request)
    {
      $category = $this->validate(request(), [
        'name_en' => 'required|max:30|unique:categorys',
        'name_ar' => 'required|max:30|unique:categorys'
      ]);
      Category::create($category);
      return back()->with('success', trans('category.Alert_Success'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
      $category = Category::find($id);
      return view('cpanel.category.edit',compact('category','id'));
    }

    public function update(Request $request, $id)
    {
      $category = Category::find($id);
      $this->validate(request(), [
        'name_en' => 'required|max:30|unique:categorys',
        'name_ar' => 'required|max:30|unique:categorys'
      ]);
      $category->name_en = $request->get('name_en');
      $category->name_ar = $request->get('name_ar');
      $category->save();
      return redirect("cpanel\category")->with('success', trans('category.Alert_Edit'));
    }

    public function destroy($id)
    {
        //
    }
    public function delete($id, Request $request)
    {

      try{    //here trying to update email and phone in db which are unique values
              Category::where('id', $id)->delete();
              return redirect("cpanel\category")->with('success',trans('category.Alert_Delete'));


                        }catch(Exception $e){
                         //if email or phone exist before in db redirect with error messages
                         return redirect("cpanel\category")->with('success',trans('category.Dalete_alert'));

                        }

    }
}
