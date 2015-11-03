module ApplicationHelper

  def obfuscated_email(name='hello')
    id = SecureRandom.hex(4)
    "<span id=\"#{id}\"></span><script type=\"text/javascript\">
      var e1='#{name}';var e3='bunnylakefilms';var e2='&#64;';var e4='.com';document.getElementById('#{id}').innerHTML = (e1+e2+e3+e4);
    </script>".html_safe
  end

end
