<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParticipantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('participants', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->string('name');
            $table->unsignedTinyInteger('age');
            $table->date('dob');
            $table->unsignedTinyInteger('profession');
            $table->string('locality');
            $table->unsignedTinyInteger('guests');
            $table->mediumText('address');
            $table->timestamps();
            $table->unsignedTinyInteger('is_active')->default('1');
            $table->index('dob');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('participants');
    }
}
