<?php
  
namespace App\Http\Controllers\Auth;
  
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\Models\User;
  
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
  
    use AuthenticatesUsers;
  
    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;
  
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    
    
    public function login(Request $request)
    {   
        $input = $request->all();
     
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $chksts = User::where('email', $input['email'])->first();
        if ($chksts) {
            if ($chksts->status == 1) {
                if(auth()->attempt(array('email' => $input['email'], 'password' => $input['password'])))
                    {
                        if (auth()->user()->is_type == '1') {
                            return redirect()->route('admin.dashboard');
                        }else if (auth()->user()->is_type == '2') {
                            return redirect()->route('manager.dashboard');
                        }else if (auth()->user()->is_type == '0') {
                            return redirect()->route('user.dashboard');
                        }
                    }else{
                        return view('auth.login')
                            ->with('message','Wrong Password.');
                    }
            }else{
                return view('auth.login')
                ->with('message','Your ID is Deactive.');
            }
        }else {
            return view('auth.login')
                ->with('message','Credential Error. You are not authenticate user.');
        }
          
    }
}