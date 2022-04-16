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
        Schema::create('c_r_u_dadmins', function (Blueprint $table) {
            $table->id();
            $table->string('nama_tempat');
            $table->longtext('Description');
            $table->string('Location');
            $table->string('Ratings');
            $table->string('open_hours');
            $table->string('image');
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
        Schema::dropIfExists('c_r_u_dadmins');
    }
};
