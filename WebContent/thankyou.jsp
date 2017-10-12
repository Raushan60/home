<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0">
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
    <meta name="theme-color" content="#de232e">
    <meta name="csrf-token" content="7xp5Osalg2LDk6mKKmbAhhMBYDebOBgyu1HIkm7B" />
    <link href="css/fonts.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <title>HomeCredit</title>
    
    <style>
        *{
            border-bottom: 0.12vw solid rgba(255,255,255,1);
        }
    </style>
    
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

<body>
    
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
                                    <a href="https://www.homecredit.co.in/hco/aboutus/corporategovernance.aspx"  target="_blank" class="menu-inr-link">— CORPORATE GOVERNANCE</a>
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
                                <a href="/contact-us">CONTACT US</a>
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
                                        <a href="https://www.homecredit.co.in/hco/aboutus/corporategovernance.aspx" target="_blank" class="dmenu-inr-link">— CORPORATE GOVERNANCE</a>
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
                                    <a href="https://www.homecredit.co.in/hco/loans/applyforloans.aspx"  target="_blank">LOAN</a>
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
                                    <a href="/contact-us">CONTACT US</a>
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
    <div id="wrapper" class="row disab-opa">
        
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
        
                
        
        <!--dynamic banner-->
        <style>
            #main-banner{
                background-image:url('images/thankyou.jpg')
            }
            @media  only screen and (min-width:280px) and (max-width:1023px) and (orientation:portrait){
                #main-banner{
                    background-image:url('images/thankyou.jpg')
                }
            }
        </style>
        <!--======main body begins======-->
        <main id="main" class="row disable-popup">

            <!--======about page======-->

            <!--main banner section-->
            <section id="main-banner" class="row">
                <div id="banner-info" class="row">
                    <!--<span id="ban-titl" class="row">Thankyou for</span>
                    <h1 id="ban-main-titl" class="row">Contacting us</h1>
                    <span class="content-bord cont-bord-wht cont-bord-mar fl-left"></span>
                    <p id="banner-text" class="fl-left clear-all">We will get back to you shortly.</p>-->
                    <!--<a href="https://homecredit.co.in/hco/loans/applyforloans.aspx" target="_blank" id="banner-apply-now" class="common-apply-now fl-left clear-all">APPLY NOW</a>-->

                </div>

                
            </section>




        </main>
        <!--======main body ends======-->
    
            
        
        <!--======footer begins======-->
        <footer id="footer" class="row">
            <div class="row narrow-row">
                
                <div class="row">
                    <div id="footer-logo" class="block-10 block-left">
                        <a href="/" class="row">
                            <img src="images/logo-svg.svg" alt="homeCredit" class="row">
                        </a>
                    </div>
                </div>
                
                
                <!--footer links-->
                <div class="row">
                    
                    <div class="block-50 block-left">
                        
                        <div class="block-100 block-left">
                            <span class="content-bord cont-bord-red fl-left"></span>
                        </div>
                        
                        <!--block 1-->
                        <div class="block-40 block-pad-15-r block-left">
                            
                            
                            <ul class="row footer-ul">
                                <li>
                                    <span class="row footer-title">EMAIL</span>
                                </li>
                                
                                <li>
                                    <a href="mailto:care@homecredit.co.in">care@homecredit.com</a>
                                </li>
                            </ul>
                            
                            <ul class="row footer-ul">
                                <li>
                                    <span class="row footer-title">CALL</span>
                                </li>
                                
                                <li>
                                    1800 121 6660
                                </li>
                            </ul>
                            
                        </div>
                        
                        <!--block 2-->
                        <div class="block-60 block-pad-15-r block-left">
                            
                            <ul class="row footer-ul">
                                <li>
                                    <span class="row footer-title">SOCIAL</span>
                                </li>
                                
                                <li>
                                    <ul class="row footer-social-links disab">
                                        <li>
                                            <a href="https://www.facebook.com/homecreditin/" target="_blank">FACEBOOK</a>
                                        </li>
                                        
                                        <li>
                                            <a href="https://twitter.com/HomeCredit_In" target="_blank">TWITTER</a>
                                        </li>
                                        
                                        <li>
                                            <a href="https://www.linkedin.com/company-beta/3309352/admin/updates/" target="_blank">LINKEDIN</a>
                                        </li>
                                    </ul>
                                    
                                    <ul class="row social-icons-footer">
                                        <li>
                                            <a href="https://www.facebook.com/homecreditin/" target="_blank">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="https://twitter.com/HomeCredit_In" target="_blank">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="https://www.linkedin.com/company-beta/3309352/admin/updates/" target="_blank">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                        </li>

                                        <li>
                                            <a href="https://www.youtube.com/channel/UCvbK025VFFZgU6DbMlnnhog" target="_blank">
                                                <i class="fa fa-youtube-play"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    
                    <div class="block-40 block-right">
                        
                        <div class="block-100 block-left">
                            <span class="content-bord cont-bord-red fl-left"></span>
                        </div>
                        
                        <!--block 1-->
                        <div class="block-60 block-pad-15-r block-left">
                            
                            
                            <ul class="row footer-ul">
                                <li>
                                    <span class="row footer-title">ABOUT US</span>
                                </li>
                                
                                <li>
                                    <a href="/our-vision">
                                        OUR VISION & VALUES
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="/our-people">
                                        OUR PEOPLE
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="https://homecredit.co.in//hco/aboutus/corporategovernance.aspx">
                                        CORPORATE GOVERNANCE
                                    </a>
                                </li>
                            </ul>
                            
                            
                        </div>
                        
                        <!--block 2-->
                        <div class="block-40 block-pad-15-r block-left">
                            
                            <ul class="row footer-ul">
                                
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/loan-repayment.aspx" target="_blank">
                                        LOAN REPAYMENT
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/locateus.aspx" target="_blank">
                                        LOCATE US
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="/careers">
                                        CAREERS
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="https://www.homecredit.co.in/hco/ombudsperson.aspx" target="_blank">
                                        OMBUDSPERSON
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                
                
                </div>
                
                <!--footer copyright-->
                <div id="footer-bottom-bar" class="row">
                    <div class="-fl-left">
                        <ul id="bottom-links" class="fl-left bottom-links-common">
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
                    
                    <div class="fl-right">
                        <span id="copyright-text" class="fl-right copyright-text-common">
                            Copyright © 2017 Home Credit. All Right Reserved
                        </span>
                    </div>
                </div>
            
            </div>
        </footer>
        <!--======footer ends======-->
        
        
        <!--======Mobile Footer======-->
        <footer class="row footer-2">
            
            <!--Mobile footer social and contacts-->
            <div id="m-footer-top" class="row d-hide">                    
                <div id="m-foot-contact" class="row">
                    <span id="m-foot-email" class="block-50 block-left">
                        <a href="mailto:care@homecredit.com">care@homecredit.com</a>
                    </span>

                    <span id="m-foot-phone" class="block-50 block-left">
                        1800 121 6660
                    </span>
                </div>

                <span class="row">
                    <ul id="m-foot-social" class="row talign-cent">
                        <li>
                            <a href="#" class="fa fa-facebook"></a>
                        </li>
                        <li>
                            <a href="#" class="fa fa-twitter"></a>
                        </li>
                        <li>
                            <a href="#" class="fa fa-linkedin"></a>
                        </li>
                    </ul>
                </span>
            </div>
            
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
        <!--======Mobile Footer ends======-->
    
    </div>
    <!--======MAIN WPAPPER ENDS======-->
    
</body>
    <script>
        var $url = "https://www.homecredit.co.in";
        var $assetBaseUrl = "https://www.homecredit.co.in/";
    </script>
    <script src="js/jquery-1.12.2.min.js" type="text/javascript"></script>
    <script src="js/jqueryui.js" type="text/javascript"></script>
    <script src="js/jqueryui-touch.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/ajax_req.js" type="text/javascript"></script>
</html>