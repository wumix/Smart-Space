<div class="page-footer">
                        <div class="row">
                                <div class="col-xs-6 col-sm-6 text-left">
                                        <div class="txt-color-white inline-block">
                                                <i class="txt-color-blueLight"></i>
                                                <div class="btn-group dropup  hidden-lg hidden-md">
                                                        <button class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white" data-toggle="dropdown">
                                                                <i class="fa fa-link"></i> <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu pull-left text-center">
                                                                <li>
                                                                        <div class="padding-5">
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin"><a href="game.php?page=imperium"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Imperium"><i class="fa fa-empire"></i> Imperium</a> </span></p>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin"><a href="game.php?page=settings"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Einstellungen"><i class="fa fa-cog fa-spin"></i> Einstellungen</a></p>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin">
 <a href="game.php?page=buddyList" rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Buddylist"><i class="fa fa-users"></i>  Buddylist</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin">
<a href="game.php?page=ticket"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Support"><i class="fa fa-support"></i>  Support</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin"><a href="game.php?page=banList"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Pranger"><i class="fa fa-lock"></i>  Pranger</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin">
 <a href="game.php?page=battleHall"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Hall of Fame"><i class="fa fa-trophy "></i>  Hall of Fame</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin">
<a href="game.php?page=chat"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Chat"><i class="fa fa-weixin"></i>  Chat</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin"><a href="game.php?page=battleSimulator"  rel="tooltip" data-html="true" data-placement="bottom" data-original-title="Kampfsimulator"><i class="fa fa-bomb"></i>  Kampfsimulator</a>
                                                                        </div>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li>
                                                                        <div class="padding-5">
                                                                                <p class="txt-color-darken font-sm no-margin">
<a href="game.php?page=rules"  style="font-size:11px;" rel="tooltip" data-html="true" onclick="return Dialog.open(this.href, 1000, 500);" data-placement="bottom" data-original-title="Rules">  Rules</a>
                                                                        </div>
                                                                </li>
                                                        </ul>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>

                <!-- END PAGE FOOTER -->
</div>


<div class="clear"></div>
<div id="footer">
        {if $ga_active}
        <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '{$ga_key}']);
        _gaq.push(['_trackPageview']);

        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
        </script>
        {/if}
        {if $debug == 1}
        <script type="text/javascript">
        onerror = handleErr;
        </script>
        {/if}
