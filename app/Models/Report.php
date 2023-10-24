<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class, 'staff_id');
    }

    public function business()
    {
        return $this->belongsTo(Business::class, 'business_id');
    }
}
