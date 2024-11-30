<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    // Relationship with electricity usage records
    public function usageRecords()
    {
        return $this->hasMany(ElectricityUsageRecord::class);
    }

    // Relationship with bills
    public function bills()
    {
        return $this->hasMany(Bill::class);
    }

    // Relationship with payments
    public function payments()
    {
        return $this->hasMany(Payment::class);
    }
}