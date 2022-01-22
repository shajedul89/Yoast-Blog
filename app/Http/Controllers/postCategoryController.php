<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\postCategory;
use Illuminate\Support\Str;

class postCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = postCategory::all();
        return view('admin.post.Category.index',[
            'all_data' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this -> validate($request,[

            'cat_name' => 'required|unique:post_categories,name'
        ]);
        postCategory::create([
            "name" => $request->cat_name,
            "slug" => Str::slug($request->cat_name)
        ]);

        return redirect()->route('postcat.index') ->with('success','data send successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit_data = postCategory::find($id);
        return[
            'id' => $edit_data->id,
            'name' => $edit_data->name,
        ];
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $edit_id = $request ->cat_id;

        $edit_data = postCategory::find($edit_id);
        $edit_data ->name=$request->cat_name;
        $edit_data ->slug=Str::slug($request->cat_name);
        $edit_data ->update();

        return redirect()->route('postcat.index') ->with('success','data updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $cat_del= postCategory::find($id);
       $cat_del ->delete();
       return redirect()->back()->with('delete','Data Deleted Successfully');
    }

    /**
     * status Inactive dunction
     */
    public function statusCheckedInactive($id){

       $status_update=postCategory::find($id);
       $status_update -> status = false;
       $status_update ->update();
    }

    public function statusCheckedActive($id){

        $status_update=postCategory::find($id);
        $status_update -> status = true;
        $status_update ->update();
    }
}
