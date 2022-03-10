<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class sendContact extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected  $ms;

    public function __construct($ms)
    {
        //
        $this->ms = $ms;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $data = [
            'name'      => $ms->name,
            'email'     => $ms->email,
            'msj'   => $ms->message
        ];

        return $this->view('emails.contactmail', $data)->subject("Contact Us");
    }
}
