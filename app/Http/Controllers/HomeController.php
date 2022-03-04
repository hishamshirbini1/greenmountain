<?php

namespace App\Http\Controllers;

use App\Models\ContactMessages;
use App\Models\HeaderSlider;
use App\Models\MyCategories;
use App\Models\Products;
use App\Models\Services;
use App\Models\Subscribers;
use App\Models\WhyChoseUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use TCG\Voyager\Models\Page;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page = Page::where('slug', 'homepage')->first();
        $aboutPage = Page::where('slug', 'about-us')->first();
        $services = Services::take(5)->get();
        $bannerSlider = HeaderSlider::all();
        $homeCategories = MyCategories::where('show_in_home_page', 1)->get();
        // $homePosts = Posts::take(2)->all();//where('featured', 1)->limit(2);
        $contactUsPage = Page::where('slug', 'contact-us')->first();
        $whyChoseUs = Page::where('slug', 'why-us')->first();
        $whyChoseUsfeatires = WhyChoseUs::take(4)->get();
        $data=array(
            'services'=> $services,
            'page' => $page,
            'aboutPage' => $aboutPage,
            'bannerSlider' => $bannerSlider,
            'homeCategories' => $homeCategories,
            'contactUsPage' => $contactUsPage,
            'whyChoseUs' => $whyChoseUs,
            'whyChoseUsfeatires' => $whyChoseUsfeatires,
            // 'homePosts'=>$homePosts
        );
        return view('home' , $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    function categories(){
        $categories = MyCategories::where('parent_id', null)->get();
        return view('categories', compact('categories'));
    }

    function about(){
        return view('about');
    }
    function catalogue(){
        // dd(setting('site.pdf'));
        $str = setting('site.pdf');
        dd(str_replace(['[',']'], '', $str));
        dd(asset('storage/'.setting('site.pdf')));
        // return view('pdf',compact('pdf'));

    }
    function contact(){
        $contactUsPage = Page::where('slug', 'contact-us')->first();
        $data = array(
            'contactUsPage' => $contactUsPage,
        );
        return view('contact', $data);
    }
    function contactUs(Request $request){
        $this->validate($request, [ 'name' => 'required', 'email' => 'email:rfc,dns' ]);

        $message = new ContactMessages;
        $message->name = $request->name;
        $message->email = $request->email;
        $message->subject = $request->subject;
        $message->message = $request->message;
        $message->save();
        Mail::send('emails.contactmail', [
            'name'      => $request->name,
            'email'     => $request->email,
            'msj'   => $request->message
        ], function ($mail) use ($request) {
            // dd($request->type);
            $mail->from(env('MAIL_FROM_ADDRESS'), $request->email);
            $contactEmail = setting('site.email');
            $mail->to($contactEmail);
            $mail->subject($request->subject);
        });
        $tyMessage = 'Thank you for you inquiry we will contact you shortly !';
        return redirect()->back()->with('success', $tyMessage);
    }
    function subscribers(Request $request){
        $this->validate($request,['email'=>'email:rfc,dns']);

        $subscriber = new Subscribers;
        $subscriber->email = $request->email;
        $subscriber->save();
        return back();
    }

    public function productOrCategory(Request $request)
    {
        $slugOrPath = trim($request->getPathInfo(), '/');

        // dd(explode('/', $slugOrPath));
        $slugOrPath = urldecode($slugOrPath);

        // support url for chinese, japanese, arbic and english with numbers.
        if (preg_match('/^([\x{0621}-\x{064A}\x{4e00}-\x{9fa5}\x{3402}-\x{FA6D}\x{3041}-\x{30A0}\x{30A0}-\x{31FF}_a-z0-9-]+\/?)+$/u', $slugOrPath)) {
            $slugOrPath = explode('/', $slugOrPath);
            $slugOrPath = $slugOrPath[count($slugOrPath) - 1];
            if ($category = MyCategories::where('slug', $slugOrPath)->first()) {
                // dd($category);
                if($category->hasChildren()){

                    return view('sub-categories', compact('category'));
                }else{
                    return view('products', compact('category'));
                }
            }

                if ($product = Products::find($slugOrPath)) {
                    $category = MyCategories::find($product->category_id);
                    // dd($product);
                    return view($this->_config['product_view'], compact('product', 'customer', 'category'));
                }
            // if ($product = Products::find($slugOrPath)) {
            //     $category = MyCategories::find($product->id);
            //     $customer = auth()->guard('customer')->user();
            //     // dd($product);
            //     return view($this->_config['product_view'], compact('product', 'customer', 'category'));
            // }
            abort(404);

        }
    }

}
