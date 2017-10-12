/***======global variables======***/
var $allTimeouts = [];
var $winHeight = $(window).height();
var $scrollTimeout;
var $navbarHeight;
var $docHeight;

/***slider variables***/
var $allTimeoutsSlider = [];
var $activeSlide=1;
var $prevSlide=4;
var $slideCount;
var $slideTrigger=true;
var $slideTrigger2=true;
var $currentSlide=1;
var $autoSlide;

/***popup variables***/
var $popupSwitch=true;
var $popupActive=false;

var $shareClose=true;

/***emi calc variables***/
var $stepPrice=2500;
var $stepSnapSize=10;
var $maxPrice=100000;
var $totalSteps=42;

/***our people json data***/
var $ourPeopleJSON='{"pavel":{"name":"Pavel Maco", "desg":"Chief Executive Officer", "info":"Pavel Maco joined the Home Credit Group in Kazakhstan as Chief Financial Officer in 2009 and was later appointed Chief Executive Officer of the country in July 2010. In September 2013, Pavel moved to India to head the country’s operations of the company as Chief Executive Officer. At Home Credit India, he has lead the team through its start-up challenges and has played an instrumental role in the roll-out of operations to various cities across the country.", "img":"01.png"}, "rajeeb":{"name":"Rajeeb Ranjan Mallick", "desg":"Chief Corporate Affairs Officer", "info":"Rajeeb Ranjan Mallick joined Home Credit India in July 2015 with almost three decades of rich corporate experience across Corporate Relations, Business Development, Legal, Exports, Manufacturing, Accounting, and Institutional Sales. At Home Credit India, he is Chief Corporate Affairs Officer and will play a critical role to develop and nurture key corporate relationships.", "img":"02.png"}, "artem":{"name":"Artem Popov", "desg":"Chief Sales Officer", "info":"Artem Popov joined the Home Credit group in Russia in July 2007. Artem has led significant projects that helped Home Credit achieve market leadership in Russia. In February 2016, Artem moved to Home Credit India as the Chief Sales Officer. With his rich experience of POS Loan distribution business from Home Credit Russia, Artem will lead a power-packed Sales network across the country, motivating them to go the extra mile to fully utilize potential of Indian fastest growing POS business market in the world.", "img":"03.png"},"mariusz":{"name":"Mariusz Dabrowski", "desg":"Chief Financial Officer", "info":"Mariusz Dabrowski joined the Home Credit Group in June 2016 as Chief Financial Officer in India. With over two decades of experience in all aspects of financial planning & analysis, treasury, accounting, auditing, financial and risk management. Mariusz has experience across retail, consumer finance & banking sectors. At Home Credit India, he is responsible for financial planning and analysis, accounting, procurement and treasury functions.", "img":"04.png"},"marcin":{"name":"Marcin Trusz", "desg":"Chief Risk Officer", "info":"Marcin Trusz joined the Home Credit Group in April 2016 as Chief Risk Officer in India. His key areas of responsibility include underwriting, anti-fraud and collections and he will play a critical role in supporting dynamic but healthy business growth. ", "img":"05.png"},"tomas":{"name":"Tomas Hrdlicka", "desg":"Chief Marketing Officer", "info":"Tomas Hrdlicka is a passionate business leader with strong focus on customer experience and operational efficiency. He has joined the Home Credit India team as a Chief Marketing Officer in March 2016 with a fifteen-year background in marketing, sales & care operations and numerous fast developing start-up companies.", "img":"06.png"},"vijay":{"name":"Vijay Dhingra", "desg":"Head, Legal", "info":"Vijay Dhingra joined Home Credit India in 2014 with varied experience of over a 12 years in the fields of Corporate Governance, Compliances and Legal affairs. Prior to Home Credit, Vijay was part of the Legal & Secretarial Team at GE Capital Services, India, where he was responsible for compliances and legal matters of the company.", "img":"07.png"},"manish":{"name":"Manish Kaushik", "desg":"Head, Security", "info":"Manish Kaushik joined Home Credit India in 2013 with a rich experience of over 16 years in Security & Fraud Risk Management. He leads a team that is responsible for financial crime prevention and operational risk mitigation including fraud policy, prevention strategies, detection and investigations.", "img":"08.png"},"milan":{"name":"Milan Urbasek", "desg":"Chief Operations Officer", "info":"Milan Urbasek has been working with the Home Credit Group for over six years and currently leads the Operations team at Home Credit India. A seasoned professional, he has led the company’s expansion to multiple cities across the country and is responsible for the client verification process, Customer Care, Registration team and Payment channels.", "img":"09.png"},"jindra":{"name":"Jindra Háchová", "desg":"Chief HR Officer", "info":"With over a decade of experience Jindra Háchová joined Home Credit India in 2015 as Chief HR Officer. She leads HR team responsible for the HR strategy & operations, talent acquisition, learning & development, compensation & benefits and employee engagement.", "img":"10.png"},"simran":{"name":"Simran Soni", "desg":"Chief Customer Experience Officer", "info":"Simran Soni joined Home Credit India in 2012 and has played a vital role in setting up of the training and operations functions within Sales. Simran has been appointed Customer Experience Officer for the organization effective August 2015 and is responsible for an in-depth understanding of the customer and enhancing their experience with the organisation at every touch-point.", "img":"11.png"},"sorin":{"name":"Sorin Stanciu", "desg":"Head - CRM", "info":"With more than 15 years of experience in retail banking, Sorin Stanciu joined Home Credit India in May 2016 and is responsible for CRM (Customer Relationship Development. His most important achievements are related to the success story of Raiffeisen Bank credit cards and implementation of the best in class CRM infrastructure and processes in Raiffeisen Bank Romania.", "img":"12.png"}}';

