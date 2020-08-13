<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\Schema;
use Modules\Announcement\Models\Announcement;
use Modules\Setting\Models\Setting;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        Commands\WordOfTheDay::class,
        Commands\DatabaseBackupCustom::class
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        if (file_exists(storage_path('installed'))) {
            if (Schema::hasTable(config('core.acl.users_settings_table'))) {
                $setting = Setting::first();
                if (!empty($setting) && $setting->active_cronjob) {
                    // --
                    // Send mails in queue
                    $schedule->command('queue:restart')->everyFiveMinutes();
                    $schedule->command('queue:work --tries=3')
                        ->everyMinute()
                        ->withoutOverlapping();

                    // --
                    // Daily send task report mail
                    $schedule->command('work:day')->dailyAt('20:00');

                    // --
                    // Backup database
                    if ($setting->automatic_backup) {
                        $schedule->command('db:backup-custom')->weeklyOn(1, '02:00');
                    }

                    // --
                    // Completed overdue announcement.
                    $schedule->call(
                        function () {
                            $currnetDate = date("Y-m-d");
                            $matchThese = [['end_date','<',$currnetDate],['status','!=','2']];
                            $Announcement = Announcement::where($matchThese)->update(['status' => 2]);
                        }
                    )->dailyAt('01:00');

                    $setting->last_cronjob_run = time();
                    $setting->save();

                    // $isAllowed = false;
                    // if (!isset($setting->last_cronjob_run)) {
                    //  $isAllowed = true;
                    // }

                    // if (isset($setting->last_cronjob_run) && time() > ($setting->last_cronjob_run + 300)) {
                    //  $isAllowed = true;
                    // }

                    // if ($isAllowed) {
                    //  // --
                    //  // Backup database
                    //  if (isset($setting->automatic_backup) && time() > ($setting->last_autobackup + 7 * 24 * 60 * 60)) {
                    //      // --
                    //      // Save settings
                    //      $schedule->command('db:backup-custom');
                    //      $setting->last_autobackup = time();
                    //  }
                    // }
                }
            }
        }
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        include base_path('routes/console.php');
    }
}