</div>



                <!-- IMPORTANT: APP CONFIG -->
                <script src="styles/js/app.config.js"></script>

                <!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
                <script src="styles/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

                <!-- BOOTSTRAP JS -->
                <script src="styles/js/bootstrap/bootstrap.min.js"></script>

                <!-- CUSTOM NOTIFICATION -->
                <script src="styles/js/notification/SmartNotification.min.js"></script>

                <!-- JARVIS WIDGETS -->
                <script src="styles/js/smartwidgets/jarvis.widget.min.js"></script>

                <!-- EASY PIE CHARTS -->
                <script src="styles/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

                <!-- SPARKLINES -->
                <script src="styles/js/plugin/sparkline/jquery.sparkline.min.js"></script>

                <!-- JQUERY VALIDATE -->
                <script src="styles/js/plugin/jquery-validate/jquery.validate.min.js"></script>

                <!-- JQUERY MASKED INPUT -->
                <script src="styles/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

                <!-- JQUERY SELECT2 INPUT -->
                <script src="styles/js/plugin/select2/select2.min.js"></script>

                <!-- JQUERY UI + Bootstrap Slider -->
                <script src="styles/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

                <!-- browser msie issue fix -->
                <script src="styles/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

                <!-- FastClick: For mobile devices -->
                <script src="styles/js/plugin/fastclick/fastclick.min.js"></script>

                <!--[if IE 8]>

                <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

                <![endif]-->


                <!-- MAIN APP JS FILE -->
                <script src="styles/js/app.min.js"></script>

                <!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
                <!-- Voice command : plugin -->

                <!-- SmartChat UI : plugin
                <script src="styles/js/smart-chat-ui/smart.chat.ui.min.js"></script>
                <script src="styles/js/smart-chat-ui/smart.chat.manager.min.js"></script>-->

                <!-- PAGE RELATED PLUGIN(S) -->

                <!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
                <script src="styles/js/plugin/flot/jquery.flot.cust.min.js"></script>
                <script src="styles/js/plugin/flot/jquery.flot.resize.min.js"></script>
                <script src="styles/js/plugin/flot/jquery.flot.time.min.js"></script>
                <script src="styles/js/plugin/flot/jquery.flot.tooltip.min.js"></script>

                <!-- Vector Maps Plugin: Vectormap engine, Vectormap language -->
                <script src="styles/js/plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
                <script src="styles/js/plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>

                <!-- Full Calendar -->
                <script src="styles/js/plugin/moment/moment.min.js"></script>
                <script src="styles/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>

                <script type="text/javascript" src="styles/js/plugin/datatables/jquery.dataTables.min.js"></script>
                <script type="text/javascript" src="styles/js/plugin/datatables/dataTables.colVis.min.js"></script>
                <script type="text/javascript" src="styles/js/plugin/datatables/dataTables.tableTools.min.js"></script>
                <script type="text/javascript" src="styles/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
                <script type="text/javascript" src="styles/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>
                <script type="text/javascript" src="//cdn.datatables.net/plug-ins/3cfcc339e89/sorting/formatted-numbers.js"></script>
                <script type="text/javascript" src="//cdn.datatables.net/plug-ins/3cfcc339e89/sorting/numeric-comma.js"></script>

                <script>
                        $(document).ready(function() {

                                // DO NOT REMOVE : GLOBAL FUNCTIONS!
                                pageSetUp();

                                /*
                                 * PAGE RELATED SCRIPTS
                                 */

                                $(".js-status-update a").click(function() {
                                        var selText = $(this).text();
                                        var $this = $(this);
                                        $this.parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
                                        $this.parents('.dropdown-menu').find('li').removeClass('active');
                                        $this.parent().addClass('active');
                                });


                                // (function ($) {
                                        $('.navbar-pie').each(function() {
                                                var image = $(this).data('image');
                                                $(this).find('canvas').css({
                                                        'background-color': 'black',
                                                        'background-image': 'url(styles/images/' + image + '.png)',
                                                        'border-radius': '100%',
                                                        'background-size': 'cover'
                                                });
                                        });
                                // })(jQuery);

                                function getUrlParameter(sParam)
                                {
                                        var sPageURL = window.location.search.substring(1);
                                        var sURLVariables = sPageURL.split('&');
                                        for (var i = 0; i < sURLVariables.length; i++)
                                        {
                                                var sParameterName = sURLVariables[i].split('=');
                                                if (sParameterName[0] == sParam)
                                                {
                                                        return sParameterName[1];
                                                }
                                        }
                                }
                                var page = getUrlParameter('page');
                                var link = $('a[href="game.php?page=' + page + '"]');
                                link.closest('li').attr('class', 'active');
                                link.closest('li').parent().closest('li').attr('class', 'active');


                                /* BASIC ;*/
                                var responsiveHelper_dt_basic = undefined;
                                var responsiveHelper_datatable_fixed_column = undefined;
                                var responsiveHelper_datatable_col_reorder = undefined;
                                var responsiveHelper_datatable_tabletools = undefined;

                                var breakpointDefinition = {
                                        tablet : 1024,
                                        phone : 480
                                };

                                {if isset($auctions_datatable_script)}

                                $('#auctions_table').dataTable({
                                        "order": [ 0, 'asc' ],
                                        "columnDefs": [
                                { "type": "formatted-num", targets: 1 },
                                { "type": "formatted-num", targets: 2 },
                                { "type": "formatted-num", targets: 4 }
                            ],
                                        "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>"+
                                                "t"+
                                                "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                                        "autoWidth" : true,
                                        "preDrawCallback" : function() {
                                                // Initialize the responsive datatables helper once.
                                                if (!responsiveHelper_dt_basic) {
                                                        responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#auctions_table'), breakpointDefinition);
                                                }
                                        },
                                        "rowCallback" : function(nRow) {
                                                responsiveHelper_dt_basic.createExpandIcon(nRow);
                                        },
                                        "drawCallback" : function(oSettings) {
                                                responsiveHelper_dt_basic.respond();
                                        }
                                });
                                {/if}

                                {if isset($who)}

                                $('#stats_dt').dataTable({
                                        "order": [ 0, 'asc' ],
                                        "columnDefs": [
                                { "type": "formatted-num", targets: 5 }
                                {if $who == 2}
                                                        ,{ "type": "formatted-num", targets: 3 }
                                                {/if}
                            ],
                                        "sDom": "<'dt-toolbar'<'col-xs-12 col-sm-6'f><'col-sm-6 col-xs-12 hidden-xs'l>r>"+
                                                "t"+
                                                "<'dt-toolbar-footer'<'col-sm-6 col-xs-12 hidden-xs'i><'col-xs-12 col-sm-6'p>>",
                                        "autoWidth" : true,
                                        "preDrawCallback" : function() {
                                                // Initialize the responsive datatables helper once.
                                                if (!responsiveHelper_dt_basic) {
                                                        responsiveHelper_dt_basic = new ResponsiveDatatablesHelper($('#stats_dt'), breakpointDefinition);
                                                }
                                        },
                                        "rowCallback" : function(nRow) {
                                                responsiveHelper_dt_basic.createExpandIcon(nRow);
                                        },
                                        "drawCallback" : function(oSettings) {
                                                responsiveHelper_dt_basic.respond();
                                        }
                                });

                                {/if}


                        /* END BASIC */

                        });

                </script>
                {block name="scripts"}{/block}

        {if !$vmode}
                <script type="text/javascript">
                var viewShortlyNumber        = {$shortlyNumber|json};
                var vacation                        = {$vmode};
        $(function() {
                {foreach $resourceTable as $resourceID => $resourceData}
                {if isset($resourceData.production)}
            resourceTicker({
                available: {$resourceData.current|json},
                limit: [0, {$resourceData.max|json}],
                production: {$resourceData.production|json},
                valueElem: "current_{$resourceData.name}"
            }, true);
                {/if}
                {/foreach}
        });
                </script>
        <script src="scripts/game/topnav.js"></script>
                {/if}
        </div>
        {if $closed}
        <div class="infobox">{$LNG.ov_closed}</div>
        {elseif $delete}
        <div class="infobox">{$delete}</div>
        {elseif $vacation}
        <div class="infobox">{$LNG.tn_vacation_mode} {$vacation}</div>
        {/if}

                <!-- {$PHPDebugBar->render()} -->
        </body>

</html>