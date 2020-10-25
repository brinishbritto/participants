<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class ParticipantRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'       => ['required'],
            'age'        => ['required', 'numeric'],
            'dob'        => ['required', 'date'],
            'profession' => ['required', 'in:Employed,Student'],
            'locality'   => ['required'],
            'guests'     => ['required', 'numeric', 'min:0', 'max:2'],
            'address'    => ['required', 'max:50']
        ];
    }

    public function messages()
    {
        return [
            'name.required'       => 'Name is required',
            'age.required'        => 'Age is required',
            'age.numeric'         => 'Age should be numeric',
            'dob.required'        => 'Date of Birth is required',
            'dob.date'            => 'Date of Birth should be in Date format',
            'profession.required' => 'Profession is required',
            'profession.in'       => 'Profession should be valid',
            'locality.required'   => 'Locality is required',
            'guests.required'     => 'Guest is required',
            'guests.numeric'      => 'Guest should be numeric',
            'guests.min'          => 'Guests allowed are between 0 to 2',
            'guests.max'          => 'Guests allowed are between 0 to 2',
            'address.required'    => 'Address is required',
            'address.max'         => 'Address can be max 50 characters',
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(
            response()->json([
                'status'   => 'failure',
                'code'     => 422,
                'messages' => $validator->errors()->all()
            ])
        );
    }
}
