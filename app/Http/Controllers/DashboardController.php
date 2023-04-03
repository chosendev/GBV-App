<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dashboard;

class DashboardController extends Controller
{
    
    public function index()
    {
        //$cases = Dashboard::all();

        //date_case_reported

        $cases = GbvCase::pluck('date_case_reported');
        

        return view('dashboard',  compact('cases'));
    }
}