var $testimonials = '{"tapas":{"name":"Tapas Chatterjee", "desg":"Head - Regional HR", "info":"I joined the HR function at Home Credit India at a time when we were looking to start our first expansion to new cities and needed more hands on deck.", "img":"tapas.png"}, "simran":{"name":"Simran Soni", "desg":"Head – Customer Experience", "info":"A ‘newbie’ into the world of consumer finance , My Home Credit journey began in 2012 as the head of sales training.", "img":"simran.png"}, "ranjeeta":{"name":"Ranjeeta Dwivedi", "desg":"VP – Procurement, Finance", "info":"I joined Home Credit at a time when no one had even heard of the company. From that, today we are a brand to reckon with spread across the country in over 20 ci...", "img":"ranjeeta.png"},"gurmeet":{"name":"Gurmeet Kaur", "desg":"Head – Ombudsperson", "info":"The one word that’s sums up my association with Home Credit for almost 5 years is a “rollercoaster”. From the start- up phase where I was involved in everything ...", "img":"gurmeet.png"},"amit":{"name":"Amit Thukral", "desg":"AVP – Risk", "info":"If opportunity doesn’t knock, build the door - that’s exactly what Home Credit does for you! I joined Home Credit in 2015 and initiated tele-collections ...", "img":"amit.png"},"rahul":{"name":"Rahul Jha", "desg":"Head, Sales Network", "info":"I have moved from being a Zonal Sales Head to National Sales Head within a span of less than 2 years. I’ve had the chance to travel the length and breadth of my c...", "img":"rahul.png"}}';

var $ourPeople;

/***life @ homecredit slider variables***/

var $lifeSliderWidth, $lifeSlideAmt, $lifeSlideCount, $lifeSlideOffset, $LifeSnapPts=[], $LifeFirstPt;

/***======all functions defined here======***/

/**global functions**/

//clearing all timeouts
function clearAllTimeout(){
	for (var i = 0; i < $allTimeouts.length; i++) {
		clearTimeout($allTimeouts[i]);
	}
	//quick reset of the timer array you just cleared
	$allTimeouts = [];
}

//clearing all timeouts for slider
function clearAllTimeoutSlider(){
	for (var i = 0; i < $allTimeoutsSlider.length; i++) {
		clearTimeout($allTimeoutsSlider[i]);
	}
	//quick reset of the timer array you just cleared
	$allTimeoutsSlider = [];
}

//delayed animations
function delayAnimation($target,$delay,$stepTime,$effect){
	var $fnDelay = $delay;
	
	$($target).each(function(){
		var $this = $(this);
		$allTimeouts.push(
			setTimeout(function(){				
				$this.removeClass($effect);
			}, $fnDelay)
		)
			
		$fnDelay += $stepTime;
	})
}

//extracting closes element from array
function closest(arr, target) {
    if (!(arr) || arr.length == 0)
        return null;
    if (arr.length == 1)
        return arr[0];

    for (var i=1; i<arr.length; i++) {
        // As soon as a number bigger than target is found, return the previous or current
        // number depending on which has smaller difference to the target.
        if (arr[i] > target) {
            var p = arr[i-1];
            var c = arr[i]
            return Math.abs( p-target ) < Math.abs( c-target ) ? p : c;
        }
    }
    // No number in array is bigger so return the last.
    return arr[arr.length-1];
}


/***=======DISABLE PRELOADER=======***/

//disabling the preloader on document load
function clearLoader(){
    
    setTimeout(function(){
        $('#loader-cont').addClass("disab-opa");


        setTimeout(function(){
            $('#wrapper').removeClass("disab-opa");

            setTimeout(function(){
                $('#loader-cont').addClass("disab");
            },600)

        },200)
        
    }, 1000)    
}


/***=======RESIZE BANNER AND SLIDES=======***/
function resizeBanSlide(){
    //alert($(window).width());
    
    if($(window).width()<1023){
        
        $('#home-page, #main-banner').css("height",$winHeight+"px");
    }
}

/***=======DARKEN NAV ON SCROLL=======***/

//darken navbar on scroll
function navDark(){
    clearTimeout($scrollTimeout);  
   	$scrollTimeout = setTimeout(function() {
            
            if($(window).scrollTop()>($winHeight*0.89)){
                $('#navbar').removeClass("navbar-light").addClass("navbar-dark");
            }
            else{
                 $('#navbar').removeClass("navbar-dark").addClass("navbar-light");
             }
            
        }, 50);
}


/***=======SEARCH MODULE=======***/
//open search module
function openSearch(){
    $('.search-module').removeClass("disab-opa").removeClass("disab-out");
    
    setTimeout(function(){
        $popupActive=true;
        console.log($popupActive);  
    },200)
    
}

//close search module
function closeSearch(){
    $('.search-module').addClass("disab-opa");
    
    setTimeout(function(){
        $('.search-module').addClass("disab-out");
    },500)
    
    setTimeout(function(){
        $popupActive=false;
       // console.log($popupActive);  
    },200)
    
    clearSearchRes();
}

//clear search results
function clearSearchRes(){
    $('#search-res').empty();
    
    //clear search value
    $('#search-inp').val('');
}



/***=======SHARE MODULE=======***/
//open search module
function openShare(){
    $('#social-icon-holder').removeClass("disab-opa").removeClass("disab-out");;
   
    $shareClose=false;
    
    setTimeout(function(){
        $popupActive2=true;
        //console.log($popupActive);  
    },200)
    
}

//close search module
function closeShare($this){
    $('#social-icon-holder').addClass("disab-opa");
    
    $shareClose=true;
    
    setTimeout(function(){
        $('#social-icon-holder').addClass("disab-out");
    },500)
    
    setTimeout(function(){
        $popupActive2=false;
        //console.log($popupActive);  
    },200)
}

/***=======SLIDER=======***/

//slide dot click
function dotClick($currentSlide, $this){
    var $prevSlide=$('.slide-dot-btn-active').data("slide");
    
    if($slideTrigger && ($prevSlide!=$currentSlide)){
        $slideTrigger=false;
        
        clearTimeout($autoSlide);
        
        //switching dot
        $('.slide-dot-btn-active').removeClass("slide-dot-btn-active");
        $this.addClass("slide-dot-btn-active");
        
        //switching slideZ
        $('.slide').removeClass("slideZ")
        $('.slide-'+$currentSlide).toggleClass("slideZ");
        
        //switching slides
        setTimeout(function(){
           $('.slide-'+$currentSlide).toggleClass("slide-active").toggleClass("slide-disab"); 
        }, 200)
        
        
        setTimeout(function(){
            $('.slide-'+$prevSlide).toggleClass("slide-active").toggleClass("slide-disab");
            
            setTimeout(function(){
                $slideTrigger=true;
                autoSlide();
            },1000)
            
        },1200)
    }
    
}


