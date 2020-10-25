<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Participant extends Model
{
    protected $fillable = ['name', 'age', 'dob', 'profession', 'locality', 'guests', 'address'];

    public function setProfessionAttribute($value)
    {
        $profession = ['Employed' => '1', 'Student' => '2'];

        $this->attributes['profession'] = $profession[$value];
    }

    public function getProfessionAttribute($value)
    {
        $profession = ['1' => 'Employed', '2' => 'Student'];

        return $profession[$value];
    }

    public function getCreatedAtAttribute($value)
    {
        return date('Y-m-d H:i:s', strtotime($value));
    }

    public function getUpdatedAtAttribute($value)
    {
        return date('Y-m-d H:i:s', strtotime($value));
    }
}
