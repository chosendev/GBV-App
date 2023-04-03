<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gbv_cases', function (Blueprint $table) {
            $table->id();
            $table->string('initials',5);
            $table->date('date_of_birth');
            $table->char('gender',1);
            $table->string('address');
            $table->string('age_group');
            $table->string('uic');
            $table->string('case_details');
            $table->date('date_case_happened');   
            $table->string('duty_station_id');
            $table->string('service');
            $table->string('remarks');
            $table->char('is_referred',3);
            $table->string('referred_to');
            $table->string('reported_by');
            $table->date('date_case_reported');
            $table->string('status')->default('Reported');
            $table->string('recieved_by');
            $table->date('date_case_recieved');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gbv_cases');
    }
};
