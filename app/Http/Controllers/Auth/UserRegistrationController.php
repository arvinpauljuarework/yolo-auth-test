<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Validator;
use Illuminate\Support\Facades\Hash;
use App\User; 

class UserRegistrationController extends Controller
{
    /**
     * User Registration Controller
     *
     * 
     */
    
    public function register (Request $request) {

        try {
            
            $userDetailsRequest = $request->all();

            $validationRules = Validator::make($userDetailsRequest, [ 
                'name' => 'required', 
                'email' => 'required|email|unique:users', 
                'password' => 'required'
            ]);

            // Validate
            if ($validationRules->fails()) return response()->json(['error' => $validationRules->errors()], 500);
            
            $userDetailsRequest['password'] = Hash::make($userDetailsRequest['password']);
            $userRegistration = User::create($userDetailsRequest);

            return response()->json(['success' => 'Registered'], 200);
        
        } catch (Exception $e) {

            return response()->json(['error' => 'Error processing request'], 500);
        }
    }
}
