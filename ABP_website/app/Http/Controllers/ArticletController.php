<?php

namespace App\Http\Controllers;
use App\Models\Article;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ArticletController extends Controller
{
    public function index()
    {
        $Post = Article::latest()->paginate(10);

        return view('admin.articles.crudarticle', compact('Post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.articles.cretaearticle');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|mimes:jpg,png,jpeg|max:5048'
        ]);
        $newImageName = uniqid() . '-' . $request->title . '.' . $request->image->extension();
        $request->image->move(public_path('images'), $newImageName);
        $Posts = new Article;
        $Posts->slug = Str::slug($request->title);;
        $Posts->author = $request->author;
        $Posts->title = $request->title;
        $Posts->description = $request->description;
        $Posts->image = $newImageName;
        $Posts->save();

        return redirect('/articlepage')
            ->with('success', 'Artikel berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        return view('admin.articles.showarticle')
            ->with('post', Article::where('slug', $slug)->first());
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
        return view('admin.articles.editarticle')
        ->with('post', Article::where('slug', $slug)->first());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $slug)
    {
        $request->validate([
            'title' => 'required',
            'author' => 'required',
            'description' => 'required',
        ]);
        Article::where('slug', $slug)
        ->update([
            'title' => $request->input('title'),
            'author' => $request->input('author'),
            'description' => $request->input('description'),
            'slug' => Str::slug($request->title),
        ]);

        return redirect('/articlepage')
            ->with('warning', 'Artikel berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($slug)
    {
        $article = Article::where('slug', $slug);
        $article->delete();
        return redirect('/articlepage')
            ->with('danger', 'Artikel berhasil dihapus!');
    }
}
