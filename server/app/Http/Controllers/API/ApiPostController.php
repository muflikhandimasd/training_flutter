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

        foreach ($posts as $post) {
            $post->thumbnail = url($post->thumbnail);
        }

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
            'thumbnail' => 'required|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return $this->responseError(422, $validator->errors()->first());
        }

        $thumbnail = $this->uploadImage($request);

        $post = Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'thumbnail' => $thumbnail,
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

        if ($post->thumbnail) {
            $post->thumbnail = url($post->thumbnail);
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
            'thumbnail' => 'image|mimes:jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return $this->responseError(422, $validator->errors()->first());
        }

        $dataUpdate = [
            'title' => $request->title,
            'content' => $request->content,
        ];

        $thumbnail = $this->uploadImage($request);

        if ($thumbnail) {
            if ($post->thumbnail) {
                $imagePath = public_path($post->thumbnail);
                if (file_exists($imagePath)) {
                    unlink($imagePath);
                }
            }
            $dataUpdate['thumbnail'] = $thumbnail;
        }

        $post->update($dataUpdate);

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

        if ($post->thumbnail) {
            $imagePath = public_path($post->thumbnail);
            if (file_exists($imagePath)) {
                unlink($imagePath);
            }
        }

        $post->delete();

        return $this->responseSuccess('Post deleted successfully');
    }

    private function uploadImage(Request $request)
    {

       $thumbnail= $request->file('thumbnail');
       if ($thumbnail) {
        $thumbnailName = time(). '.' . $thumbnail->getClientOriginalExtension();
        $thumbnail->move(public_path('uploads'), $thumbnailName);
        return '/uploads/' . $thumbnailName;
       }

         return null;


    }
}
