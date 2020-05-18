<?php

namespace App\Providers;

use App\Models\BlogArticle;
use App\Models\Reply;
use App\Models\User;
use App\Observers\BlogArticleObserver;
use App\Observers\ReplyObserver;
use App\Observers\UserObserver;
use App\Services\FileSystem\QiniuAdapter;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\ServiceProvider;
use League\Flysystem\Filesystem;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // 全局共享数据
        // view()->share('share', '我是共享数据');
        // View::share('key', '我也是共享数据');

        // 中文友好时间戳
        \Carbon\Carbon::setLocale('zh');

        /**
         * 注册新的云存储驱动 七牛
         * Storage::disk('qiniu')->write('test/logo.png', storage_path('app/public/images/logo.png'));
         * Storage::disk('qiniu_cdns')->write('test/logo.png', storage_path('app/public/images/logo.png'));
         */
        Storage::extend('qiniu', function ($app, $config) {
            return new Filesystem(new QiniuAdapter('qiniu', ''));
        });
        Storage::extend('qiniu_cdns', function ($app, $config) {
            return new Filesystem(new QiniuAdapter('qiniu_cdns', ''));
        });

        // 用户表 `users` 监听
        User::observe(UserObserver::class);
        BlogArticle::observe(BlogArticleObserver::class);
        Reply::observe(ReplyObserver::class);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
//        if (app()->isLocal()) {
//            // 用户切换工具 sudo-su
//            $this->app->register(\VIACreative\SudoSu\ServiceProvider::class);
//        }
    }
}
