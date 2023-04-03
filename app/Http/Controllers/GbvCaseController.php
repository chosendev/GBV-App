<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GbvCase;

class GbvCaseController extends Controller
{
    
    public function index()
    {
        $cases = GbvCase::all();
        

        return view('gbv_cases_list', compact('cases'));
    }

    public function create()
    {   
        $case = GbvCase::find(1);

        return view('gvb_case_form', compact('case'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(HTSProgramRequest $request)
    {
        $case = new GbvCase($request->all());
        $save = $case->save();
        if(!$save){
            session()->flash('message','GBV Case Registered');
            return redirect()->back();
        }else{

            return redirect()
            ->with('success', 'GBV Case Registered Succcessfully');
        }
    }

    public function show($case_id)
    {       
        
    }

}
