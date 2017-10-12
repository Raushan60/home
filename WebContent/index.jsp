<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="height-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--favicons-->
    <link rel="apple-touch-icon" sizes="57x57" href="images/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="images/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="images/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <!--favicons end-->
    
    <!-- Android Viewport height fix-->
    <script type="text/javascript">
        var isAndroid = navigator.userAgent.toLowerCase().indexOf("android") > -1; //&& ua.indexOf("mobile");
        if(isAndroid) {
            document.write('<meta name="viewport" content="width=device-width,height='+window.innerHeight+', initial-scale=1.0">');
        }
    </script> 
    <meta name="csrf-token" content="7xp5Osalg2LDk6mKKmbAhhMBYDebOBgyu1HIkm7B" />
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.skinNice.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <title>HomeCredit</title>
    
    <!-- Hotjar Tracking Code for https://homecredit.bitmprojects.com/ -->

<!--
    <script>

        (function(h,o,t,j,a,r){

            h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};

            h._hjSettings={hjid:600439,hjsv:5};

            a=o.getElementsByTagName('head')[0];

            r=o.createElement('script');r.async=1;

            r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;

            a.appendChild(r);

        })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');

    </script>
-->
    
</head>

<body class="height-100 over-y-hid home-body">
    
    <!--======PRE LOADER======-->
    <div id="loader-cont" class="row height-100 loader-s">
        
        <div id="loader-inr" class="fl-left">
            
            <!--loader red circle-->
            <div class="loader-circle-cont row height-100">
                <span id="loader-cw" class="row height-100 loader-circle loader-circle-r">
                </span>
            </div>
            
            <!--loader grey circle-->
            <div id="loader-grey-cont" class="loader-circle-cont row height-100">
                <span id="loader-ccw" class="row height-100 loader-circle loader-circle-gr">
                </span>
            </div>
            
        </div>
        
    </div>
    
    <!--======MOBILE MENU======-->
    <div id="mob-menu" class="mob-menu-s menu-disab row">
        <div id="mob-menu-inr" class="row">
                <!--feature list begins-->
                <ul id="mob-menu-ul" class="row">
                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="/about">ABOUT</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text100">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text100 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="/our-vision" class="menu-inr-link">— VISION &amp; VALUES</a>
                                </li>
                                <li>
                                    <a href="/our-customer-promise" class="menu-inr-link">— CUSTOMER PROMISE</a>
                                </li>
                                <li>
                                    <a href="/our-people" class="menu-inr-link">— OUR PEOPLE</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/aboutus/corporategovernance.aspx" target="_blank" class="menu-inr-link">— CORPORATE GOVERNANCE</a>
                                </li> 
                                <li>
                                    <a href="images/faq-logo.jpg" target="_blank" class="menu-inr-link">— FAQ LOGO</a>
                                </li> 
                            </ul>
                            
                        </div>
                    </li>


                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="/products">PRODUCTS</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text102">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text102 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="/smartphone" class="menu-inr-link">— MOBILE PHONE LOAN</a>
                                </li>
                                <li>
                                    <a href="/two-wheeler" class="menu-inr-link">— TWO WHEELER LOAN</a>
                                </li>
                                <li>
                                    <a href="/home-appliance" class="menu-inr-link">— HOME APPLIANCES LOAN</a>
                                </li>
                                <li>
                                    <a href="/laptop" class="menu-inr-link">— LAPTOP LOAN</a>
                                </li>
                                <li>
                                    <a href="/mini-cash-loan" class="menu-inr-link">— MINI CASH LOAN</a>
                                </li>                                
                            </ul>
                        </div>
                    </li>

                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="/careers">CAREERS</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text103">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text103 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="/careers" class="menu-inr-link">— WHY JOIN US</a>
                                </li>
                                <li>
                                    <a href="/our-vision2" class="menu-inr-link">— VISION &amp; VALUES</a>
                                </li>
                                <li>
                                    <a href="/our-people2" class="menu-inr-link">— OUR PEOPLE</a>
                                </li>
                                <li>
                                    <a href="/lifeathc" class="menu-inr-link">— LIFE @ HOMECREDIT</a>
                                </li>
                                <li>
                                    <a href="/https://www.homecredit.co.in/hco/portals/cp/client/default.aspx" target="_blank" class="menu-inr-link">— CURRENT OPENINGS</a>
                                </li>                                
                            </ul>
                        </div>
                    </li>
                    
                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="https://www.homecredit.co.in/hco/hcmedia/mediacontact.aspx" target="_blank">MEDIA</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text104">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text104 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/hcmedia/mediacontact.aspx" target="_blank" class="menu-inr-link">— MEDIA CONTACT</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/hcmedia/pressrelease.aspx" target="_blank" class="menu-inr-link">— PRESS RELEASE</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/hcmedia/mediacoverage.aspx" target="_blank" class="menu-inr-link">— MEDIA COVERAGE</a>
                                </li>     
                                                              
                            </ul>
                        </div>
                    </li>
                    
                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="https://www.homecredit.co.in/hco/loans/applyforloans.aspx" target="_blank">LOAN</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text105">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text105 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="/apply-now" class="menu-inr-link">— APPLY FOR LOAN</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/myfirstloan.aspx" target="_blank" class="menu-inr-link">— MY FIRST LOAN</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/eligibilityparameters.aspx" target="_blank" class="menu-inr-link">— ELIGIBILITY</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/loan-repayment.aspx" target="_blank" class="menu-inr-link">— LOAN REPAYMENT</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/wheretopay.aspx" target="_blank" class="menu-inr-link">— WHERE TO PAY</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/loanparameters.aspx" target="_blank" class="menu-inr-link">— LOAN PARAMETERS</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/whypartnerwithus.aspx" target="_blank" class="menu-inr-link">— WHY PARTNER WITH US</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/features.aspx" target="_blank" class="menu-inr-link">— FEATURES</a>
                                </li> 
                            </ul>
                        </div>
                    </li>
                    
                    <li>
                        <div class="row menu-main-link">
                            <div class="fl-left menu-point">
                                <a href="contact-us.jsp">CONTACT US</a>
                            </div>

                            <div class="menu-btns fl-right ft-close" data-target="text106">
                                <img src="images/feat-open.png" class="row" id="ft-opn-btn">
                                <img src="images/feat-close.png" class="row" id="ft-cls-btn">
                            </div>
                        </div>

                        <div class="row feature-text text106 ft-txt-disab">
                            <ul class="menu-inr-links row">
                                <li>
                                    <a href="/contact-us" class="menu-inr-link">— CUSTOMER</a>
                                </li>
                                <li>
                                    <a href="/partner" class="menu-inr-link">— PARTNER</a>
                                </li>
                                <li>
                                    <a href="/employee" class="menu-inr-link">— EMPLOYEE</a>
                                </li>
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/locateus.aspx" target="_blank" class="menu-inr-link">— LOCATE US</a>
                                </li>                               
                            </ul>
                        </div>
                    </li>
                    
                    
                </ul>
                <!--feature list ends-->
        
        </div> 
        
        <!--mobile menu social and contact-->
        
        <div id="mobile-menu-footer" class="row">
            <div class="row">
                <ul id="mobile-menu-social" class="row talign-cent">
                    <li>
                        <a href="https://www.facebook.com/homecreditin/" target="_blank" class="fa fa-facebook"></a>
                    </li>

                    <li>
                        <a href="https://twitter.com/HomeCredit_In" target="_blank" class="fa fa-twitter"></a>
                    </li>

                    <li>
                        <a href="https://www.linkedin.com/company-beta/3309352/admin/updates/" target="_blank" class="fa fa-linkedin"></a>
                    </li>

                    <li>
                        <a href="https://www.youtube.com/channel/UCvbK025VFFZgU6DbMlnnhog" target="_blank" class="fa fa-youtube-play"></a>
                    </li>
                </ul>
            </div>
            
            <span id="mobile-menu-contact" class="row talign-cent">
                1800 121 6660
                
                <a href="mailto:care@homecredit.co.in" id="mobile-menu-mail">care@homecredit.co.in</a>
            </span>
            
            
        </div>
    </div>
    <!--mobile menu ends-->
    
    
    <!--desktop menu-->
    <div id="destop-menu-cont" class="desk-menu-cont-s row height-100  menu-disab">
        <div id="desk-menu-lines" class="row height-100">
            <div id="m-line-left" class="height-100">
            </div>
            
            <div id="m-line-top" class="block-55">
            </div>
            
            <div id="m-line-right" class="height-100">
                <div id="desk-menu-close" class="desk-menu-s">
                    <img src="images/close_d.png" class="row">
                </div>
            </div>
            
            <div id="m-line-bottom" class="block-55">
            </div>
        </div>
        
        <div id="desk-menu-main" class="row height-100">
            <div class="row height-100">
                <div id="desk-menu-conc" class="fl-left block-30 height-100">
                    <div class="row v-center">
                        <div id="desk-menu-logo" class="row">
                            <a href="/">
                                <img src="images/logo-svg.svg" class="row">
                            </a>
                        </div>
                        
                        <div class="row">
                            <ul id="desk-menu-social" class="row talign-cent">
                                <li>
                                    <a href="https://www.facebook.com/homecreditin/" target="_blank" class="fa fa-facebook"></a>
                                </li>
                                
                                <li>
                                    <a href="https://twitter.com/HomeCredit_In" target="_blank" class="fa fa-twitter"></a>
                                </li>
                                
                                <li>
                                    <a href="https://www.linkedin.com/company-beta/3309352/admin/updates/" target="_blank" class="fa fa-linkedin"></a>
                                </li>
                                
                                <li>
                                    <a href="https://www.youtube.com/channel/UCvbK025VFFZgU6DbMlnnhog" target="_blank" class="fa fa-youtube-play"></a>
                                </li>
                            </ul>
                        </div>
                        
                        <span id="desk-menu-num" class="row talign-cent">
                            1800 121 6660
                        </span>
                        
                        <a href="mailto:care@homecredit.com" id="desk-menu-mail" class="row talign-cent">
                            care@homecredit.com
                        </a>
                    </div>
                    
                </div>
                
                <div id="desk-menu-links" class="fl-left block-35 height-100">
                    <!--feature list begins-->
                    <ul id="mob-menu-ul" class="row v-center">
                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="/about">ABOUT</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text120">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text120 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="/our-vision" class="dmenu-inr-link">— VISION &amp; VALUES</a>
                                    </li>
                                    <li>
                                        <a href="/our-customer-promise" class="dmenu-inr-link">— CUSTOMER PROMISE</a>
                                    </li>
                                    <li>
                                        <a href="/our-people" class="dmenu-inr-link">— OUR PEOPLE</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/aboutus/corporategovernance.aspx"  target="_blank" class="dmenu-inr-link" >— CORPORATE GOVERNANCE</a>
                                    </li>
                                    <li>
                                        <a href="images/faq-logo.jpg" target="_blank" class="dmenu-inr-link">— FAQ LOGO</a>
                                    </li>
                                    
                                    
                                </ul>

                            </div>
                        </li>


                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="/products">PRODUCTS</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text121">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text121 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="/smartphone" class="dmenu-inr-link">— MOBILE PHONE LOAN</a>
                                    </li>
                                    <li>
                                        <a href="/two-wheeler" class="dmenu-inr-link">— TWO WHEELER LOAN</a>
                                    </li>
                                    <li>
                                        <a href="/home-appliance" class="dmenu-inr-link">— HOME APPLIANCES LOAN</a>
                                    </li>
                                    <li>
                                        <a href="/laptop" class="dmenu-inr-link">— LAPTOP LOAN</a>
                                    </li>
                                    <li>
                                        <a href="/mini-cash-loan" class="dmenu-inr-link">— MINI CASH LOAN</a>
                                    </li>                                
                                </ul>
                            </div>
                        </li>

                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="/careers">CAREERS</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text122">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text122 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="/careers" class="dmenu-inr-link">— WHY JOIN US</a>
                                    </li>
                                    <li>
                                        <a href="/our-vision2" class="dmenu-inr-link">— VISION &amp; VALUES</a>
                                    </li>
                                    <li>
                                        <a href="/our-people2" class="dmenu-inr-link">— OUR PEOPLE</a>
                                    </li>
                                    <li>
                                        <a href="/lifeathc" class="dmenu-inr-link">— LIFE @ HOMECREDIT</a>
                                    </li>
                                    <li>
                                        <a href="/https://www.homecredit.co.in/hco/portals/cp/client/default.aspx" target="_blank" class="menu-inr-link">— CURRENT OPENINGS</a>
                                    </li>                                
                                </ul>
                            </div>
                        </li>

                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="https://www.homecredit.co.in/hco/hcmedia/mediacontact.aspx" target="_blank">MEDIA</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text123">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text123 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/hcmedia/mediacontact.aspx" target="_blank" class="dmenu-inr-link">— MEDIA CONTACT</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/hcmedia/pressrelease.aspx" target="_blank" class="dmenu-inr-link">— PRESS RELEASE</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/hcmedia/mediacoverage.aspx" target="_blank" class="dmenu-inr-link">— MEDIA COVERAGE</a>
                                    </li>                              
                                </ul>
                            </div>
                        </li>
                        
                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="https://www.homecredit.co.in/hco/loans/applyforloans.aspx" target="_blank">LOAN</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text124">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text124 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="/apply-now" class="dmenu-inr-link">— APPLY FOR LOAN</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/myfirstloan.aspx" target="_blank" class="dmenu-inr-link">— MY FIRST LOAN</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/eligibilityparameters.aspx" target="_blank" class="dmenu-inr-link">— ELIGIBILITY</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/loan-repayment.aspx" target="_blank" class="dmenu-inr-link">— LOAN REPAYMENT</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/wheretopay.aspx" target="_blank" class="dmenu-inr-link">— WHERE TO PAY</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/loanparameters.aspx" target="_blank" class="dmenu-inr-link">— LOAN PARAMETERS</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/whypartnerwithus.aspx" target="_blank" class="dmenu-inr-link">— WHY PARTNER WITH US</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/features.aspx" target="_blank" class="dmenu-inr-link">— FEATURES</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        
                        <li>
                            <div class="row dmenu-main-link">
                                <div class="fl-left dmenu-point">
                                    <a href="contact-us.jsp">CONTACT US</a>
                                </div>

                                <div class="dmenu-btns fl-right ft-close" data-target="text125">
                                    <img src="images/dmenu-plus.png" class="row" id="ft-opn-btn">
                                    <img src="images/dmenu-minus.png" class="row" id="ft-cls-btn">
                                </div>
                            </div>

                            <div class="row feature-text text125 ft-txt-disab">
                                <ul class="dmenu-inr-links row">
                                    <li>
                                        <a href="/contact-us" class="dmenu-inr-link">— CUSTOMER</a>
                                    </li>
                                    <li>
                                        <a href="/partner" class="dmenu-inr-link">— PARTNER</a>
                                    </li>
                                    <li>
                                        <a href="/employee" class="dmenu-inr-link">— EMPLOYEE</a>
                                    </li>
                                    <li>
                                        <a href="https://www.homecredit.co.in/hco/locateus.aspx" target="_blank" class="dmenu-inr-link">— LOCATE US</a>
                                    </li>                               
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <!--feature list ends-->
                </div>
            </div>
        </div>
    </div>
    
    <!--desktop menu ends--> 
    
    
    
    <!--======MAIN WPAPPER BEGINS======-->
    <div id="wrapper" data-role="page" class="row height-100 disab-opa home-wrapper">
        
        <!--======login & signup popup======-->
        <div id="login-pop" class="row height-100 login-pop-s disab-opa disab-z">
            
            <div id="pop-up-box" class="block block-left block-25 pop-box-s hv-center">
                
                <div id="log-switch" class="row">
                    <span id="login-tab-btn" class="fl-left tab-btn tab-btn-active no-select">Login</span>
                    <span id="signup-tab-btn" class="fl-left tab-btn tab-btn-disab no-select">Signup</span>
                    
                    <span id="login-pop-close" class="login-pop-close-c fl-right">
                        <img src="images/close-popup.png" class="row">
                    </span>
                </div>
                
                <!--login tab-->
                <div id="login-tab" class="row">
                    <form id="login-form" action="" method="post">
                        
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/user.png" class="row">
                            </div>
                            <input type="text" name="username" placeholder="Username" class="input-def">
                        </div>
                        
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/lock.png" class="row">
                            </div>
                            <input type="password" name="password" placeholder="Password" class="input-def">
                        </div>
                        
                        <input type="submit" value="Login" class="log-pop-submit" data-role="none">
                        
                        <a href="#" class="fl-right forgot-pass-s">Forgot Password?</a>
                    </form>    
                </div>
                
                
                <!--signup tab-->
                <div id="signup-tab" class="row disab">
                    <form id="signup-form" action="" method="post">
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/user.png" class="row">
                            </div>
                            <input type="text" name="username" placeholder="username" class="input-def">
                        </div>
                        
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/lock.png"  class="row">
                            </div>
                            <input type="email" name="email" placeholder="Email" class="input-def">
                        </div>
                        
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/lock.png"  class="row">
                            </div>
                            <input type="password" name="password" placeholder="Password" class="input-def">
                        </div>
                        
                        <div class="row input-cover">
                            <div class="input-icon-cont">
                                <img src="images/lock.png" class="row">
                            </div>
                            <input type="password" name="repassword" placeholder="Re-type password" class="input-def">
                        </div>
                        
                        
                        <input type="submit" value="Signup" class="log-pop-submit" data-role="none">
                    </form>    
                </div>
                
                
            </div>
        </div>
    
        <!--======header begins======-->
       <jsp:include page="header.jsp" />  
        <!--======header ends======-->
        
                
                <!--======main body begins======-->
        <main id="main" class="row height-100"> 
            
            <!--home page-->
            <section id="home-page" class="row height-100">
                
                <!--slider-->
                <div id="slider-cont" class="row height-100 disable-popup">
                    
                    <div id="slides" class="row height-100">
                        <ul id="slides-inner" class="row height-100">
                            
                            <li class="slide slide-1 slide-active">
                                <div class="row slide-info">
                                	<span class="row sub-titl">Stay connected with your loved ones because</span>
                                    <h2 class="row slide-main-titl">Now you can</h2>
                                    <a href="applynow.jsp" class="slide-apply-now slide-info-active">APPLY NOW</a>
                                </div>
                            </li>
                                
                            <li class="slide slide-2 slide-disab">
                                <div class="row slide-info">
                                	<span class="row sub-titl">Life is better with a Smartphone</span>
                                    <h2 class="row slide-main-titl">AT 0% INTEREST</h2>
                                    <a href="applynow.jsp" class="slide-apply-now slide-info-active">APPLY NOW</a>
                                </div>
                            </li>
                                
                            <li class="slide slide-3 slide-disab">
                                <div class="row slide-info">
                                	<span class="row sub-titl">Your loan in</span>
                                    <h2 class="row slide-main-titl">your pocket</h2>
                                    <a href="https://play.google.com/store/apps/details?id=com.portal.hcin&hl=en" target="_blank" class="slide-apply-now slide-info-active">DOWNLOAD NOW</a>
                                </div>
                            </li> 
                            
                            <li class="slide slide-4 slide-disab">
                                <div class="row slide-info">
                                	<!--<span class="row sub-titl"></span>
                                    <h2 class="row slide-main-titl"></h2>-->
                                    <div class="row">
                                        <img src="images/aon-logo.png" class="block-33 block-60-m block-50-t fl-left slide-titl-img" >
                                    </div>
                                    <a href="/careers" target="_blank" class="fl-left slide-apply-now slide-info-active">WORK WITH US</a>
                                </div>
                            </li>
                            
                            <li class="slide slide-5 slide-disab">
                                <div class="row slide-info">
                                	<span class="row sub-titl">Instant loan at</span>
                                    <h2 class="row slide-main-titl">Your fingertips</h2>
                                    <a href="https://www.homecredit.co.in/mcl" target="_blank" class="slide-apply-now slide-info-active">APPLY NOW</a>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                    
                    <div id="slider-control">
                        <div id="slider-control-inner" class="height-100">
                            <span id="slide-dot-line" class="height-100 fl-left"></span>
                            
                            <ul id="slide-dot-cont" class="fl-left">
                                <li class="slide-dot-btn slide-dot-btn1 slide-dot-btn-active" data-slide="1">
                                    <span class="slider-dot-s slider-dot-c slider-dot-active"></span>
                                    <span class="slide-title slide-title-c slide-title-active no-select">Now You Can</span>
                                </li>
                                
                                <li class="slide-dot-btn slide-dot-btn2" data-slide="2">
                                    <span class="slider-dot-s slider-dot-c slider-dot-disab"></span>
                                    <span class="slide-title slide-title-c slide-title-disab no-select">0% Interest</span>
                                </li>
                                
                                <li class="slide-dot-btn slide-dot-btn3" data-slide="3"> 
                                    <span class="slider-dot-s slider-dot-c slider-dot-disab"></span>
                                    <span class="slide-title slide-title-c slide-title-disab no-select">Our App</span>
                                </li>
                                
                                <li class="slide-dot-btn slide-dot-btn4" data-slide="4"> 
                                    <span class="slider-dot-s slider-dot-c slider-dot-disab"></span>
                                    <span class="slide-title slide-title-c slide-title-disab no-select">Best Employer</span>
                                </li>
                                
                                <li class="slide-dot-btn slide-dot-btn5" data-slide="5"> 
                                    <span class="slider-dot-s slider-dot-c slider-dot-disab"></span>
                                    <span class="slide-title slide-title-c slide-title-disab no-select">Instant Loan</span>
                                </li>
                            </ul>    
                        </div>
                    </div>
                    
                </div>
                
                <!--emi calculator module-->
                <!--<div id="emi-calc-main" class="emi-calc-main-s">
                	
                    
                
                </div>-->
                
                <!--emi calculator top-->
                <div id="emi-calc-top" class="emi-calc-top-s row calc-disab">
                    
                    <!--emi calc main-->
                    <div id="emi-calc-main" class="row height-100">
                        
                        <!--emi calc close button-->
                        <div id="emi-calc-close-btn" class="emi-calc-close-btn-s">
                            <img src="images/close-popup.png" class="row">
                        </div>
                    	
                        <div class="emi-calc-s emi-calc-other row">
                        	<div class="row height-100">
                            	<h3 id="emi-calc-main-titl" class="row talign-cent">EMI ESTIMATOR</h3>
                                <div id="emi-calc-control-par" class="row">
                                
                                	<form id="emi-calc-form" class="row height-100" method="post" action="https://www.homecredit.co.in/hco/loans/applyforloans.aspx">
                                        <div id="emi-calc-form-inner-top" class="row">

                                            <div class="block-75 block-100-m block-100-t block-left height-100">
                                                <ul id="emi-calc-ul" class="row height-100">
                                                    <li class="row bord-bt">
                                                        <span class="fl-left emi-calc-inner-titl no-select">Product Price</span>
                                                        <!--<div id="product-price-slider" class="fl-left">

                                                            <div id="product-price-slider-inr" class="row">

                                                                <span id="pro-grey-line" class="row">                                                        
                                                                </span>

                                                                <span id="pro-red-line" class="fl-left">                                                        
                                                                </span>

                                                                <span id="invisible-line" class="fl-left">
                                                                    
                                                                    <span id="pro-knob" class="fl-left">                                         </span>
                                                                
                                                                </span>

                                                                

                                                                <span id="stepPrice" class="fl-left">
                                                                    <span>0</span>
                                                                </span>
                                                            </div>
                                                        </div>-->
                                                        
                                                        <div id="product-price-slider" class="fl-left emi-slider-cont">
                                                            <input type="text" id="pro-price-slider" class="emi-slider-inp" value="">
                                                        </div>
                                                        
                                                        <input type="number" name="productPrice" value="0" id="product-price-inp" class="pro-price-inp fl-right emi-calc-inp block-20" data-target="$sliderPrice">
                                                    </li>

                                                    <li class="row bord-bt">
                                                        <span class="fl-left emi-calc-inner-titl no-select">Down Payment</span>
                                                        
                                                        <div id="downpay-slider" class="fl-left emi-slider-cont">
                                                            <input type="text" id="down-pay-slider" class="emi-slider-inp" value="">
                                                        </div>
                                                        
                                                        <input type="number" name="downpayment" value="0" id="downpay-inp" class="down-inp fl-right emi-calc-inp block-20"  data-target="$sliderDownpay" max="100000">
                                                    </li>

                                                    <li class="row bord-bt">
                                                        <span class="fl-left emi-calc-inner-titl no-select">Loan Term</span>
                                                        
                                                        <div id="loanterm-slider" class="fl-left emi-slider-cont">
                                                            <input type="text" id="loan-term-slider" data-target="$sliderloanterm" value="">
                                                        </div>
                                                        
                                                        <input type="number" name="downpayment" value="0" id="loanterm-inp" class="fl-right emi-calc-inp block-20" readonly>

                                                    </li>

                                                    <li class="row">
                                                        <span class="fl-left emi-calc-inner-titl no-select">Processing fee</span>
                                                        <span id="pro-fee" class="fl-right emi-calc-inner-titl-r no-select">
                                                            Rs. 
                                                            <span>1099</span>
                                                        </span>
                                                        <input type="hidden" id="pro-fee-inp" />
                                                    </li>

                                                    <!--<li class="row">
                                                        <span class="fl-left emi-calc-inner-titl no-select">Indicative monthly payment*</span>
                                                        <span id="indic-fee" class="fl-right emi-calc-inner-titl-r no-select">
                                                            Rs. 
                                                            <span>1415</span>
                                                        </span>
                                                    </li>-->
                                                </ul>
                                            </div>
                                            
                                            <div id="know-more-block" class="block-25 block-100-m block-100-t block-right">
                                                <div id="inicative-pay-cont" class="row">
                                                    <span id="indicative-pay-titl" class="row">Indicative monthly payment*</span>
                                                    <span id="indicative-pay-amt" class="row">_ _ _</span>
                                                </div>
                                                <div class="calc-icons h-center">
                                                    <img src="images/mobile_b.png" class="calc-icon mobile-ico">
                                                    <img src="images/bike_b.png" class="calc-icon disab twowheel-ico">
                                                    <img src="images/washing_b.png" class="calc-icon disab homeappl-ico">
                                                    <img src="images/laptop_b.png" class="calc-icon disab laptop-ico">
                                                    <img src="images/cashloan_b.png" class="calc-icon disab minicash-ico">
                                                </div>

                                                <div id="calc-know-more-out" class="row">
                                                    <a href="#" id="calc-know-more-btn" class="calc-know-more-s row talign-cent">Know More</a>
                                                </div>

                                            </div>
                                        </div>
                                        
                                        <div id="emi-calc-submit-sec" class="row">
                                            <a href="https://www.homecredit.co.in/hco/loans/applyforloans.aspx" id="emi-cal-submit" class="emi-cal-submit-s fl-left v-center">Apply Now</a>
                                            
                                            <ul id="emi-calc-condi" class="fl-right v-center">
                                                <li>
                                                    The above is an approximate EMI calculation.
                                                </li>
                                                
                                                <li>
                                                    The processing fee will be as applicable.
                                                </li>
                                            </ul>
                                        </div>
                                    </form>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="emi-calc-s emi-calc-cash row disab">
                            <div class="row">
                                <h3 id="emi-calc-main-titl" class="row talign-cent">INSTANT LOAN AT YOUR FINGERTIPS</h3>
                                <div class="row">
                                    
                                    <!--emi mini cash left block-->
                                    <div class="block-left block-50 block-100-m emi-minicash-block-left">
                                        <ul id="emi-minicash-list" class="row">
                                            <li>
                                                <div class="emi-minicash-icon">
                                                    <img src="images/icon1.png" alt="homecredit">
                                                </div>
                                                
                                                <div class="emi-minicash-text">
                                                    On the spot loans up to Rs.10,000
                                                </div>
                                            </li>
                                            
                                            
                                            <li>
                                                <div class="emi-minicash-icon">
                                                    <img src="images/icon2.png" alt="homecredit">
                                                </div>
                                                
                                                <div class="emi-minicash-text">
                                                    No meeting required
                                                </div>
                                            </li>
                                            
                                            
                                            <li>
                                                <div class="emi-minicash-icon">
                                                    <img src="images/icon3.png" alt="homecredit">
                                                </div>
                                                
                                                <div class="emi-minicash-text">
                                                    No collaterals required
                                                </div>
                                            </li>
                                            
                                            
                                            <li>
                                                <div class="emi-minicash-icon">
                                                    <img src="images/icon4.png" alt="homecredit">
                                                </div>
                                                
                                                <div class="emi-minicash-text">
                                                    No need to fill forms
                                                </div>
                                            </li>
                                            
                                            
                                            <li>
                                                <div class="emi-minicash-icon">
                                                    <img src="images/icon5.png" alt="homecredit">
                                                </div>
                                                
                                                <div class="emi-minicash-text">
                                                    Loan approval before you logout
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    
                                    <!--emi mini cash right-block-->
                                    <div class="block-left block-50 block-100-m emi-minicash-block-right">
                                        <p class="minicash-text m-text-1 row">
                                           Sometimes, an urgent need comes up without a warning. A mobile phone that has conked off and needs immediate replacement, a gift for somebody important that needs to be purchased right away, or a great online deal that won’t wait till the next week. 
                                        </p>
                                        
                                        <p class="minicash-text m-text-2 row">
                                           Sometimes, an urgent need comes up without a warning. A mobile phone that has conked off and needs...
                                        </p>
                                    </div>
                                    
                                    
                                    <!--know more button-->
                                    <div id="minicash-know-more-cont" class="row">
                                        <a href="/mini-cash-loan" class="know-more-btn-adtv h-center">Know More</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    	
                    	<div class="row emi-calc-ctive-arrows">
                        	<div class="block-btn-arrow block-btn-arw-c block-20 block-left mobile">
                            	<img src="images/arrow-down.png" class="row">
                            </div>
                            
                            <div class="block-btn-arrow block-btn-arw-c block-20 block-left disab-opa twowheel">
                            	<img src="images/arrow-down.png" class="row">
                            </div>
                            
                            <div class="block-btn-arrow block-btn-arw-c block-20 block-left disab-opa homeappl">
                            	<img src="images/arrow-down.png" class="row">
                            </div>
                            
                            <div class="block-btn-arrow block-btn-arw-c block-20 block-left disab-opa laptop">
                            	<img src="images/arrow-down.png" class="row">
                            </div>
                            
                            <div class="block-btn-arrow block-btn-arw-c block-20 block-left disab-opa minicash">
                            	<img src="images/arrow-down.png" class="row">
                            </div>
                        </div>
                    </div>
                    
                    <!--emi calculator bottom-->
                    <div id="emi-calc-bottom" class="emi-calc-bottom-s row">
                    	<div id="emi-calc-btm-in" class="emi-calc-btm-in-s row">
                        	
                            <!--emi btns-->
                            <div class="block-left block-20 emi-btn-blocks">
                            	<div class="row">
                                	<span class="row emi-calc-btn-title">Mobile Phones</span>
                                    <div class="row emi-calc-btn-icon emi-calc-cat-btn" data-type="mobile">
                                    	<img src="images/mobile.png" alt="homeCredit" class="row">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="block-left block-20 emi-btn-blocks">
                            	<div class="row">
                                	<span class="row emi-calc-btn-title">Two Wheelers</span>
                                    <div class="row emi-calc-btn-icon emi-calc-cat-btn" data-type="twowheel">
                                    	<img src="images/bike.png" alt="homeCredit" class="row">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="block-left block-20 emi-btn-blocks">
                            	<div class="row">
                                	<span class="row emi-calc-btn-title">Home Appliances</span>
                                    <div class="row emi-calc-btn-icon emi-calc-cat-btn" data-type="homeappl">
                                    	<img src="images/washing.png" alt="homeCredit" class="row">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="block-left block-20 emi-btn-blocks">
                            	<div class="row">
                                	
                                	<span class="row emi-calc-btn-title">Laptops</span>
                                    <div class="row emi-calc-btn-icon emi-calc-cat-btn" data-type="laptop">
                                    	<img src="images/laptop.png" alt="homeCredit" class="row">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="block-left block-20 emi-btn-blocks">
                            	<div class="row">
                                	<span class="row emi-calc-btn-title">Mini Cash Loan</span>
                                    <div class="row emi-calc-btn-icon emi-calc-cat-btn" data-type="minicash">
                                    	<img src="images/cashloan.png" alt="homeCredit" class="row">
                                    </div>
                                </div>
                            </div>
                        
                        </div>
                    </div>
                
                <!--emi calculator module ends-->
                
                <!--homepage footer-->
                <footer id="home-footer" class="row">
                    <div id="home-footer-inr" class="row">
                        <div id="footer-links" class="fl-left">
                            <ul id="bottom-links" class="fl-left bottom-links-home">
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/privacypolicy.aspx" target="_blank">
                                        PRIVACY POLICY
                                    </a>
                                </li>

                                <li>
                                    <a href="https://www.homecredit.co.in/hco/termsofuse.aspx" target="_blank">
                                        TERMS OF USE
                                    </a>
                                </li>

                                <li>
                                    <a href="images/rbi-disclaimer.jpg" target="_blank">
                                        RBI DISCLAIMER
                                    </a>
                                </li>

                                <li>
                                    <a href="https://www.homecredit.co.in/hco/faq.aspx" target="_blank">
                                        FAQ
                                    </a>
                                </li>
                            </ul>
                        </div>  

                        <div id="footer-copy" class="fl-right">
                            <span id="copyright-text" class="fl-right copyright-text-home">
                                Copyright © 2017 Home Credit. All Right Reserved
                            </span>
                        </div>
                    </div>
                </footer>
                
            </section>

    </main>
    <!--======main body ends======-->
    
        
    </div>
    <!--======MAIN WPAPPER ENDS======-->
    
</body>
    <script>
        var $url = "https://www.homecredit.co.in";
    </script>
    <script src="js/jquery-1.12.2.min.js" type="text/javascript"></script>
    <script src="js/jqueryui.js" type="text/javascript"></script>
    <script src="js/jquery.mobile.custom.js" type="text/javascript"></script>
    <script src="js/jqueryui-touch.js" type="text/javascript"></script>
    <script src="js/ion.rangeSlider.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/ajax_req.js" type="text/javascript"></script>
</html>