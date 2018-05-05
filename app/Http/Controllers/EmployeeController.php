<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;
use Exception;
use App\Employee;
use App\Governate;
use App\Department;
use App\Directorate;
use App\Institute;
use App\Region;
use App\Assistant;
use App\Administration;
use App\Job;
use App\Rjob;
use App\Cjob;
use App\Qualification;
use App\Cqualification;
use App\Specialization;
use App\Status;
use App\Category;
use App\Degree;
use App\Recruitmen;
use App\Gender;
use Carbon\Carbon;

class EmployeeController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
  }

    public function index()
    {
      $administration= Administration::all();
      $employee = DB::table('employees')
      ->leftJoin('jobs', 'employees.job_id', '=', 'jobs.id')
      ->leftJoin('departments', 'employees.department_id', '=', 'departments.id')
      ->leftJoin('directorates', 'employees.directorate_id', '=', 'directorates.id')
      ->leftJoin('institutes', 'employees.institute_id', '=', 'institutes.id')
      ->leftJoin('assistants', 'employees.assistant_id', '=', 'assistants.id')
      ->leftJoin('administrations', 'employees.administration_id', '=', 'administrations.id')
      ->leftJoin('regions', 'employees.region_id', '=', 'regions.id')
      ->leftJoin('rjobs', 'employees.rjob_id', '=', 'rjobs.id')
      ->leftJoin('cjobs', 'employees.cjob_id', '=', 'cjobs.id')
      ->leftJoin('qualifications', 'employees.qualification_id', '=', 'qualifications.id')
      ->leftJoin('cqualifications', 'employees.cqualification_id', '=', 'cqualifications.id')
      ->leftJoin('specializations', 'employees.specialization_id', '=', 'specializations.id')
      ->leftJoin('statuss', 'employees.status_id', '=', 'statuss.id')
      ->leftJoin('categorys', 'employees.category_id', '=', 'categorys.id')
      ->leftJoin('degrees', 'employees.degree_id', '=', 'degrees.id')
      ->leftJoin('recruitmens', 'employees.recruitmen_id', '=', 'recruitmens.id')
      ->leftJoin('genders', 'employees.gender_id', '=', 'genders.id')
      ->select('employees.*','jobs.id as job_id', 'jobs.name_ar as job_name_ar', 'jobs.name_en as job_name_en',
      'rjobs.id as rjob_id', 'rjobs.name_ar as rjob_name_ar', 'rjobs.name_en as rjob_name_en',
      'cjobs.id as cjob_id', 'cjobs.name_ar as cjob_name_ar', 'cjobs.name_en as cjob_name_en',
      'qualifications.id as qualification_id', 'qualifications.name_ar as qualification_name_ar', 'qualifications.name_en as qualification_name_en',
      'specializations.id as specialization_id', 'specializations.name_ar as specialization_name_ar', 'specializations.name_en as specialization_name_en',
      'cqualifications.id as cqualification_id', 'cqualifications.name_ar as cqualification_name_ar', 'cqualifications.name_en as cqualification_name_en',
      'statuss.id as status_id', 'statuss.name_ar as status_name_ar', 'statuss.name_en as status_name_en',
      'categorys.id as category_id', 'categorys.name_ar as category_name_ar', 'categorys.name_en as category_name_en',
      'degrees.id as degree_id', 'degrees.name_ar as degree_name_ar', 'degrees.name_en as degree_name_en',
      'recruitmens.id as recruitmen_id', 'recruitmens.name_ar as recruitmen_name_ar', 'recruitmens.name_en as recruitmen_name_en',
      'genders.id as gender_id', 'genders.name_ar as gender_name_ar', 'genders.name_en as gender_name_en',
      'departments.id as department_id', 'departments.name_ar as department_name_ar', 'departments.name_en as department_name_en','departments.directorate_id as department_directorate_id',
      'directorates.id as directorate_id', 'directorates.name_ar as directorate_name_ar', 'directorates.name_en as directorate_name_en',
      'institutes.id as institute_id', 'institutes.name_ar as institute_name_ar', 'institutes.name_en as institute_name_en', 'institutes.phone as institute_phone',
      'assistants.id as assistant_id', 'assistants.name_ar as assistant_name_ar', 'assistants.name_en as assistant_name_en',
      'administrations.id as administration_id', 'administrations.name_ar as administration_name_ar', 'administrations.name_en as administration_name_en','administrations.phone as administration_phone',
      'regions.id as region_id', 'regions.name_ar as region_name_ar', 'regions.name_en as region_name_en', 'regions.phone as region_phone')
      ->get();
      return view('cpanel\employee\index',['employee' => $employee,'administration'=>$administration]);
    }

    public function report()
    {
      $administration= Administration::all();
      $employee = DB::table('employees')
      ->leftJoin('jobs', 'employees.job_id', '=', 'jobs.id')
      ->leftJoin('departments', 'employees.department_id', '=', 'departments.id')
      ->leftJoin('directorates', 'employees.directorate_id', '=', 'directorates.id')
      ->leftJoin('institutes', 'employees.institute_id', '=', 'institutes.id')
      ->leftJoin('assistants', 'employees.assistant_id', '=', 'assistants.id')
      ->leftJoin('administrations', 'employees.administration_id', '=', 'administrations.id')
      ->leftJoin('regions', 'employees.region_id', '=', 'regions.id')
      ->leftJoin('rjobs', 'employees.rjob_id', '=', 'rjobs.id')
      ->leftJoin('cjobs', 'employees.cjob_id', '=', 'cjobs.id')
      ->leftJoin('qualifications', 'employees.qualification_id', '=', 'qualifications.id')
      ->leftJoin('cqualifications', 'employees.cqualification_id', '=', 'cqualifications.id')
      ->leftJoin('specializations', 'employees.specialization_id', '=', 'specializations.id')
      ->leftJoin('statuss', 'employees.status_id', '=', 'statuss.id')
      ->leftJoin('categorys', 'employees.category_id', '=', 'categorys.id')
      ->leftJoin('degrees', 'employees.degree_id', '=', 'degrees.id')
      ->leftJoin('recruitmens', 'employees.recruitmen_id', '=', 'recruitmens.id')
      ->leftJoin('genders', 'employees.gender_id', '=', 'genders.id')
      ->select('employees.*','jobs.id as job_id', 'jobs.name_ar as job_name_ar', 'jobs.name_en as job_name_en',
      'rjobs.id as rjob_id', 'rjobs.name_ar as rjob_name_ar', 'rjobs.name_en as rjob_name_en',
      'cjobs.id as cjob_id', 'cjobs.name_ar as cjob_name_ar', 'cjobs.name_en as cjob_name_en',
      'qualifications.id as qualification_id', 'qualifications.name_ar as qualification_name_ar', 'qualifications.name_en as qualification_name_en',
      'specializations.id as specialization_id', 'specializations.name_ar as specialization_name_ar', 'specializations.name_en as specialization_name_en',
      'cqualifications.id as cqualification_id', 'cqualifications.name_ar as cqualification_name_ar', 'cqualifications.name_en as cqualification_name_en',
      'statuss.id as status_id', 'statuss.name_ar as status_name_ar', 'statuss.name_en as status_name_en',
      'categorys.id as category_id', 'categorys.name_ar as category_name_ar', 'categorys.name_en as category_name_en',
      'degrees.id as degree_id', 'degrees.name_ar as degree_name_ar', 'degrees.name_en as degree_name_en',
      'recruitmens.id as recruitmen_id', 'recruitmens.name_ar as recruitmen_name_ar', 'recruitmens.name_en as recruitmen_name_en',
      'genders.id as gender_id', 'genders.name_ar as gender_name_ar', 'genders.name_en as gender_name_en',
      'departments.id as department_id', 'departments.name_ar as department_name_ar', 'departments.name_en as department_name_en','departments.directorate_id as department_directorate_id',
      'directorates.id as directorate_id', 'directorates.name_ar as directorate_name_ar', 'directorates.name_en as directorate_name_en',
      'institutes.id as institute_id', 'institutes.name_ar as institute_name_ar', 'institutes.name_en as institute_name_en', 'institutes.phone as institute_phone',
      'assistants.id as assistant_id', 'assistants.name_ar as assistant_name_ar', 'assistants.name_en as assistant_name_en',
      'administrations.id as administration_id', 'administrations.name_ar as administration_name_ar', 'administrations.name_en as administration_name_en','administrations.phone as administration_phone',
      'regions.id as region_id', 'regions.name_ar as region_name_ar', 'regions.name_en as region_name_en', 'regions.phone as region_phone')
      ->get();
      return view('cpanel\report5',['employee' => $employee,'administration'=>$administration]);
    }

    public function create()
    {
      $job = Job::all();
      $rjob = Rjob::all();
      $cjob = Cjob::all();
      $qualification = Qualification::all();
      $cqualification = Cqualification::all();
      $specialization = Specialization::all();
      $status = Status::all();
      $category = Category::all();
      $degree = Degree::all();
      $recruitmen = Recruitmen::all();
      $gender = Gender::all();
      $governate = Governate::all();
      $directorate = Directorate::all();
      $department = Department::all();
      $region = Region::all();
      $institute = Institute::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\employee\create',['directorate' => $directorate,'assistant' => $assistant,'administration' => $administration,'governate' => $governate, 'region' => $region,
      'department'=> $department,'institute'=>$institute,'region' => $region,'job'=> $job,'rjob'=> $rjob,'cjob'=> $cjob,'qualification'=> $qualification,'cqualification'=> $cqualification,
      'specialization'=> $specialization,'status'=> $status,'category'=> $category,'degree'=> $degree,'recruitmen'=> $recruitmen,'gender'=> $gender]);
    }


    public function selectAjaxdept(Request $request)
    {
      if($request->ajax()){
        $department= DB::table('departments')->where('directorate_id',$request->directorate_id)->get();
        $data = view('ajax-select-dept',compact('department'))->render();
        return response()->json(['options'=>$data]);
      }
    }
    public function selectAjaxinstite(Request $request)
    {
      if($request->ajax()){
        $institute= DB::table('institutes')->where('region_id',$request->region_id)->get();
        $data = view('ajax-select-instit',compact('institute'))->render();
        return response()->json(['options'=>$data]);
      }
    }




    public function store(Request $request)
    {
      $this->validateInput($request);
      // Upload image
      if ($request->file('picture') == null) {
    $path = "";
}else{

   $path = $request->file('picture')->store('avatars');
}

      $keys  = ['emp_no', 'sn','username','firstname_ar','secondname_ar',
      'thirdname_ar','lastname_ar','firstname_en','secondname_en','thirdname_en','lastname_en',
      'ext','mobile','email','dateofbirth','dateofhiring','yearofdegree',
      'job_id','rjob_id','cjob_id','qualification_id','cqualification_id','specialization_id','status_id','category_id',
      'degree_id','recruitmen_id','gender_id','department_id','directorate_id','institute_id',
      'region_id','assistant_id','administration_id'];
      $input = $this->createQueryInput($keys, $request);
      $input['picture'] = $path;

      // Not implement yet

      Employee::create($input);

      return redirect('cpanel\employee')->with('success',trans('employee.Alert_Success'));
    }

    public function show($id)
    {
        //
    }


    public function edit($id)
    {
      $employee =Employee::find($id);
      $job = Job::all();
      $rjob = Rjob::all();
      $cjob = Cjob::all();
      $qualification = Qualification::all();
      $cqualification = Cqualification::all();
      $specialization = Specialization::all();
      $status = Status::all();
      $category = Category::all();
      $degree = Degree::all();
      $recruitmen = Recruitmen::all();
      $gender = Gender::all();
      $governate = Governate::all();
      $directorate = Directorate::all();
      $department = Department::all();
      $region = Region::all();
      $institute = Institute::all();
      $assistant = Assistant::all();
      $administration = Administration::all();
      return view('cpanel\employee\edit',['employee'=>$employee,'directorate' => $directorate,'assistant' => $assistant,'administration' => $administration,'governate' => $governate, 'region' => $region,
      'department'=> $department,'institute'=>$institute,'region' => $region,'job'=> $job,'rjob'=> $rjob,'cjob'=> $cjob,'qualification'=> $qualification,'cqualification'=> $cqualification,
      'specialization'=> $specialization,'status'=> $status,'category'=> $category,'degree'=> $degree,'recruitmen'=> $recruitmen,'gender'=> $gender]);
    }

    public function update(Request $request, $id)
    {
      $this->validateInput($request);
      // Upload image
      if ($request->file('picture') == null) {
    $path = "";
}else{

   $path = $request->file('picture')->store('avatars');
}
      $employee =Employee::findOrFail($id);
      $this->validateInput($request);
      $keys = ['emp_no', 'sn','username','firstname_ar','secondname_ar',
      'thirdname_ar','lastname_ar','firstname_en','secondname_en','thirdname_en','lastname_en',
      'ext','mobile','email','dateofbirth','dateofhiring','yearofdegree',
      'job_id','rjob_id','cjob_id','qualification_id','cqualification_id','status_id','category_id',
      'degree_id','recruitmen_id','gender_id','department_id','directorate_id','specialization_id','institute_id',
      'region_id','assistant_id','administration_id'];
      $input['picture'] = $path;
      $input = $this->createQueryInput($keys, $request);
      Employee::where('id', $id)
          ->update($input);
          return redirect('cpanel\employee')->with('success',trans('employee.Alert_Edit'));

    }

    public function destroy($id)
    {
        //
    }

    public function delete($id, Request $request)
    {
      try{
        Employee::where('id', $id)->delete();
        return redirect('cpanel\employee')->with('success',trans('employee.Alert_Delete'));

                                }catch(Exception $e){
                                 return redirect('cpanel\employee')->with('success',trans('employee.Dalete_alert'));
                                }

}

        public function load($name) {
             $path = storage_path().'/app/avatars/'.$name;
            if (file_exists($path)) {
                return Response::download($path);
            }
        }

    private function validateInput($request) {
            $this->validate($request, [
            'emp_no' => 'required|digits:6|unique:employees',
            'sn' => 'required|digits:10|unique:employees',
            'username' => 'required|max:50',
            'firstname_ar' => 'required|alpha_spaces|max:25',
            'secondname_ar' => 'required|alpha_spaces|max:25',
            'thirdname_ar' => 'required|alpha_spaces|max:25',
            'lastname_ar' => 'required|alpha_spaces|max:25',
            'firstname_en' => 'nullable|alpha_spaces|max:25',
            'secondname_en' => 'nullable|alpha_spaces|max:25',
            'thirdname_en' => 'nullable|alpha_spaces|max:25',
            'lastname_en' => 'nullable|alpha_spaces|max:25',
            'email' => 'nullable|email|max:255|unique:employees',
            'mobile' => ['required','unique:employees','regex:/^07(7|8|9)\d{7}+$/'],
            'ext' =>'nullable|digits_between:1,3',
            
            'dateofbirth'=>'required|date|before:today',
            'dateofhiring' =>'required|date|after:dateofbirth',
            'picture' => 'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
            'yearofdegree'=>'nullable|digits:2',



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
