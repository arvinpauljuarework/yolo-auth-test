<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Validator;
use Illuminate\Support\Facades\Hash;
use App\User;
use Illuminate\Support\Facades\Auth; 

class UserDetailsController extends Controller
{
    /**
     * User Details Controller
     *
     * 
     */
    
    public function getDetails (Request $request) {

        try {
            
            $userDetails = Auth::user();
            return $userDetails;
        
        } catch (Exception $e) {

            return response()->json(['error' => 'Error processing request'], 500);
        }
    }
}
