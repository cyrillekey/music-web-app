<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Login</title>
</head>
<body>
    <div class="singupsect">
    <div class="signup">
    <h1>Log In</h1>
   
    <form class="form" novalidate="novalidate" method="post" action="../handlers/login_handle.php">
      <?php
        if(isset($_GET['error'])){
            $error=$_GET['error'];
          if($error=='unfiled'){
            echo '<p style="margin-bottom:24px; color:red; margin-left:18px;" >Please fill out the form</p>';
          }
          elseif ($error=='sqlerror') {
            echo '<p style="margin-bottom:24px; color:red; margin-left:18px;" >Oops! we had an error</p>';
          }
          elseif($error=='wrongpwd'){
            echo '<p style="margin-bottom:24px; color:red; margin-left:18px;" >Wrong password</p>';
          }
          elseif($error=='nouser'){
            echo '<p style="margin-bottom:24px; color:red; margin-left:18px;" >User does not exist try creating account</p>';
          }

        }
      ?>
              
      <div class="form-group">
        <label for="signup-email">Email</label>
        <input type="email" id="signup-email" class="form-control" placeholder="Email" name="mail" required>
        <div id="email-suggestion" class="suggestion">Did you mean <a id="suggested-email"><span class="address"></span>@<span class="domain"></span></a>?</div>
      </div>
      <div class="form-group">
        <label for="signup-password">Password</label>
        <input type="password" id="signup-password" class="form-control" placeholder="Password" name="pword" required>
        <div class="reveal-password">
          <svg class="icon">
            <use xlink:href="#reveal-icon"></use>
          </svg>
        </div>
        <div id="password-suggestion" class="suggestion"></div>
      </div>
      <button class="btn form-submit" type="submit" name="sgnin">Log In</button>
      <a class="formsign" href="http://">Forgot Password ?</a>
    <a class="formsign" href="signup.php">Dont have an account ?</a>
    </form>
  </div>
  <!-- /Signup -->
  
  <!-- SVG -->
  <svg xmlns="http://www.w3.org/2000/svg" width="0" height="0" display="none">
    <symbol id="reveal-icon" viewBox="0 0 932.15 932.15">
      <g>
        <path d="M466.075,161.525c-205.6,0-382.8,121.2-464.2,296.1c-2.5,5.3-2.5,11.5,0,16.9c81.4,174.899,258.601,296.1,464.2,296.1   s382.8-121.2,464.2-296.1c2.5-5.3,2.5-11.5,0-16.9C848.875,282.725,671.675,161.525,466.075,161.525z M466.075,676.226   c-116.1,0-210.1-94.101-210.1-210.101c0-116.1,94.1-210.1,210.1-210.1c116.1,0,210.1,94.1,210.1,210.1   S582.075,676.226,466.075,676.226z" />
        <circle cx="466.075" cy="466.025" r="134.5" />
      </g>
    </symbol>
  </svg>
  <!-- /SVG --> 
  <script src='../js/jquery.js'></script>
  <script src="../js/mailcheck.js"></script>
  <script src="../js/zxcvbn.js"></script>
  <script>
      /*------------------------------
Floating Labels & Check Inputs
------------------------------*/
function floatingLabels() {
  var $formControl = $('.form-control');

  $formControl.each(function() {
    var $t = $(this),
      $p = $t.parents('.form-group');

    $t.on('keyup change', function() {
      if ($(this).val().length > 0) {
        $p.addClass('filled');
      } else {
        $p.removeClass('filled');
      }
    }).on('focus', function() {
      $p.addClass('focus');
    }).on('blur', function() {
      $p.removeClass('focus');
      if ($t.val().length <= 1) {
        $p.addClass('error');
      } else {
        $p.removeClass('error');
      }
    });
  });
}

/*-----------------------
Reveal & Check Password
-----------------------*/
function revealPassword() {
  var $reveal = $('.reveal-password'),
    $password = $('#signup-password'),
    $pwdSuggestion = $('#password-suggestion');

  $password.on('keyup change', function() {
    var $t = $(this),
        $p = $t.parents('.form-group'),
        val = $t.val(),
        result = zxcvbn(val, userInputs = []);

    if (val.length > 0) {
      $reveal.show();
      $pwdSuggestion.show();

      if (parseInt(result.score) > 4) {
        $pwdSuggestion.html('');
        $p.removeClass('error');
      } else {
        if (result.feedback.warning == '') {
          result.feedback.warning = 'Your password is too short';
        }
        $p.addClass('error');
        $pwdSuggestion.html(result.feedback.warning + '. ' + result.feedback.suggestions.join(' '));
      }
    } else {
      $pwdSuggestion.hide();
    }

  });

  $reveal.click(function() {
    var $t = $(this),
        $p = $t.parents('.form-group');

    $t.toggleClass('active');
    $p.toggleClass('focus');

    var type = ($(this).is('.active')) ? 'text' : 'password';
    $password.attr('type', type);
  });
}

/*-----------------
Email Suggestion
-----------------*/
function emailSuggestion() {
  var domains = 'yahoo.com outlook.com google.com hotmail.com inbox.com gmail.com me.com aol.com mac.com lycos.com live.com comcast.net googlemail.com msn.com hotmail.co.uk yahoo.co.uk facebook.com verizon.net sbcglobal.net att.net gmx.com mail.com'.split(' '),
    topLevelDomains = 'co.uk com net org info edu gov mil'.split(' '),
    $email = $('#signup-email'),
    $suggestion = $('#email-suggestion'),
    $suggestedEmail = $('#suggested-email');

  $email.on('blur', function() {
    var $t = $(this),
      $p = $t.parents('.form-group');

    // check if it's an email
    var pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
    if (pattern.test($t.val()) == false) {
      $p.addClass('error');
    } else {
      $p.removeClass('error');
    }

    $t.mailcheck({
      domains: domains,
      topLevelDomains: topLevelDomains,
      suggested: function(element, suggestion) {
        $suggestion.slideDown(300);
        $suggestedEmail.html('<a id="suggested-email"><span class="address">' + suggestion.address + '</span>@<span class="domain">' + suggestion.domain + '</span></a>');
      }
    });
  });

  // recover
  $suggestedEmail.click(function() {
    $email.val($(this).text());
    $suggestion.slideUp(300);
  });
}

/*--------
DOC READY
----------*/
$(function() {
  floatingLabels();
  revealPassword();
  emailSuggestion();
});
  </script>   
    </div>
</body>
</html>