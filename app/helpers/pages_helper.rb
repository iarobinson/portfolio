module PagesHelper

  def return_home_button
    %(
      <div class='row mb-5'>
        <div class='col-6 offset-3'>
          <a href="/" class="btn btn-danger btn-block mt-5">Back to Portfolio</a>
        </div>
      </div>
    ).html_safe
  end
end