//slide dot click
function nextSlide(){    
    
    if($slideTrigger){
        $slideTrigger=false;
        
        //changing current previous slide
        if($currentSlide==$('.slide').length){
            var $nextSlide=1;
            $currentSlide=1;
            var $prevSlide=$('.slide').length;

            console.log("last "+$('.slide').length);
        }
        else{
            var $nextSlide=($currentSlide+1);
            $currentSlide++;
            var $prevSlide=($nextSlide-1);
            console.log("next "+$nextSlide)
        }
        
        //switching dot
        $('.slide-dot-btn-active').removeClass("slide-dot-btn-active");
        $('.slide-dot-btn'+$nextSlide).addClass("slide-dot-btn-active");
        
            //switching dot content
            $('.slider-dot-active').toggleClass("slider-dot-active").toggleClass("slider-dot-disab");
            $('.slide-title-active').toggleClass("slide-title-active").toggleClass("slide-title-disab");

            $('.slide-dot-btn'+$nextSlide).children('.slider-dot-c').toggleClass("slider-dot-active").toggleClass("slider-dot-disab");
            $('.slide-dot-btn'+$nextSlide).children('.slide-title-c').toggleClass("slide-title-active").toggleClass("slide-title-disab");
        
        
        //switching slideZ
        $('.slide').removeClass("slideZ")
        $('.slide-'+$nextSlide).toggleClass("slideZ");
        
        //switching slides
        setTimeout(function(){
           $('.slide-'+$nextSlide).toggleClass("slide-active").toggleClass("slide-disab"); 
        }, 200)
        
        
        setTimeout(function(){
            $('.slide-'+$prevSlide).toggleClass("slide-active").toggleClass("slide-disab");
            
            setTimeout(function(){
                $slideTrigger=true;
            },1000)
            
        },1200)
    }
    
}


//change active dot
function changeActiveDot($this){
    $('.slider-dot-active').toggleClass("slider-dot-active").toggleClass("slider-dot-disab");
    $('.slide-title-active').toggleClass("slide-title-active").toggleClass("slide-title-disab");
    
    $this.children('.slider-dot-c').toggleClass("slider-dot-active").toggleClass("slider-dot-disab");
    $this.children('.slide-title-c').toggleClass("slide-title-active").toggleClass("slide-title-disab");
}


//auto slide
function autoSlide(){
    if($slideCount>1){
        $autoSlide=setTimeout(function(){

                nextSlide();
                autoSlide();

        }, 6000)
    }
}

/***=======LOGIN POPUP=======***/

//enable login pop
function enabLoginPop(){
    $('#login-pop').addClass("login-pop-active");
    $('#login-pop').removeClass("disab-opa").removeClass("disab-z");
    
    closeSearch();
    closeShare();
}

//disab login pop
function disabLoginPop(){
    $('#login-pop').addClass("disab-opa");
    
    setTimeout(function(){
        $('#login-pop').removeClass("login-pop-active")
        $('#login-pop').addClass("disab-z");
    },1000)
    
    
}


//enable login tab
function enabLoginTab(){
    $('#login-tab').removeClass("disab");
    $('#signup-tab').addClass("disab");
    
    $('#signup-tab-btn').removeClass("tab-btn-active").addClass("tab-btn-disab");
    $('#login-tab-btn').removeClass("tab-btn-disab").addClass("tab-btn-active");
    
}

//enable signup tab
function enabSignupTab(){
    $('#signup-tab').removeClass("disab");
    $('#login-tab').addClass("disab");
   
    $('#login-tab-btn').removeClass("tab-btn-active").addClass("tab-btn-disab");
    $('#signup-tab-btn').removeClass("tab-btn-disab").addClass("tab-btn-active");
}


/***=======EMI CALCULATOR=======***/

/**EMI calc variables**/
var $emiCalcParamJSON='{"mobile":{"price":[15000,100000],"rate":[20,30],"term":[6,7], "profee":[399,599], "interest":0},"twowheel":{"price":[200000,200000],"rate":[10,10],"term":[9,12,15,18,24,30,36], "profee":[2999,3999,3999,3999,3999,3999,3999],"interest":19.99},"laptop":{"price":[15000,100000],"rate":[20,30],"term":[6,7], "profee":[399,599], "interest":3},"homeappl":{"price":[15000,100000],"rate":[20,30],"term":[6,8,10,12,15], "profee":[399,649,649,649,999], "interest":3}}';

var $maxAmount=100000;

var $emiParamPrice, $emiParamRate, $emiParamTerm, $emiParamInterest, $emiParamProfee;

var $emiCalcParam = JSON.parse($emiCalcParamJSON);

var $targetTab;

//open emi calculator
function openCalc(){
	$('#emi-calc-top').removeClass("calc-disab");
    $('.slide-apply-now').removeClass("slide-info-active");
}

//close emi calculator
function closeCalc(){
	$('#emi-calc-top').addClass("calc-disab");
    $('.slide-apply-now').addClass("slide-info-active");
    disabCalcBtnIcon();
}

//switch calculator product
function switCalcProduct($type){
	$('.calc-icon').addClass("disab");
    $('.block-btn-arw-c').addClass("disab-opa");
	
	$('.'+$type).removeClass("disab-opa");
    $('.'+$type+'-ico').removeClass("disab");
    
    if($type=="minicash"){
        enabMiniCashEmiTab();
    }
    else{
        disabMiniCashEmiTab();
        
        //changing calculator parameters
        calcParamChange($type);

        //resetting all the emi calc slider and input fields
        updateEmiSliders();
    }
        
}

//switch active cat button
function switCalcBtnIcon($this){
	$('.emi-calc-cat-btn').removeClass("emi-icon-active");
	$this.addClass("emi-icon-active");
}

