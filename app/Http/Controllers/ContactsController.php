<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class ContactsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function get_all(){
        $searchQuery = request('search');

        $result = Contact::where('name', 'LIKE', '%'.$searchQuery.'%')
            ->orWhere('address', 'LIKE', '%'.$searchQuery.'%')
            ->orWhere('postcode', 'LIKE', '%'.$searchQuery.'%')
            ->orWhere('telephone', 'LIKE', '%'.$searchQuery.'%')
            ->orWhere('email', 'LIKE', '%'.$searchQuery.'%')
            ->orWhere('dob', 'LIKE', '%'.$searchQuery.'%')
            ->get();

        return $result;
    }

    public function create(Request $request){
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'address' => 'required',
            'postcode' => 'required',
            'telephone' => 'required',
            'email' => 'required|email',
            'dob' => 'required|date|before:today',
        ]);

        Contact::insert([
            'name' => request('name'),
            'address' => request('address'),
            'postcode' => request('postcode'),
            'telephone' => request('telephone'),
            'email' => request('email'),
            'dob' => request('dob'),
        ]);
    }

    private function search($result, $columns, $searchQuery){
        foreach($columns as $column){
            $result = $result->orWhere($column, 'LIKE', '%'.$searchQuery.'%');
        }
        return $result;
    }
}
