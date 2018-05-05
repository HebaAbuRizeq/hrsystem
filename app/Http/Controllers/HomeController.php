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
use Mapper;


class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
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
      $emp = Employee::count();
      $ins = Institute::count();
      $male = DB::table('employees')->where('gender_id','=',1)->count();
      $female = DB::table('employees')->where('gender_id','=',2)->count();

      $administrative= DB::table('employees')->where('cjob_id','=',1)->count();
      $trainerc= DB::table('employees')->where('cjob_id','=',2)->count();
      $trainero= DB::table('employees')->where('cjob_id','=',3)->count();
      $trainer= DB::table('employees')->where('cjob_id','=',4)->count();
      $teacher= DB::table('employees')->where('cjob_id','=',5)->count();
      $user= DB::table('employees')->where('cjob_id','=',6)->count();
      $technical= DB::table('employees')->where('cjob_id','=',7)->count();

      $lsecondary= DB::table('employees')->where('cqualification_id','=',1)->count();
      $secondary= DB::table('employees')->where('cqualification_id','=',2)->count();
      $diploma= DB::table('employees')->where('cqualification_id','=',3)->count();
      $ba= DB::table('employees')->where('cqualification_id','=',4)->count();
      $postgraduate= DB::table('employees')->where('cqualification_id','=',5)->count();

      $mlsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 1])->count();
      $flsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 2])->count();
      $mlsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 1])->count();
      $flsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 2])->count();
      $mlsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 1])->count();
      $flsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 2])->count();
      $mlsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 1])->count();
      $flsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 2])->count();
      $mlsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 1])->count();
      $flsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 2])->count();
      $mlsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 1])->count();
      $flsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 2])->count();
      $mlsetec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 1])->count();
      $flsetec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 2])->count();

      $mbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 1])->count();
      $fbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 2])->count();
      $mbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 1])->count();
      $fbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 2])->count();
      $mbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 1])->count();
      $fbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 2])->count();
      $mbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 1])->count();
      $fbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 2])->count();
      $mbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 1])->count();
      $fbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 2])->count();
      $mbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 1])->count();
      $fbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 2])->count();
      $mbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 1])->count();
      $fbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 2])->count();

      $msecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 1])->count();
      $fsecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 2])->count();
      $msectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 1])->count();
      $fsectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 2])->count();
      $msecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 1])->count();
      $fsecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 2])->count();
      $msectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 1])->count();
      $fsectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 2])->count();
      $msecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 1])->count();
      $fsecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 2])->count();
      $msecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 1])->count();
      $fsecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 2])->count();
      $msectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 1])->count();
      $fsectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 2])->count();

      $mdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 1])->count();
      $fdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 2])->count();
      $mdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 1])->count();
      $fdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 2])->count();
      $mdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 1])->count();
      $fdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 2])->count();
      $mdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 1])->count();
      $fdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 2])->count();
      $mdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 1])->count();
      $fdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 2])->count();
      $mdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 1])->count();
      $fdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 2])->count();
      $mdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 1])->count();
      $fdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 2])->count();

      $mpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 1])->count();
      $fpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 2])->count();
      $mpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 1])->count();
      $fpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 2])->count();
      $mpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 1])->count();
      $fpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 2])->count();
      $mpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 1])->count();
      $fpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 2])->count();
      $mpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 1])->count();
      $fpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 2])->count();
      $mpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 1])->count();
      $fpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 2])->count();
      $mpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 1])->count();
      $fpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 2])->count();

      return view('home', compact('employee','directorate','assistant','administration','governate','region','department','region','job','rjob','cjob','qualification','cqualification',
      'specialization','status','category','degree','recruitmen','gender','emp','ins','male','female','administrative','technical','user','trainer','trainerc','trainero','teacher',
      'diploma','ba','secondary','postgraduate','lsecondary',
      'mlsecad','flsecad','mlsectc','flsectc','mlsecto','flsecto','mlsectr','flsectr','mlsecte','flsecte','mlsecus','flsecus','mbaad','fbaad','mbatc','fbatc','mbato','fbato','mbatr','fbatr','mbate',
      'fbate','mbaus','fbaus','msecad','fsecad','msectc','fsectc','msecto','fsecto','msectr','fsectr','msecte','fsecte','msecus','fsecus','mdipad','fdipad','mdiptc','fdiptc','mdipto','fdipto','mdiptr',
      'fdiptr','mdipte','fdipte','mdipus','fdipus','mpgad','fpgad','mpgtc','fpgtc','mpgto','fpgto','mpgtr','fpgtr','mpgte','fpgte','mpgus','fpgus','fpgtec','mpgtec','fdiptec','mdiptec',
      'fsectec','msectec','fbatec','mbatec','flsetec','mlsetec'
    ));


    }

    public function report()
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
      $emp = Employee::count();
      $ins = Institute::count();
      $male = DB::table('employees')->where('gender_id','=',1)->count();
      $female = DB::table('employees')->where('gender_id','=',2)->count();
      $administrative= DB::table('employees')->where('cjob_id','=',1)->count();
      $technical= DB::table('employees')->where('cjob_id','=',2)->count();
      $user= DB::table('employees')->where('cjob_id','=',3)->count();
      $trainer= DB::table('employees')->where('cjob_id','=',4)->count();
      $ba= DB::table('employees')->where('cqualification_id','=',2)->count();
      $secondary= DB::table('employees')->where('cqualification_id','=',3)->count();
      $diploma= DB::table('employees')->where('cqualification_id','=',4)->count();
      $postgraduate= DB::table('employees')->where('cqualification_id','=',5)->count();

      $mlsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 1])->count();
      $flsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 2])->count();
      $mlsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 1])->count();
      $flsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 2])->count();
      $mlsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 1])->count();
      $flsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 2])->count();
      $mlsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 1])->count();
      $flsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 2])->count();
      $mlsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 1])->count();
      $flsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 2])->count();
      $mlsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 1])->count();
      $flsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 2])->count();
      $mlsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 1])->count();
      $flsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 2])->count();

      $mbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 1])->count();
      $fbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 2])->count();
      $mbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 1])->count();
      $fbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 2])->count();
      $mbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 1])->count();
      $fbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 2])->count();
      $mbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 1])->count();
      $fbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 2])->count();
      $mbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 1])->count();
      $fbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 2])->count();
      $mbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 1])->count();
      $fbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 2])->count();
      $mbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 1])->count();
      $fbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 2])->count();

      $msecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 1])->count();
      $fsecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 2])->count();
      $msectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 1])->count();
      $fsectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 2])->count();
      $msecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 1])->count();
      $fsecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 2])->count();
      $msectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 1])->count();
      $fsectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 2])->count();
      $msecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 1])->count();
      $fsecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 2])->count();
      $msecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 1])->count();
      $fsecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 2])->count();
      $msectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 1])->count();
      $fsectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 2])->count();

      $mdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 1])->count();
      $fdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 2])->count();
      $mdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 1])->count();
      $fdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 2])->count();
      $mdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 1])->count();
      $fdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 2])->count();
      $mdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 1])->count();
      $fdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 2])->count();
      $mdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 1])->count();
      $fdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 2])->count();
      $mdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 1])->count();
      $fdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 2])->count();
      $mdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 1])->count();
      $fdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 2])->count();

      $mpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 1])->count();
      $fpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 2])->count();
      $mpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 1])->count();
      $fpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 2])->count();
      $mpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 1])->count();
      $fpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 2])->count();
      $mpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 1])->count();
      $fpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 2])->count();
      $mpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 1])->count();
      $fpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 2])->count();
      $mpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 1])->count();
      $fpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 2])->count();
      $mpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 1])->count();
      $fpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 2])->count();

      return view('cpanel/report', compact('employee','directorate','assistant','administration','governate','region','department','region','job','rjob','cjob','qualification','cqualification',
      'specialization','status','category','degree','recruitmen','gender','emp','ins','male','female','administrative','technical','user','trainer' ,'diploma','ba','secondary','postgraduate',
      'mlsecad','flsecad','mlsectc','flsectc','mlsecto','flsecto','mlsectr','flsectr','mlsecte','flsecte','mlsecus','flsecus','mbaad','fbaad','mbatc','fbatc','mbato','fbato','mbatr','fbatr','mbate',
      'fbate','mbaus','fbaus','msecad','fsecad','msectc','fsectc','msecto','fsecto','msectr','fsectr','msecte','fsecte','msecus','fsecus','mdipad','fdipad','mdiptc','fdiptc','mdipto','fdipto','mdiptr',
      'fdiptr','mdipte','fdipte','mdipus','fdipus','mpgad','fpgad','mpgtc','fpgtc','mpgto','fpgto','mpgtr','fpgtr','mpgte','fpgte','mpgus','fpgus','mlsectec','flsectec','mbatec','fbatec','msectec','fsectec','mdiptec','fdiptec','mpgtec','fpgtec'));
    }
    public function report2()
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
      $emp = Employee::count();
      $ins = Institute::count();
      $male = DB::table('employees')->where('gender_id','=',1)->count();
      $female = DB::table('employees')->where('gender_id','=',2)->count();
      $administrative= DB::table('employees')->where('cjob_id','=',1)->count();
      $technical= DB::table('employees')->where('cjob_id','=',2)->count();
      $user= DB::table('employees')->where('cjob_id','=',3)->count();
      $trainer= DB::table('employees')->where('cjob_id','=',4)->count();
      $ba= DB::table('employees')->where('cqualification_id','=',2)->count();
      $secondary= DB::table('employees')->where('cqualification_id','=',3)->count();
      $diploma= DB::table('employees')->where('cqualification_id','=',4)->count();
      $postgraduate= DB::table('employees')->where('cqualification_id','=',5)->count();

      $mlsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 1])->count();
      $flsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 2])->count();
      $mlsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 1])->count();
      $flsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 2])->count();
      $mlsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 1])->count();
      $flsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 2])->count();
      $mlsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 1])->count();
      $flsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 2])->count();
      $mlsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 1])->count();
      $flsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 2])->count();
      $mlsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 1])->count();
      $flsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 2])->count();
      $mlsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 1])->count();
      $flsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 2])->count();

      $mbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 1])->count();
      $fbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 2])->count();
      $mbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 1])->count();
      $fbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 2])->count();
      $mbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 1])->count();
      $fbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 2])->count();
      $mbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 1])->count();
      $fbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 2])->count();
      $mbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 1])->count();
      $fbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 2])->count();
      $mbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 1])->count();
      $fbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 2])->count();
      $mbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 1])->count();
      $fbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 2])->count();

      $msecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 1])->count();
      $fsecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 2])->count();
      $msectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 1])->count();
      $fsectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 2])->count();
      $msecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 1])->count();
      $fsecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 2])->count();
      $msectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 1])->count();
      $fsectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 2])->count();
      $msecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 1])->count();
      $fsecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 2])->count();
      $msecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 1])->count();
      $fsecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 2])->count();
      $msectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 1])->count();
      $fsectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 2])->count();

      $mdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 1])->count();
      $fdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 2])->count();
      $mdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 1])->count();
      $fdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 2])->count();
      $mdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 1])->count();
      $fdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 2])->count();
      $mdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 1])->count();
      $fdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 2])->count();
      $mdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 1])->count();
      $fdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 2])->count();
      $mdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 1])->count();
      $fdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 2])->count();
      $mdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 1])->count();
      $fdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 2])->count();

      $mpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 1])->count();
      $fpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 2])->count();
      $mpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 1])->count();
      $fpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 2])->count();
      $mpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 1])->count();
      $fpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 2])->count();
      $mpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 1])->count();
      $fpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 2])->count();
      $mpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 1])->count();
      $fpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 2])->count();
      $mpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 1])->count();
      $fpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 2])->count();
      $mpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 1])->count();
      $fpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 2])->count();

      return view('cpanel/report2', compact('employee','directorate','assistant','administration','governate','region','department','region','job','rjob','cjob','qualification','cqualification',
      'specialization','status','category','degree','recruitmen','gender','emp','ins','male','female','administrative','technical','user','trainer' ,'diploma','ba','secondary','postgraduate',
      'mlsecad','flsecad','mlsectc','flsectc','mlsecto','flsecto','mlsectr','flsectr','mlsecte','flsecte','mlsecus','flsecus','mbaad','fbaad','mbatc','fbatc','mbato','fbato','mbatr','fbatr','mbate',
      'fbate','mbaus','fbaus','msecad','fsecad','msectc','fsectc','msecto','fsecto','msectr','fsectr','msecte','fsecte','msecus','fsecus','mdipad','fdipad','mdiptc','fdiptc','mdipto','fdipto','mdiptr',
      'fdiptr','mdipte','fdipte','mdipus','fdipus','mpgad','fpgad','mpgtc','fpgtc','mpgto','fpgto','mpgtr','fpgtr','mpgte','fpgte','mpgus','fpgus','mlsectec','flsectec','mbatec','fbatec','msectec','fsectec','mdiptec','fdiptec','mpgtec','fpgtec'));
    }
    public function report3()
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
      $emp = Employee::count();
      $ins = Institute::count();
      $male = DB::table('employees')->where('gender_id','=',1)->count();
      $female = DB::table('employees')->where('gender_id','=',2)->count();
      $administrative= DB::table('employees')->where('cjob_id','=',1)->count();
      $technical= DB::table('employees')->where('cjob_id','=',2)->count();
      $user= DB::table('employees')->where('cjob_id','=',3)->count();
      $trainer= DB::table('employees')->where('cjob_id','=',4)->count();
      $ba= DB::table('employees')->where('cqualification_id','=',2)->count();
      $secondary= DB::table('employees')->where('cqualification_id','=',3)->count();
      $diploma= DB::table('employees')->where('cqualification_id','=',4)->count();
      $postgraduate= DB::table('employees')->where('cqualification_id','=',5)->count();

      $mlsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 1])->count();
      $flsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 2])->count();
      $mlsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 1])->count();
      $flsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 2])->count();
      $mlsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 1])->count();
      $flsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 2])->count();
      $mlsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 1])->count();
      $flsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 2])->count();
      $mlsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 1])->count();
      $flsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 2])->count();
      $mlsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 1])->count();
      $flsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 2])->count();
      $mlsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 1])->count();
      $flsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 2])->count();

      $mbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 1])->count();
      $fbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 2])->count();
      $mbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 1])->count();
      $fbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 2])->count();
      $mbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 1])->count();
      $fbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 2])->count();
      $mbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 1])->count();
      $fbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 2])->count();
      $mbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 1])->count();
      $fbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 2])->count();
      $mbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 1])->count();
      $fbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 2])->count();
      $mbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 1])->count();
      $fbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 2])->count();

      $msecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 1])->count();
      $fsecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 2])->count();
      $msectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 1])->count();
      $fsectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 2])->count();
      $msecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 1])->count();
      $fsecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 2])->count();
      $msectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 1])->count();
      $fsectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 2])->count();
      $msecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 1])->count();
      $fsecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 2])->count();
      $msecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 1])->count();
      $fsecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 2])->count();
      $msectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 1])->count();
      $fsectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 2])->count();

      $mdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 1])->count();
      $fdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 2])->count();
      $mdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 1])->count();
      $fdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 2])->count();
      $mdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 1])->count();
      $fdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 2])->count();
      $mdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 1])->count();
      $fdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 2])->count();
      $mdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 1])->count();
      $fdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 2])->count();
      $mdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 1])->count();
      $fdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 2])->count();
      $mdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 1])->count();
      $fdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 2])->count();

      $mpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 1])->count();
      $fpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 2])->count();
      $mpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 1])->count();
      $fpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 2])->count();
      $mpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 1])->count();
      $fpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 2])->count();
      $mpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 1])->count();
      $fpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 2])->count();
      $mpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 1])->count();
      $fpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 2])->count();
      $mpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 1])->count();
      $fpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 2])->count();
      $mpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 1])->count();
      $fpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 2])->count();

      return view('cpanel/report3', compact('employee','directorate','assistant','administration','governate','region','department','region','job','rjob','cjob','qualification','cqualification',
      'specialization','status','category','degree','recruitmen','gender','emp','ins','male','female','administrative','technical','user','trainer' ,'diploma','ba','secondary','postgraduate',
      'mlsecad','flsecad','mlsectc','flsectc','mlsecto','flsecto','mlsectr','flsectr','mlsecte','flsecte','mlsecus','flsecus','mbaad','fbaad','mbatc','fbatc','mbato','fbato','mbatr','fbatr','mbate',
      'fbate','mbaus','fbaus','msecad','fsecad','msectc','fsectc','msecto','fsecto','msectr','fsectr','msecte','fsecte','msecus','fsecus','mdipad','fdipad','mdiptc','fdiptc','mdipto','fdipto','mdiptr',
      'fdiptr','mdipte','fdipte','mdipus','fdipus','mpgad','fpgad','mpgtc','fpgtc','mpgto','fpgto','mpgtr','fpgtr','mpgte','fpgte','mpgus','fpgus','mlsectec','flsectec','mbatec','fbatec','msectec','fsectec','mdiptec','fdiptec','mpgtec','fpgtec'));
    }
    public function report4()
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
      $emp = Employee::count();
      $ins = Institute::count();
      $male = DB::table('employees')->where('gender_id','=',1)->count();
      $female = DB::table('employees')->where('gender_id','=',2)->count();
      $administrative= DB::table('employees')->where('cjob_id','=',1)->count();
      $technical= DB::table('employees')->where('cjob_id','=',2)->count();
      $user= DB::table('employees')->where('cjob_id','=',3)->count();
      $trainer= DB::table('employees')->where('cjob_id','=',4)->count();
      $ba= DB::table('employees')->where('cqualification_id','=',2)->count();
      $secondary= DB::table('employees')->where('cqualification_id','=',3)->count();
      $diploma= DB::table('employees')->where('cqualification_id','=',4)->count();
      $postgraduate= DB::table('employees')->where('cqualification_id','=',5)->count();

      $mlsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 1])->count();
      $flsecad= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 1,'gender_id' => 2])->count();
      $mlsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 1])->count();
      $flsectc= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 2,'gender_id' => 2])->count();
      $mlsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 1])->count();
      $flsecto= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 3,'gender_id' => 2])->count();
      $mlsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 1])->count();
      $flsectr= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 4,'gender_id' => 2])->count();
      $mlsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 1])->count();
      $flsecte= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 5,'gender_id' => 2])->count();
      $mlsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 1])->count();
      $flsecus= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 6,'gender_id' => 2])->count();
      $mlsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 1])->count();
      $flsectec= DB::table('employees')->where(['cqualification_id' => 1,'cjob_id' => 7,'gender_id' => 2])->count();

      $mbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 1])->count();
      $fbaad= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 1,'gender_id' => 2])->count();
      $mbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 1])->count();
      $fbatc= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 2,'gender_id' => 2])->count();
      $mbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 1])->count();
      $fbato= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 3,'gender_id' => 2])->count();
      $mbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 1])->count();
      $fbatr= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 4,'gender_id' => 2])->count();
      $mbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 1])->count();
      $fbate= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 5,'gender_id' => 2])->count();
      $mbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 1])->count();
      $fbaus= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 6,'gender_id' => 2])->count();
      $mbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 1])->count();
      $fbatec= DB::table('employees')->where(['cqualification_id' => 2,'cjob_id' => 7,'gender_id' => 2])->count();

      $msecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 1])->count();
      $fsecad= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 1,'gender_id' => 2])->count();
      $msectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 1])->count();
      $fsectc= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 2,'gender_id' => 2])->count();
      $msecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 1])->count();
      $fsecto= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 3,'gender_id' => 2])->count();
      $msectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 1])->count();
      $fsectr= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 4,'gender_id' => 2])->count();
      $msecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 1])->count();
      $fsecte= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 5,'gender_id' => 2])->count();
      $msecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 1])->count();
      $fsecus= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 6,'gender_id' => 2])->count();
      $msectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 1])->count();
      $fsectec= DB::table('employees')->where(['cqualification_id' => 3,'cjob_id' => 7,'gender_id' => 2])->count();

      $mdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 1])->count();
      $fdipad= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 1,'gender_id' => 2])->count();
      $mdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 1])->count();
      $fdiptc= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 2,'gender_id' => 2])->count();
      $mdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 1])->count();
      $fdipto= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 3,'gender_id' => 2])->count();
      $mdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 1])->count();
      $fdiptr= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 4,'gender_id' => 2])->count();
      $mdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 1])->count();
      $fdipte= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 5,'gender_id' => 2])->count();
      $mdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 1])->count();
      $fdipus= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 6,'gender_id' => 2])->count();
      $mdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 1])->count();
      $fdiptec= DB::table('employees')->where(['cqualification_id' => 4,'cjob_id' => 7,'gender_id' => 2])->count();

      $mpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 1])->count();
      $fpgad= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 1,'gender_id' => 2])->count();
      $mpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 1])->count();
      $fpgtc= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 2,'gender_id' => 2])->count();
      $mpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 1])->count();
      $fpgto= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 3,'gender_id' => 2])->count();
      $mpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 1])->count();
      $fpgtr= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 4,'gender_id' => 2])->count();
      $mpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 1])->count();
      $fpgte= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 5,'gender_id' => 2])->count();
      $mpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 1])->count();
      $fpgus= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 6,'gender_id' => 2])->count();
      $mpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 1])->count();
      $fpgtec= DB::table('employees')->where(['cqualification_id' => 5,'cjob_id' => 7,'gender_id' => 2])->count();

      return view('cpanel/report4', compact('employee','directorate','assistant','administration','governate','region','department','region','job','rjob','cjob','qualification','cqualification',
      'specialization','status','category','degree','recruitmen','gender','emp','ins','male','female','administrative','technical','user','trainer' ,'diploma','ba','secondary','postgraduate',
      'mlsecad','flsecad','mlsectc','flsectc','mlsecto','flsecto','mlsectr','flsectr','mlsecte','flsecte','mlsecus','flsecus','mbaad','fbaad','mbatc','fbatc','mbato','fbato','mbatr','fbatr','mbate',
      'fbate','mbaus','fbaus','msecad','fsecad','msectc','fsectc','msecto','fsecto','msectr','fsectr','msecte','fsecte','msecus','fsecus','mdipad','fdipad','mdiptc','fdiptc','mdipto','fdipto','mdiptr',
      'fdiptr','mdipte','fdipte','mdipus','fdipus','mpgad','fpgad','mpgtc','fpgtc','mpgto','fpgto','mpgtr','fpgtr','mpgte','fpgte','mpgus','fpgus','mlsectec','flsectec','mbatec','fbatec','msectec','fsectec','mdiptec','fdiptec','mpgtec','fpgtec'));
    }
    public function profile()
    {
        return view ('cpanel/profile');
    }

    public function copy()
    {
      $administration = DB::table('administrations')
      ->leftJoin('governates', 'administrations.governate_id', '=', 'governates.id')
      ->select('administrations.*', 'governates.name_ar as governate_name_ar', 'governates.name_en as governate_name_en')
      ->get();
      foreach ($administration as $admin) {
      Mapper::map($admin->lat,$admin->long, ['zoom' => 10, 'markers' => ['title' => 'VTC', 'animation' => 'DROP']]);
      }

      return view('cpanel/copy',['administration' => $administration]);

    }
}