//disable active cat button
function disabCalcBtnIcon(){
	$('.emi-calc-cat-btn').removeClass("emi-icon-active");
}


/**emi calculator mini cash tab**/

//enable cash loan calc tab
function enabMiniCashEmiTab(){
    $('.emi-calc-cash').removeClass("disab");
    $('.emi-calc-other').addClass("disab");
    
}

//enable cash loan calc tab
function disabMiniCashEmiTab(){
    $('.emi-calc-cash').addClass("disab");
    $('.emi-calc-other').removeClass("disab");
    
}


//main function homepage emi calc sliders    
function homeEMICalcSliders(){
    //product price range slider
    $("#pro-price-slider").ionRangeSlider({
        type: "single",
        min: 0,
        max: 100000,
        step: 2500,
        onChange: function(data){
            changeSlideInp("product-price-inp", data.from);
            
            //adjusting emi slider values
            calculateEMIdownpay();
            
            //changing indicative monthly payment
            calculateEMImonPay();
        }
    });

    //Saving product price range slider instance
    $sliderPrice = $("#pro-price-slider").data("ionRangeSlider");



    //downpayment range slider
    $("#down-pay-slider").ionRangeSlider({
        type: "single",
        min: 0,
        max: 100000,
        step: 2500,
        onChange: function(data){
            changeSlideInp("downpay-inp", data.from);
            
            //changing indicative monthly payment
            calculateEMImonPay();
            
        }
    });

    //Saving downpayment range slider instance
    $sliderDownpay = $("#down-pay-slider").data("ionRangeSlider");


    $termValues = [6, 9, 12, 18, 24, 30];
    
    //loan term range slider
    $("#loan-term-slider").ionRangeSlider({
        type: "single",
        values: $termValues,
        onChange: function(data){
            changeSlideInp("loanterm-inp", $emiParamTerm[data.from]);
            
            //adjusting emi slider values
            calculateEMIdownpay();
            
            //adjusting processing fee
            calculateEMIproFee($emiParamTerm[data.from])
            
            //changing indicative monthly payment
            calculateEMImonPay();
        }
    });

    //Saving loan term range slider instance
    $sliderloanterm = $("#loan-term-slider").data("ionRangeSlider");
}

//resetting and updating emi calc sliders
function updateEmiSliders(){
    
    //resetting all the sliders
    $sliderPrice.reset();
    $sliderDownpay.reset();
    $sliderloanterm.reset();
    
    //updating product price slider
    $sliderPrice.update({
        min: 0,
        max: $emiParamPrice[1],
        from: 0
    });
    
    //updating downpayment slider
    $sliderDownpay.update({
        min: 0,
        max: $emiParamPrice[1],
        from: 0
    });
    
    //updating loan term slider
    $sliderloanterm.update({
        values: $emiParamTerm
    });
    
    //resetting respected input fields
    $('#product-price-inp, #downpay-inp').val(0);
    
    //resetting loan term field
    $('#loanterm-inp').val($emiParamTerm[0]);
    
    //resetting processing fee
    $('#pro-fee>span').html($emiParamProfee[0])
    
    //resetting processing fee hidden input
    $('#pro-fee-inp').val($emiParamProfee[0]);
    
    //resetting indicative monthly payment
    $('#indicative-pay-amt').html("_ _ _");
    
}

//update slider according to input price
function updateSliderPos($target, $value){
    
    if($target=="$sliderPrice"){
       //updating emi calc price slider
        $sliderPrice.update({
            from: $value
        }); 
    }
    else if($target=="$sliderDownpay"){
        //updating emi calc downpayment slider
        $sliderDownpay.update({
            from: $value
        }); 
    }
    
}

//EMI MAIN CALCULATIONS

//downpayment calculations
function calculateEMIdownpay(){
    //getting the emi price
    var $emiPrice = $('#product-price-inp').val();
    
    //getting the emi down
    var $emiDown = $('#downpay-inp').val();
    
    //getting the emi term
    var $emiTerm = $('#loanterm-inp').val();   
    
    /**Calculating downpayment**/
    if($emiPrice > $emiParamPrice[0]){
        //getting effective rate
        var $effectiveRate = $emiParamRate[1]/100;
    }
    else{
        //getting effective rate
        var $effectiveRate = $emiParamRate[0]/100;
    }
    
    //effective downpayment
    var $effectiveDown = $emiPrice*$effectiveRate;
    
    //adjusting downpayment
    $('#downpay-inp').val($effectiveDown);
    
    //updating downpayment slider
    $sliderDownpay.update({
        from: $effectiveDown,
        from_max: $emiPrice
    });
    
}


//calculating emi processing fee
function calculateEMIproFee($data){
    //getting the emi term
    var $emiTerm = $('#loanterm-inp').val();   
    //getting index of term
    var $termIndex = $emiParamTerm.indexOf($data);
    
    
    //updating processing fee
    $('#pro-fee>span').html($emiParamProfee[$termIndex]);
    
    //upadting processing fee hidden input
    $('#pro-fee-inp').val($emiParamProfee[$termIndex]);
}


//calculating indicative monthly payment
function calculateEMImonPay(){
    //getting the emi price
    var $emiPrice = $('#product-price-inp').val();
    
    //getting the emi down
    var $emiDown = $('#downpay-inp').val();
    
    //getting the emi term
    var $emiTerm = $('#loanterm-inp').val();
    
    //getting processing fee
    var $proFee = $('#pro-fee-inp').val();
    
    //getting interest rate
    if($targetTab=="twowheel"){
        var $effectiveInterest = $emiParamInterest/$emiTerm;
    }
    else{
        var $effectiveInterest = $emiParamInterest;
    }
    
    console.log($effectiveInterest);
    
    //effective loan amount
    var $effLoanAmt = ($emiPrice - $emiDown) + parseInt($proFee);
    
    //total interest
    var $totInt = ($effLoanAmt * ($effectiveInterest/100)) * $emiTerm;
    
    //total loan amount including interest
    var $loanWithInt = parseInt($effLoanAmt,10) + parseInt($totInt,10);
    
    //final emi
    var $finalEMI = Math.round($loanWithInt / $emiTerm);
    
    //changing indicative mothly payment
    $('#indicative-pay-amt').html($finalEMI);
    
    //console.log($effLoanAmt+" | "+$totInt+" | "+$loanWithInt+" | "+$finalEMI+" | "+$emiTerm+" | "+$proFee);
}


