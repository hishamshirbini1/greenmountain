<form action="{{route('contactus')}}" method="POST">
					@csrf
					<div class="form_section">
						<div class="form_section_row">
							<input type="text" name="name" placeholder="Enter You Name">
						</div>
						<div class="form_section_row">
							<input type="text" name="email" placeholder="Enter your E-mail">
						</div>
						<div class="form_section_row full_row">
							<input type="text" name="subject" placeholder="Enter your Subject">
						</div>
						<div class="form_section_row full_row">
							<textarea name="message" placeholder="Enter your Message..."></textarea>
						</div>
						@if ($errors->any())
							<div class="alert alert-danger">
								<ul>
									@foreach ($errors->all() as $error)
										<li>{{ $error }}</li>
									@endforeach
								</ul>
							</div>
						@elseif ($message = Session::get('success'))
							<div class="alert alert-success alert-block">
									<strong>{{ $message }}</strong>
							</div>
						@endif
						<div class="form_section_btn">
							<input type="submit" value="Send Message">
						</div>
					</div>
				</form>