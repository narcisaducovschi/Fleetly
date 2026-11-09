<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        if (!Schema::hasTable('usuarios')) {
            Schema::create('usuarios', function (Blueprint $table) {
                $table->id();
                $table->string('email')->unique();
                $table->string('password');
                $table->string('rol', 50)->default('trabajador');
                $table->timestamp('email_verified_at')->nullable();
                $table->rememberToken();
                $table->timestamps();
            });
        } else {
            Schema::table('usuarios', function (Blueprint $table) {
                if (!Schema::hasColumn('usuarios', 'email_verified_at')) {
                    $table->timestamp('email_verified_at')->nullable();
                }

                if (!Schema::hasColumn('usuarios', 'remember_token')) {
                    $table->rememberToken();
                }

                if (!Schema::hasColumn('usuarios', 'created_at')) {
                    $table->timestamp('created_at')->nullable();
                }

                if (!Schema::hasColumn('usuarios', 'updated_at')) {
                    $table->timestamp('updated_at')->nullable();
                }
            });
        }

        if (!Schema::hasTable('password_reset_tokens')) {
            Schema::create('password_reset_tokens', function (Blueprint $table) {
                $table->string('email')->primary();
                $table->string('token');
                $table->timestamp('created_at')->nullable();
            });
        }

        if (!Schema::hasTable('sessions')) {
            Schema::create('sessions', function (Blueprint $table) {
                $table->string('id')->primary();
                $table->foreignId('user_id')->nullable()->index();
                $table->string('ip_address', 45)->nullable();
                $table->text('user_agent')->nullable();
                $table->longText('payload');
                $table->integer('last_activity')->index();
            });
        }
    }

    public function down(): void
    {
        // No eliminamos usuarios porque puede contener datos
        // anteriores a esta migración.
        //
        // Tampoco eliminamos columnas o tablas preexistentes
        // sin conocer su procedencia.
    }
};