//change parameters on calc product change
function calcParamChange($type){
    //paarmeters according to the product type
    $emiParamPrice = $emiCalcParam[$type].price;
    $emiParamRate = $emiCalcParam[$type].rate;
    $emiParamTerm = $emiCalcParam[$type].term;
    $emiParamInterest = $emiCalcParam[$type].interest;
    $emiParamProfee = $emiCalcParam[$type].profee;
    
    console.log($emiParamPrice+" | "+$emiParamRate+" | "+$emiParamTerm+" | "+$emiParamInterest+" | "+$emiParamProfee);
}



/***price drag slider***/

//calculating step size in the slider
/*function emiStepSize(){
    var $dragWidth=$('#product-price-slider-inr').width();
    
    //adjusting price slider step size
    var $stepSnapSizePre=$dragWidth/$totalSteps;
    
    $stepSnapSize= $stepSnapSizePre.toFixed(1);
    
    console.log($stepSnapSize);
    
    //product price slider
    $('#pro-knob').draggable({axis: "x", containment: "#invisible-line", grid: [ $stepSnapSize, $stepSnapSize ], scroll: false, 
		
		stop:function(){
			//dragSnap();
		},
								  
		start:function(){
			//$( "#project-grid" ).removeClass("project-grid-trans");
		},
                              
        drag:function(){
            knobRoundOf(),
            redDragLine();
            adjPrice();
        }
								 
	});
}*/

//to round of left position on the knob
/*function knobRoundOf(){
    var $adjKnobPos=($('#pro-knob').position().left).toFixed(1);
    
    $('#pro-knob').css("left",$adjKnobPos+"px");
}*/

//scale red line on drag
/*function redDragLine(){
    var $currentKnobPos=Math.round($('#pro-knob').position().left);
    
    $('#pro-red-line').css("width",($currentKnobPos+3)+"px");
}*/


//adjust price according drag amt
/*function adjPrice(){
    var $currentKnobPos=Math.round($('#pro-knob').position().left);
    
    //moving the price
    $('#stepPrice').css("left",($currentKnobPos+3)+"px");
    
    //calculating the price
    var $price=(Math.round($currentKnobPos/$stepSnapSize))*$stepPrice;
    
    //adjusting the price
    $('#stepPrice>span').html($price);
    $('#product-price-inp').val($price);
}*/

//adjust price according input value
/*function adjPriceInp(){
    var $currentVal=$('#product-price-inp').val();;
    
    //calculating the price
    var $position=Math.round(($currentVal/$stepPrice))*$stepSnapSize;
    
    //moving the price, knob and adjusting red line
    $('#stepPrice').css("left",($position+3)+"px");
    $('#pro-knob').css("left",$position+"px")
    $('#pro-red-line').css("width",($position+3)+"px");
    
    
    //adjusting the price
    $('#stepPrice>span').html($currentVal);
    
}*/

//changing the value of respective input field to the emi calc slider
function changeSlideInp($target, data){
    $('#'+$target).val(data);
}

/***=======SCROLL BANNER OUT, STEP SCROLL AND CLICK HERE SCROLL=======***/

//scroll up banner section
function bannerUp(){
    $("html, body").animate({scrollTop:($winHeight-$navbarHeight)+"px"}, 800);
}

//change scroll down button on scroll amount
function changeScrollBtn(){
    var $scrollAmt=$(window).scrollTop();
    
    //if user reaches bottom of document
    if($scrollAmt>=($docHeight-($winHeight+0))){
        $('#scroll-down').addClass("scroll-icon-disab");
        $('#scroll-up').removeClass("scroll-icon-disab");
    }
    else{
        $('#scroll-down').removeClass("scroll-icon-disab");
        $('#scroll-up').addClass("scroll-icon-disab");
    }
}

//step scroll on go down and up button
function stepScrollMouseDown(){
    var $scrollAmt=$(window).scrollTop();
    
    //if scroll amount is less than window height
    if($scrollAmt<($winHeight-$navbarHeight)){
        bannerUp();
    }
    
    //else scroll with step amount based on window height
    else{
        var $stepScrollAmt=$scrollAmt+($winHeight*0.5);
       
        $("html, body").animate({scrollTop:$stepScrollAmt+"px"}, 600);
        
    }
    
}

//scroll to top of the document
function scrollToTop(){
    $("html, body").animate({scrollTop:"0px"}, 600);
}
    
//click here scroll to contact section
function scrollToContact(){
    var $contactSecPos=$('#contact-opt-sec').position().top;
    
    $("html, body").animate({scrollTop:($contactSecPos-$navbarHeight)+"px"}, 600);
}



/***=======FEATURES TOGGLE=======***/

//open button state
function openBtn($this){
    $('.ft-open').addClass("ft-close");
    $('.ft-open').removeClass("ft-open");
    $this.addClass("ft-open");
    $this.removeClass("ft-close");
    
    //opens text respected to the btn
    openTxt($this);
}

//close button state
function closeBtn($this){
    $this.addClass("ft-close");
    $this.removeClass("ft-open");
    
    //closes text respected to the button
    closeTxt($this);
}


//open text
function openTxt($this){
    $('.ft-txt-enab').addClass("ft-txt-disab");
    $('.ft-txt-enab').removeClass("ft-txt-enab");
    
    var $target=$this.data("target");
    
    $('.'+$target).addClass("ft-txt-enab");
    $('.'+$target).removeClass("ft-txt-disab");
}

//close text
function closeTxt($this){
    var $target=$this.data("target");
    
    $('.'+$target).addClass("ft-txt-disab");
    $('.'+$target).removeClass("ft-txt-enab");
}



/***=======PLAY PAUSE VIDEO=======***/

