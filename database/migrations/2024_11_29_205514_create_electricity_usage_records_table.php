<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateElectricityUsageRecordsTable extends Migration
{
    public function up()
    {
        Schema::create('electricity_usage_records', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->date('start_date');
            $table->date('end_date');
            $table->float('units_consumed');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('electricity_usage_records');
    }
};