<?php

namespace App\Http\Controllers\Admin;

use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        $pendingPosts = Post::where('is_approved', false)->get();
        return view('admin.dashboard', compact('pendingPosts'));
    }
}