//play video
function playVideo(){
    //remove video overlay
    $('#loan-video-controls').removeClass("video-paused");
    
    //add pausing class
    $('#loan-video-controls').addClass("pause-video");
    
    //hide play button
    $('#play-btn').addClass("disab-opa").removeClass("play-btn-curs");
    
    //play the video
    $('#featured-video').get(0).play()
}


//pause video
function pauseVideo(){
    //remove video overlay
    $('#loan-video-controls').addClass("video-paused");
    
    //remove pausing class
    $('#loan-video-controls').removeClass("pause-video");
    
    //hide play button
    $('#play-btn').removeClass("disab-opa").addClass("play-btn-curs");
    
    //play the video
    $('#featured-video').get(0).pause()
}


/***=======OUR PEOPLE TOGGLE=======***/

//change our people section content
function switPeople($target, $this){
    
    //changing active person icon
    changeActvPerson($this);
    
    //changing our people info
    changeOurPeopleInfo($target)
    
    
}

//changing our people individual info
function changeOurPeopleInfo($target){
    //changing name
    $('.our-people-titl').html($ourPeople[$target].name);
    
    //changing name
    $('.our-people-desg').html($ourPeople[$target].desg);
    
    //changing name
    $('.our-people-info').html($ourPeople[$target].info);
    
    //changing image
    $('.our-people-image>img').attr("src",$assetBaseUrl+"visual/images/ourpeople/"+$ourPeople[$target].img);
}


//changing active person
function changeActvPerson($this){
    $('.op-icon-actv').addClass("op-icon-disab");
    $('.op-icon-actv').removeClass("op-icon-actv");
    
    $this.addClass("op-icon-actv");
    $this.removeClass("op-icon-disab");
}

//appending our people thumb
function appendOurPeopleThumb(){
    if($('.our-people-icons')[0]){
        for (var $key in $ourPeople) {
            if ($ourPeople.hasOwnProperty($key)) {
                //console.log($key + " -> " + $ourPeople[$key]);
                $('.our-people-icons').append('<li class="our-people-icon op-icon-disab" data-name="'+$key+'"><span class="row our-people-thumb-titl">'+$ourPeople[$key].name+'</span><img src="'+$assetBaseUrl+'visual/images/ourpeople/'+$ourPeople[$key].img+'"></li>');
            }
        }
        
        //activating first individual in our people
        activatingOurPeople();
        
        //geting document height again
        $docHeight=$(document).height();
    }
    
    
}

//appending active class to first of our people & getting the respective info
function activatingOurPeople(){
    $('.our-people-icon:first-of-type').addClass("op-icon-actv").removeClass("op-icon-disab");
    
    var $target=$('.op-icon-actv').data("name");
    
    //changing our people info
    changeOurPeopleInfo($target);
}


/***=======CORPORATE GOVERNANCE PDF TOGGLE=======***/

//switch corp gov pdf tabs
function corpGovTabs($this, $target){
    $('.cor-gov-tab-c').removeClass("cor-gov-nav-actv");
    $this.addClass("cor-gov-nav-actv");
    
    corpGovPdf($target);
}


//switch to respective pdf container 
function corpGovPdf($target){
    $('.pdf-cont').addClass("disab");
    
    $('#'+$target).removeClass("disab");
}



/***=======CONTACT US TABS TOGGLE=======***/

//toggle between icon tabs
function toggleConBtns($this, $target){
    $('.contact-icon-btn').removeClass("con-icon-actv");
    $('.contact-icon-btn').addClass("con-icon-disab");
    
    $this.addClass("con-icon-actv");
    $this.removeClass("con-icon-disab");
    
    toggleConContent($target);
}

//switch to respective contact us container
function toggleConContent($target){
    $('.contact-us-tab').addClass("disab");
    
    $('.con-tab-'+$target).removeClass("disab");
}


/***=======LIFE@HC SLIDES=======***/

//life@HC slider
function resizeLifeSlides(){
    $lifeSlideCount = $('.life-slide').length;
    $lifeSliderWidth = Math.round($('#life-slides').innerWidth());
    
    
    //resize the slide ul(container)
    $('#life-slides').css("width",($lifeSliderWidth*$lifeSlideCount)+"px");
    
    //giving absolute width to the individual slides
    $('.life-slide').css("width",$lifeSliderWidth+"px");
}

//genering snapping points
function generateSnapPts(){
    for($i=0; $i<$lifeSlideCount; $i++){
		$LifeSnapPts.push($LifeFirstPt-($lifeSliderWidth*$i));
	}
    
    console.log($LifeSnapPts);
}

//snapping life slider on drag stop
function lifeSliderSnap(){
    //adding back the transition
    addSlideTrans();
    
    var $sliderLeftPos = $('#life-slides').position().left;
    
    console.log($sliderLeftPos+" / "+$lifeSlideOffset);
    
    //getting the closest point as per current drag amount
    var $closestPt =  closest($LifeSnapPts, $sliderLeftPos);
    
    //now moving slider container on drag stop
    $('#life-slides').css("left", (-$closestPt)+"px");
    
    
}

//remove transition on drag start
function removeSlideTrans(){
    $('#life-slides').removeClass("life-slider-trans");
}

//add transition on drag stop
function addSlideTrans(){
    $('#life-slides').addClass("life-slider-trans");
}

//next previous slide function with variables
var $slideCounter = 0;
var $slideTriggerLife = true;

//next life at homecredit slide
function LifeNextSlide(){
    
    if($slideTriggerLife && $slideCounter<($lifeSlideCount-1)){
        
        $slideCounter++
        
        $slideTriggerLife = false;
        
        var $slideAmt = $slideCounter*$lifeSliderWidth;

        $('#life-slides').css("transform", "translateX(-"+$slideAmt+"px)");
     
        setTimeout(function(){
            $slideTriggerLife = true;
        },800)
    }
}

//prev life at homecredit slide
function LifePrevSlide(){
    
    if($slideTriggerLife && ($slideCounter>0)){
        
        $slideTriggerLife = false;
        
        $slideCounter-- 
        
        var $slideAmt = $slideCounter*$lifeSliderWidth;

        $('#life-slides').css("transform", "translateX(-"+$slideAmt+"px)");

        
        
        setTimeout(function(){
            $slideTriggerLife = true;
        },800)
    }
}


