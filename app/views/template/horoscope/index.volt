<div class="navbar navbar-inverse navbar-fixed-top ng-scope" id="content-navbar">
    <div class="container header-container">
        <div class="navbar-header" style="width:100%;margin:0 0 0 0">
            <a class="navbar-brand">
                <img src="../template/horoscope/img/logo_bigger.png">
            </a>
        </div>
    </div>
</div>
<div id="content-holder">

    <div class="row lp-header-img">
        <div class="col-lg-12">
            <div class="header-img"></div>
        </div>
        <!-- END .col-lg-12 -->
    </div>
    <!-- END .row lp-header-img -->

    <div class="container home-top-part lp-exp-container text-center" style="margin-top:-13px; padding-top:4px;">


        <div class="row lp-body-container">
            <div class="col-md-12 row">
                <div class="lp-form-exp">
                    <div class="row text-center lp-headline hidden visible-mobile">
                        <h2 id="HORO_TOWERS">{{translation.HOROSCOPEHEADING}}</h2>
                    </div>

                    <div class="row text-center hidden visible-mobile">
                        <div id="horoscope-1" class="horoscope-container horoscope-1 {{translation.DIR}}">
                            <h4 id="SIGN_CARNEIRO">{{translation.ARIES}}</h4>
                        </div>

                        <div id="horoscope-2" class="horoscope-container horoscope-2 {{translation.DIR}}">
                            <h4 id="SIGN_TOURO">{{translation.TAURUS}}</h4>
                        </div>

                        <div id="horoscope-3" class="horoscope-container horoscope-3 {{translation.DIR}}">
                            <h4 id="SIGN_GEMEOS">{{translation.GEMINI}}</h4>
                        </div>

                        <div id="horoscope-4" class="horoscope-container horoscope-4 {{translation.DIR}}">
                            <h4 id="SIGN_CARANGUEIJO">{{translation.CANCER}}</h4>
                        </div>
                    </div>

                    <div class="row text-center hidden visible-mobile">
                        <div id="horoscope-5" class="horoscope-container horoscope-5 {{translation.DIR}}">
                            <h4 id="SIGN_LEAO">{{translation.LEO}}</h4>
                        </div>

                        <div id="horoscope-6" class="horoscope-container horoscope-6 {{translation.DIR}}">
                            <h4 id="SIGN_VIRGEM">{{translation.VIGRO}}</h4>
                        </div>

                        <div id="horoscope-7" class="horoscope-container horoscope-7 {{translation.DIR}}">
                            <h4 id="SIGN_BALANCA">{{translation.LIBRA}}</h4>
                        </div>

                        <div id="horoscope-8" class="horoscope-container horoscope-8 {{translation.DIR}}">
                            <h4 id="SIGN_ESCORPIAO">{{translation.SCORPIO}}</h4>
                        </div>
                    </div>

                    <div class="row text-center hidden visible-mobile">
                        <div id="horoscope-9" class="horoscope-container horoscope-9 {{translation.DIR}}">
                            <h4 id="SIGN_SAGITARIO">{{translation.SAGITTARIUS}}</h4>
                        </div>

                        <div id="horoscope-10" class="horoscope-container horoscope-10 {{translation.DIR}}">
                            <h4 id="SIGN_CAPRICORNIO">{{translation.CAPRICORN}}</h4>
                        </div>

                        <div id="horoscope-11" class="horoscope-container horoscope-11 {{translation.DIR}}">
                            <h4 id="SIGN_AQUARIO">{{translation.AQUARIUS}}</h4>
                        </div>

                        <div id="horoscope-12" class="horoscope-container horoscope-12 {{translation.DIR}}">
                            <h4 id="SIGN_PEIXES">{{translation.PISCES}}</h4>
                        </div>
                    </div>

                    <!-- ZETA FORM -->
                    <div id="loader_zeta" class="loader_zeta text-center" style="display: none;"></div>
                    <!--LOADING SPINNER-->
                    <p id="error_msg" class="error_msg text-center col-xs-12 col-sm-12 col-md-12 col-lg-12" style="display: none;"></p>
                    <!--ERROR MESSAGE-->

                    <div id="main_content">
                        <div style="margin-bottom:10px; margin-top: 30px;">
                            <div class="panel panel-default">
                                <div id="form_enriched" class="row" style="display: none;">
                                    <button id="form_enriched_btn_subs" dir="{{translation.DIR}}" onclick="zeta.onSendAddSubsHHE.call(zeta)" class="button">تابع</button>
                                    <div dir="{{translation.DIR}}" class="text-center col-xs-12" style="margin">
                                        <!--<small id="price_freq_3g">2 جنية يوميا</small>-->
                                    </div>
                                </div>
                                <!-- END #form_enriched -->

                                <div id="redirect_to_contents" class="white h-centered text-center container col-xs-12 col-sm-12 col-md-12 col-lg-12 h-centered"
                                    style="display: none;">
                                    <div id="redirect_to_contents_msg black">
                                        <div style="display:none">...redirecting in
                                            <div id="redirect_countdown">5</div> seconds </div>
                                    </div>

                                    <div class="clearfix"></div>
                                    <button style="margin-bottom: 10px;" id="redir_click_here" class="btn btn-primary" onclick="zeta.goToContents.call(zeta,true)">انقر هنا لاعادة التوجيه</button>
                                    <div class="clearfix"></div>
                                    <p class="btn btn-primary" id="resend_sms_subs_info" onclick="zeta.onSendAccessSMSLink.call(zeta,true)">اعاده ارسال رساله ببيانات الاشتراك</p>
                                </div>
                                <!-- END .redirect_to_contents -->

                                <div id="form_not_enriched" class="panel-body" style="">
                                    <p class="form-box-text {{translation.DIR}}" id="HORO_JAWA" dir="{{translation.DIR}}">{{translation.MOBILEMESSAGE}}</p>
                                    <p class="container col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <select id="operators" dir="{{translation.DIR}}" class="network-input form-control btn btn-secundary box-input">
                                            <option id="default_option" name="default" value="false" selected="" disabled="">{{translation.OPERATORMESSAGE}}</option>
                                            <option value="60203" dir="{{translation.DIR}}">Etisalat-EGY</option>
                                            <option value="60201" dir="{{translation.DIR}}">Orange-EGY</option>
                                            <option value="60202" dir="{{translation.DIR}}">Vodafone-EGY</option>
                                        </select>
                                    </p>
                                    <!-- CHOOSE YOUR NETWORK OPERATOR -->
                                    <p class="container h-centered txt-center white col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    </p>
                                    <p class="form-box-text" dir="{{translation.DIR}}"></p>
                                    <div class="col-xs-12" style="margin-bottom:15px;">
                                        <input placeholder="ادخل رقمك" class="form-control h-centered col-xs-8 col-sm-8 col-md-4 col-lg-4 box-input" id="mobile_phone"
                                            name="mobile_phone" type="text" value="20">
                                        <br>
                                        <img alt="" class="arrow small" src="themes/10/img/arrow.png">
                                    </div>
                                    <p></p>
                                    <p class="container h-centered txt-center white col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <button id="form_not_enriched_btn_subs" dir="{{translation.DIR}}" onclick="zeta.onSendAddSubs.call(zeta)" class="button">{{translation.FOLLOW}}</button>
                                    </p>
                                    <div dir="{{translation.DIR}}" class="text-center col-xs-12" style="margin">
                                        <!--<small id="price_freq_wifi">2 جنية يوميا</small>-->
                                    </div>
                                    <button dir="{{translation.DIR}}" id="login_btn" onclick="zeta.onSendLogIn.call(zeta)" class="login-button btn">{{translation.CONNECTION}}</button>
                                    <p></p>
                                </div>
                                <!-- END #form_not_enriched -->

                                <div id="form_pin_code_add" class="form-group form_pin_code_add container h-centered text-center white col-xs-12 col-sm-12 col-md-12 col-lg-12"
                                    style="display: none;">
                                    <input dir="{{translation.DIR}}" class="pin_code form-control h-centered col-xs-8 col-sm-8 col-md-4 col-lg-4" id="pin_code"
                                        name="pin_code" maxlength="6" type="text" placeholder="رقم تاكيد الاشتراك">
                                    <br>
                                    <input id="subscription_contract_id" name="subscription_contract_id" type="hidden">
                                    <p class="h-centered">
                                        <button id="form_pin_code_add_btn_send" class="button" onclick="zeta.onSendVerifyPinCodeAdd.call(zeta)">تابع</button>
                                    </p>
                                    <p class="h-centered">
                                        <button id="form_pin_code_add_btn_resend" class="btn btn-primary" onclick="zeta.onSendAskPinCodeAddResend.call(zeta)">اعادة ارسال رمز التعريف مرة اخرة</button>
                                    </p>
                                </div>
                                <!-- END #form_pin_code_add -->

                                <div id="after_login" class="form-group form_pin_code_add container h-centered text-center white col-xs-12 col-sm-12 col-md-12 col-lg-12"
                                    style="display: none;">
                                    <p class="h-centered">
                                        <button id="after_login_btn_resend" class="btn btn-primary" onclick="zeta.onSendLogIn.call(zeta)">اعاده ارسال رساله ببيانات الاشتراك</button>
                                    </p>
                                </div>
                                <!-- END #after_login -->
                            </div>
                            <!--MAIN CONTENT-->
                        </div>
                        <!-- END style="margin-bottom:10px; margin-top: 30px;" -->
                    </div>
                    <!-- END .main_content -->
                </div>
                <!-- END .lp-form-exp -->
            </div>

            <div class="landing-form-description {{translation.DIR}}">
                <p class="p_rules_padding" id="serv_cond">مايأسترو:يجب على هاتفك أن يدعم خدمة(GPRS) أو واب (WAP) , سيتم خصم 2 جنيه مصري يوميا ، لإلغاء الاشتراك أرسل
                    كلمة UNSUBMA إلى 6699 لمشتركى فودافون ، UNSUBMA إلى 5030 لمشتركى أورانج أو UNSUBMA إلى 1722 لمشتركى rإتصالات
                    للاستفسار يرجى التواصل معنا على eg.support@zeta-mobile.com</p>
            </div>

            <p dir="{{translation.DIR}}" class="terms-conditions {{translation.DIR}}">
                <a href="themes/6/terms.html">
                    <b id="terms_lp_link">الشروط و الأحكام</b>
                </a>
            </p>
        </div>
    </div>
</div>


<!-- LATEST JQUERY -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
<!--BOOTSTRAP JQUERY-->

