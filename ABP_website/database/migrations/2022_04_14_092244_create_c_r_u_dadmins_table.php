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
            $table->string('nama');
            $table->longtext('deskripsi');
            $table->string('lokasi');
            $table->string('latitude');
            $table->string('longitude');
            $table->string('kota');
            $table->string('rating');
            $table->string('open');
            $table->string('link_image');
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
