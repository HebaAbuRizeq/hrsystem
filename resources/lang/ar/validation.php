<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => 'The :attribute must be accepted.',
    'active_url'           => 'The :attribute is not a valid URL.',
    'after'                => ':attribute يجب أن يكون بعد   :date.',
    'after_or_equal'       => 'The :attribute must be a date after or equal to :date.',
    'alpha'                => ':attribute يجب أن يكون من حروف.',
    'alpha_dash'           => 'The :attribute may only contain letters, numbers, and dashes.',
    'alpha_num'            => 'The :attribute may only contain letters and numbers.',
    'array'                => 'The :attribute must be an array.',
    'before'               => ':attribute يجب أن يكون قبل تاريخ اليوم',
    'before_or_equal'      => 'The :attribute must be a date before or equal to :date.',
    'between'              => [
        'numeric' => 'The :attribute must be between :min and :max.',
        'file'    => 'The :attribute must be between :min and :max kilobytes.',
        'string'  => 'The :attribute must be between :min and :max characters.',
        'array'   => 'The :attribute must have between :min and :max items.',
    ],
    'boolean'              => 'The :attribute field must be true or false.',
    'confirmed'            => 'The :attribute confirmation does not match.',
    'date'                 => 'The :attribute is not a valid date.',
    'date_format'          => 'The :attribute does not match the format :format.',
    'different'            => 'The :attribute and :other must be different.',
    'digits'               => ':attribute يجب أن يساوي  :digits أرقام،ويجب أن يكون رقمًا.',
    'digits_between'       => ':attribute يجب أن يكون بين  :min و :max خانة ويجب أم يكون من أرقام.',
    'dimensions'           => 'The :attribute has invalid image dimensions.',
    'distinct'             => 'The :attribute field has a duplicate value.',
    'email'                => 'عنوان :attribute غير صالح',
    'exists'               => 'The selected :attribute is invalid.',
    'file'                 => 'The :attribute must be a file.',
    'filled'               => 'The :attribute field must have a value.',
    'image'                => ':attribute يجب أن يكون صورة.',
    'in'                   => 'The selected :attribute is invalid.',
    'in_array'             => 'The :attribute field does not exist in :other.',
    'integer'              => 'The :attribute must be an integer.',
    'ip'                   => 'The :attribute must be a valid IP address.',
    'ipv4'                 => 'The :attribute must be a valid IPv4 address.',
    'ipv6'                 => 'The :attribute must be a valid IPv6 address.',
    'json'                 => 'The :attribute must be a valid JSON string.',
    'max'                  => [
        'numeric' => 'The :attribute may not be greater than :max.',
        'file'    => ':attribute يجب أن لا يزيد حجمه عن :max كيلوبايت.',
        'string'  => 'لا يمكن ان تكون القيمة المدخلة في :attribute اكبر من :max  حرف.',

        'array'   => 'The :attribute may not have more than :max items.',
    ],
    'mimes'                => ':attribute يجب أن يكون امتداده: :values.',
    'mimetypes'            => 'The :attribute must be a file of type: :values.',
    'min'                  => [
        'numeric' => 'The :attribute must be at least :min.',
        'file'    => 'The :attribute must be at least :min kilobytes.',
        'string'  => 'The :attribute must be at least :min characters.',
        'array'   => 'The :attribute must have at least :min items.',
    ],
    'not_in'               => 'The selected :attribute is invalid.',
    'numeric'              => ':attribute يجب أن يكون رقمًا.',
    'present'              => 'The :attribute field must be present.',
    'regex'                => ':attribute غير صالح. يجب أن يبدأ الرقم الأردني ارضي/فاكس ب [06,05,03,02] ومكون من 9 ارقام، خلوي [077,078,079] ومكون من 10 ارقام.',
    'required'             => ':attribute حقل مطلوب.',
    'required_if'          => 'The :attribute field is required when :other is :value.',
    'required_unless'      => 'The :attribute field is required unless :other is in :values.',
    'required_with'        => 'The :attribute field is required when :values is present.',
    'required_with_all'    => 'The :attribute field is required when :values is present.',
    'required_without'     => 'The :attribute field is required when :values is not present.',
    'required_without_all' => 'The :attribute field is required when none of :values are present.',
    'same'                 => 'The :attribute and :other must match.',
    'size'                 => [
        'numeric' => ':attribute يجب أن يساوي  :size أرقام.',
        'file'    => 'The :attribute must be :size kilobytes.',
        'string'  => 'The :attribute must be :size characters.',
        'array'   => 'The :attribute must contain :size items.',
    ],
    'string'               => 'The :attribute must be a string.',
    'timezone'             => 'The :attribute must be a valid zone.',
    'unique'               => 'قد تم استخدام القيمة داخل حقل :attribute  من قبل.',
    'uploaded'             => 'The :attribute failed to upload.',
    'url'                  => 'The :attribute format is invalid.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'regex' => [
            'phone' => 'custom-message',
        ],

    ],
    'alpha_spaces' => ':attribute يجب أن يحتوي على حروف أو فراغ.',


    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [
      'name_en' => 'اللغة الإنجليزية',
      'name_ar' => 'اللغة العربية',
      'phone' => 'رقم الهاتف الارضي',
      'mobile' => 'الرقم الخلوي',
      'fax' => 'رقم الفاكس',
      'email'=> 'البريد الإلكتروني',
      'emp_no' => 'الرقم الوظيفي',
      'sn' => 'الرقم الوطني',
      'username' => 'اسم المستخدم',
      'firstname_ar' => 'الاسم الأول (عربي)',
      'secondname_ar' => 'اسم الأب (عربي)',
      'thirdname_ar' =>'اسم الجد (عربي)',
      'lastname_ar' => 'اسم العائلة (عربي)',
      'firstname_en' => 'الاسم الأول (انجليزي)',
      'secondname_en' => 'اسم الأب (انجليزي)',
      'thirdname_en' =>'اسم الجد (انجليزي)',
      'lastname_en' => 'اسم العائلة (انجليزي)',
      'ext' =>'الرقم الفرعي',
      'dateofbirth'=>'تاريخ الميلاد',
      'dateofhiring' =>'تاريخ التعيين',
      'picture' =>'الملف المرفوع',
      'yearofdegree' => 'السنة في الدرجة',


    ],

];
