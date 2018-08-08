<?php

namespace App\Http\Controllers\Author;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Comment;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class CommentController extends Controller
{
    public function index()
    {
        $posts = Auth::user()->posts;
        return view('author.comments', compact('posts'));
    }

    public function destroy($id)
    {
        $comment = Comment::findOrFail($id);
        if ($comment->post->user->id == Auth::id()) {
            $comment->deleta();
            Toastr::success('Comment Successfully Deleted', 'Success');
        } else {
            Toastr::error('Your are not authorized to delete this comment', 'Access Denied !!!');
        }
        
        return redirect()->back();
    }
}
