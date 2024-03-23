<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ApiPostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $userId = auth()->id();
        $posts = Post::with('user')->where('user_id', $userId)->get();

        return $this->responseSuccess('List Post', $posts);
    }



    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'content' => 'required|string',
            'thumbnail' => 'required|url',
        ]);

        if ($validator->fails()) {
            return $this->responseError(422, $validator->errors()->first());
        }

        $post = Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'thumbnail' => $request->thumbnail,
            'user_id' => auth()->id(),
        ]);

        return $this->responseSuccess('Post created successfully', $post);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {


        $post = Post::with('user')->find($id);

        if (!$post) {
            return $this->responseError(404, 'Post not found');
        }

        return $this->responseSuccess('Detail Post', $post);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $post = Post::find($id);

        if (!$post) {
            return $this->responseError(404, 'Post not found');
        }

        $validator = Validator::make($request->all(), [
            'title' => 'required|string',
            'content' => 'required|string',
            'thumbnail' => 'required|url',
        ]);

        if ($validator->fails()) {
            return $this->responseError(422, $validator->errors()->first());
        }

        $post->update([
            'title' => $request->title,
            'content' => $request->content,
            'thumbnail' => $request->thumbnail,
        ]);

        return $this->responseSuccess('Post updated successfully', $post);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::find($id);

        if (!$post) {
            return $this->responseError(404, 'Post not found');
        }

        $post->delete();

        return $this->responseSuccess('Post deleted successfully');
    }
}
