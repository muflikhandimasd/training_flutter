<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function responseSuccess($message='Success', $data=null)
    {
        return response()->json([
            'code' => 200,
            'data' => $data,
            'message' => $message,
        ]);
    }

    public function responseError($code=400,$message='Error')
    {
        return response()->json([
            'code' => $code,
            'data' => null,
            'message' => $message,
        ], $code);
    }
}
