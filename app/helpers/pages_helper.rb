module PagesHelper

  def return_home_button
    %(
      <div class='row'>
        <div class='col-6 offset-3'>
          <a href="/" class="btn btn-danger btn-block my-3">Back to Portfolio</a>
        </div>
      </div>
    ).html_safe
  end
end
