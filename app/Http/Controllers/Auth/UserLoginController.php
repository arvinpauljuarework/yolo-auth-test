<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request; 
use App\Http\Controllers\Controller; 
use Validator;
use Illuminate\Support\Facades\Hash;
use App\User;

class UserLoginController extends Controller
{
    /**
     * User Login Controller
     *
     * 
     */
    
    public function login (Request $request) {

        try {
            
            global $app;
            
            $userDetailsRequest = $request->all();

            // Validation
            $validationRules = Validator::make($userDetailsRequest, [ 
                'email' => 'required|email',
                'password' => 'required'
            ]);
            
            if ($validationRules->fails()) return response()->json(['error' => $validationRules->errors()], 500);

            // Check if user exists
            if (User::where('email', $userDetailsRequest['email'])->count() === 0) return response()->json(['error' => 'Email '.$userDetailsRequest['email'].' does not exists'], 401);

            // Login Attempt
            $userDetailsAttempt = User::where('email', $userDetailsRequest['email'])->first();

            if (Hash::check($userDetailsRequest['password'], $userDetailsAttempt['password'])) {

                $tokenRequest = Request::create(
                    '/oauth/token',
                    'post',
                    [
                        "grant_type" => env('GRANT_TYPE'),
                        "username" => $userDetailsRequest['email'],
                        "password" => $userDetailsRequest['password'],
                        "client_id" => env('CLIENT_ID'),
                        "client_secret" => env('CLIENT_SECRET')
                    ]
                
                );
                $tokenDetails = $app->dispatch($tokenRequest);
                $token = json_decode($tokenDetails->getContent(), true);
                
                return response()->json(['success' => ['name' => $userDetailsAttempt['name'],
                                         'email' => $userDetailsAttempt['email'],
                                         'token' => $token
                                        ]], 200);

            } else {

                return response()->json(['error' => 'Invalid password for '.$userDetailsRequest['email']], 401);
            }
        
        } catch (Exception $e) {

            return response()->json(['error' => 'Error processing request'], 500);
        }
    }
}