/***=======MOBILE MENU=======***/

//open mobile menu
function openMobMenu($this){
    $this.removeClass("menu-close").addClass("menu-open");
    $('#mob-menu').removeClass("menu-disab");
    
    //opening desktop menu
    $('#destop-menu-cont').removeClass("menu-disab");
    
    //closing other popups
    closeSearch();
    closeShare();
    closeCalc();
}

//close mobile menu
function closeMobMenu($this){
    $this.removeClass("menu-open").addClass("menu-close");
    $('#mob-menu').addClass("menu-disab");
}

//close desktop menu
function closeDeskMenu(){
    $('#destop-menu-cont').addClass("menu-disab");
    //disabling main menu button
    $("#main-menu-btn").removeClass("menu-open").addClass("menu-close");
}

/***=======AUTO WRAPPER AND BANNER HEIGHTs=======***/

//resizing banner & wrapper height according to window size
function resizeWrapBann(){
    $('.home-wrapper, #main-banner').css("height",$winHeight+"px");
}


/***======all functions called here======***/
$(function(){
    
    
    
    
    /***initializing some variables on document load***/
    
    //getting last vlaue url
    var $url = window.location.href;
    var $value = $url.substring($url.lastIndexOf('/') + 1);
    
    //changing array as per url
    if($value=="our-people" || $value=="our-people2"){
        $ourPeople = JSON.parse($ourPeopleJSON);
    }
    else if($value=="lifeathc"){
        $ourPeople = JSON.parse($testimonials);
    }
    
    
    
    //getting all slides
    $slideCount=$('.slide').length;
    
    //getting navbar height
    $navbarHeight=$('#header').height();
    
    /***getting auto height for banner and slides***/
    resizeBanSlide();
    
    /***LIFE@HC Slides***/
    
    //if life slider exists then
    if($('#life-slides')[0]){
    
        //getting life slider offset
        $lifeSlideOffset = $('#life-slides').position().left; 
        
        //computing first snap point
        $LifeFirstPt = $lifeSlideOffset;

        //resizing slides and the main slide container
        resizeLifeSlides()

        //getting drag slide amount after resizing slides and slider
        $lifeSlideAmt = $lifeSliderWidth*($lifeSlideCount-1);
            
        
        
        //generating snap points life@Hc slider
        generateSnapPts();

    }
    
    //geting document height
    $docHeight=$(document).height();
    
    
    /***calling functions with their respective event handlers***/
    
    /**WINDOW LOAD FUNCTIONS**/
    $(window).on("load", function(){
        //emiStepSize();
        
        //disabling and enabling content preloader
        clearLoader();
        
        //auto slide function
        autoSlide();
        appendOurPeopleThumb(); 
        
        //resizing wrapper and banner
        //resizeWrapBann();
    });
    
    
    /**WINDOW SCROLL FUNCTIONS**/
    $(window).on("scroll", function(){
        navDark();
        
        //change scroll up and down icon according to scroll amount
        changeScrollBtn();
    });
    
    
    /**WINDOW RESIZE FUNCTIONS**/
    $(window).on("resize", function(){
        
        $navbarHeight=$('#header').height();
        
        //geting document height
        $winHeight=$(window).height();
        
        //resizing wrapper and banner
        //resizeWrapBann();
        
        /***getting auto height for banner and slides***/
        resizeBanSlide();

    });
    
    /**WINDOW ORIENTATION CHANGE FUNCTIONS**/
    $(window).on("orientationchange ", function(){
        //page reloads on orientation change
        //location.reload();
        
        /***getting auto height for banner and slides***/
        resizeBanSlide();
    });
    
    
    /**SLIDER**/
    
    //dot slide
    $(document).on("click", ".slide-dot-btn", function(){
        $currentSlide=$(this).data("slide");
        var $this=$(this);
        
        if($slideTrigger){
            changeActiveDot($this);
        }
        
        dotClick($currentSlide, $this);

    })
    
    
    
    /**POPUPS**/
    
    //click on document to disable popup options
	$('.search-module, #social-icon-holder').on({
		mouseenter: function () {
			$popupSwitch=false;
            //console.log("enter");
		},
		mouseleave: function () {
			$popupSwitch=true;
            //console.log("leave");
		}
	});
	
	$(document).on("click", ".disable-popup", function(){        
		
			closeSearch();
            closeShare();
            closeCalc();

	})
    
    /**SEARCH MODULE**/
    //open serach module
    $(document).on("click", "#open-search", function(){
        openSearch();
        closeShare();
        
        //close emi calc
        closeCalc();
    })
    
    //close serach module
    $(document).on("click", ".close-search", function(){
        closeSearch();
    })
    
    
    /**SHARE MODULE**/
    //open serach module
    $(document).on("click", ".open-share", function(){
        
        if($shareClose){
            openShare();
            closeSearch();  
            
            //close emi calc
            closeCalc();
            
        }
        
        else{
            closeShare();
            
            //close emi calc
            closeCalc();
        }
        
    })
    
    $(document).on("click", ".close-calc, #emi-calc-close-btn", function(){
        //close emi calc
        closeCalc();
    })
    
    
    /**LOGIN SIGNUP POP & TAB TOGGLE**/
    
    //enab login pop
    $(document).on("click", "#open-login", function(){
        enabLoginPop();
        
        //disable emi calc
        closeCalc();
    })
    
    //disab login pop
    $(document).on("click", ".login-pop-close-c", function(){
        disabLoginPop();
    })
    
    //enab login tab
    $(document).on("click", "#login-tab-btn", function(){
        enabLoginTab();
    })
    
    //enab signup tab
    $(document).on("click", "#signup-tab-btn", function(){
        enabSignupTab();
    })

    
	/**EMI CALCULATOR**/
	
	//open emi calculator & switch product
    $(document).on("click", ".emi-calc-cat-btn", function(){
		var $type = $(this).data("type");
        var $this = $(this);
        
        //setting active tab
        $targetTab = $type;
        
		switCalcProduct($type);
        switCalcBtnIcon($this)
        openCalc();
    })
    
    
    /*
    //on price input change
    $(document).on("keyup change", "#product-price-inp", function(){
        var $initPrice=$(this).val();
        
        if($initPrice>=0 && $initPrice<=$maxPrice){
            
           adjPriceInp(); 
        }
        
        else{
            alert("Please enter the price in range.");
        }
        
    })*/
    
    /**RANGE SLIDERS FOR EMI CALCULATOR**/
    
    //emi all sliders initialised only on homepage
    if($('#emi-calc-main')[0]){
        homeEMICalcSliders();
    }
    
    
    //updating EMI calc slider on manual input value
    $(document).on("keyup change", ".emi-calc-inp", function(){
        var $target = $(this).data("target");
        var $inPvalue = $(this).val();
        var $proPrice = $('#product-price-inp').val();
        var $defInpVal = $emiParamPrice[1];
        
        //controlling input value if amount exceeds the limit
        if($target=="$sliderPrice"){
           $defInpVal = $emiParamPrice[1];
        }
        else if($target=="$sliderDownpay"){
            $defInpVal = $proPrice;
        }
        
        //console.log($value+" | "+$defInpVal);
                
        if(Number($inPvalue) > Number($defInpVal)){
            alert("Amount Out of Range!");
            $(this).val($defInpVal);
            console.log($inPvalue+" | "+$defInpVal);
        }
        //alert($target+" | "+$value);
        updateSliderPos($target, $inPvalue);
    })
    
    //reset input fields on blur
    $(document).on("blur", ".emi-calc-inp", function(){
        var $value = $(this).val();
        
        if($value==""){
            $(this).val(0);
        }

    })
    
    //updating EMI on manual price input
    $(document).on("keyup change", "#product-price-inp", function(){
        //adjusting emi slider values
        calculateEMIdownpay();

        //changing indicative monthly payment
        calculateEMImonPay();
    })
    
    
    //updating EMI on manual downpayment input
    $(document).on("keyup change", "#downpay-inp", function(){

        //changing indicative monthly payment
        calculateEMImonPay();
    })
    
    
    
    
    
    
    
    /**SCROLL ON SCROLL BUTTON AND CLICK HERE SECTION**/
    
    //click scroll down icon to scroll
    $(document).on("click", "#scroll-down", function(){
        stepScrollMouseDown();        
    })
    
    //click scroll up icon to scroll
    $(document).on("click", "#scroll-up", function(){
        scrollToTop();        
    })
    
    //click here button to scroll to contact tab section
    $(document).on("click", "#contact-click-here", function(e){
        
        e.preventDefault();
        scrollToContact();        
    })
    
    
    
    
    
    /**OPEN CLOSE FEATURES**/
    
    //open feature
    $(document).on("click", ".ft-close", function(){
        var $this=$(this);
        openBtn($this);        
    })
    
    //close feature
    $(document).on("click", ".ft-open", function(){
        var $this=$(this);
        closeBtn($this);        
    })
    
    
    /**PLAY PAUSE LOAN FEATURED VIDEO**/
	
    //play video
    $(document).on("click", "#play-btn", function(){
        playVideo();        
    })
    
    //pause video
    $(document).on("click", ".pause-video", function(){
        pauseVideo();        
    })
    
    
    
    /**OUR PEOPLE SWICTH**/
    
    //switching people on icon click
    $(document).on("click", ".our-people-icon", function(){
        
        var $this = $(this);
        var $target = $this.data("name");
        
        switPeople($target, $this);        
    })
    
    
    /**CORPORATE GOVERNANCE**/
    
    //switching corp gov cat tabs
    $(document).on("click", ".cor-gov-tab-c", function(){
        
        var $this = $(this);
        var $target = $this.data("target");
        
        corpGovTabs($this, $target); 
        
        
    })
    
    
    
    /**CONTACT US TABS**/
    
    //switching contact us icons & content tabs
    $(document).on("click", ".contact-icon-btn", function(){
        
        var $this = $(this);
        var $target = $this.data("target");
        
        toggleConBtns($this, $target); 
        
        
    })
    
    /**LIFE @ HOMECREDIT**/
    
    //draggable life @ hc slider
    /*$('#life-slides').draggable({ axis:'x', containment: [-($lifeSlideAmt-$lifeSlideOffset), 0, $lifeSlideOffset, 0], scroll: false, 
		
        stop:function(){
            lifeSliderSnap();
        },

        start:function(){
            removeSlideTrans();
        }
								 
	});*/
    
    //next life slide
    $(document).on("click", "#life-next-btn", function(){
        
        LifeNextSlide(); 
        
        
    })
    
    //prev life slide
    $(document).on("click", "#life-prev-btn", function(){
        
        LifePrevSlide();         
        
    })
    
    /**LIFE @ HOMECREDIT**/
    
    //open mobile menu
    $(document).on("click", ".menu-close", function(){
        
        var $this = $(this);
        openMobMenu($this);
    })
    
    //close mobile menu
    $(document).on("click", ".menu-open", function(){
        
        var $this = $(this);
        closeMobMenu($this);
    })
    
    //close desktop menu
    $(document).on("click", "#desk-menu-close", function(){
        closeDeskMenu();
    })
    
    
    
    
})


/***=====JQUERY MOBILE FUNCTIONS=====***/

//Initialising jquery mobile functions
$(document).on("pagecreate","#wrapper",function(){

     
    
    //Slider Swipe Right
    $("#slides").on("swipe",function(){
        if($slideTrigger2){
            
            $slideTrigger2=false;
            nextSlide();
            
            setTimeout(function(){
                $slideTrigger2=true;
            },2500)
        }
        
    });
    
    //removing ui link from jquery mobile
    $('.ui-link').removeClass('ui-link');
    $('.ui-mobile').removeClass('ui-mobile');
    
    //adding external attribute to all links
    $("a").each(function(){
        $(this).attr("rel","external");
    });
    
    //hiding page content loader on scroll in mobile devices
    $.mobile.loading().hide();
    
});