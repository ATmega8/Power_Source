function ScrollWord(a,b){this.obj=$("#"+a),this.params=$.extend({time:4e3},b||{}),this.init()}
jQuery.easing.jswing=jQuery.easing.swing,jQuery.extend(jQuery.easing,{easeOutCubic:function(a,b,c,d,e){return d*((b=b/e-1)*b*b+1)+c}}),ScrollWord.prototype = {
    init : function() {
        this.timer = setInterval($.proxy(this.rotate,this), this.params.time);
        this.bindEvent();
    },
    bindEvent : function() {
        var self = this;
        this.obj.mouseover(function() {
            clearInterval(self.timer);
        }).mouseout(function() {
            self.timer = setInterval(self.rotate.bind(self), self.params.time);
        });
    },
    rotate : function() {
        var self = this,li_1 = self.obj.find("li:nth-child(1)"),li_2 = self.obj.find("li:nth-child(2)"),li_3 = self.obj.find("li:nth-child(3)") ,li_4 = self.obj.find("li:nth-child(4)");
       var li_height = li_1.outerHeight()+li_2.outerHeight();
       if(li_1.find('img').length&&li_2.find('img').length){
                var h = li_1.outerHeight();
                        this.obj.animate({
                        "marginTop" : -h
                        }, 800, 'easeOutCubic',function() {
                            self.obj.append(li_1);
                            self.obj.css("marginTop", 0);
                        });
       }else if(li_height>36){
            if(li_3.find('img').length){
                var  h = li_1.outerHeight()+li_2.outerHeight();
                this.obj.animate({
                "marginTop" : -h
                }, 800, 'easeOutCubic',function() {
                    self.obj.append(li_1);
                    self.obj.append(li_2);
                   // self.obj.append(li_3);
                    self.obj.css("marginTop", 0);
                });
            }else{

                        var h = li_1.outerHeight();
                        this.obj.animate({
                        "marginTop" : -h
                        }, 800, 'easeOutCubic',function() {
                            self.obj.append(li_1);
                            self.obj.css("marginTop", 0);
                        });
            }


        }else{
            if(li_4.find('img').length){
                var  h = li_1.outerHeight()+li_2.outerHeight()+li_3.outerHeight();
                this.obj.animate({
                "marginTop" : -h
                }, 800, 'easeOutCubic',function() {
                    self.obj.append(li_1);
                    self.obj.append(li_2);
                    self.obj.append(li_3);
                    self.obj.css("marginTop", 0);
                });
            }else{
                var h = li_1.outerHeight();
                this.obj.animate({
                "marginTop" : -h
                }, 800, 'easeOutCubic',function() {
                    self.obj.append(li_1);
                    self.obj.css("marginTop", 0);
                });
            }
        }


    }
}