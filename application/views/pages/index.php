        <!-- Jumbotron -->
        <div class="jumbotron rounded">
          <h3>Bookmark ClicksPicks.com and Return Often!</h3>
          <p class="lead"><?= $marketing ?></p>
          <p><button type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#enterPick">Add Your Favourite Sites</button></p>
        </div>

        <!-- main content area -->
        <div id="main_content" class="row" style="margin-bottom:1em;">
            <div class="col-lg-2 text-md-center">
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-lg-8 text-md-center">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Rank</th>
                            <th class="text-left">Website</th>
                            <th class="text-right">Clicks</th>
                            <th class="text-md-center"><i class="fas fa-comment-alt" style="font-size:2em;color:yellow;" title="comments" alt="comments"></i></th>
                            <th class="text-md-center"><i class="fas fa-check-circle" style="font-size:2em;color:chartreuse;" title="approvals" alt="approvals"></i></th>
                            <th class="text-md-center"><i class="fas fa-times-circle" style="font-size:2em;color:red;" title="disapprovals" alt="disapprovals"></i></th>
                            <th class="text-md-center"><i class="fas fa-info-circle" style="font-size:2em;color:skyblue;" title="information" alt="information"></i></th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <?php
                    $rank = 1;
                    foreach( $picks as $pick ){
                        echo '<tr>';
                        echo '<td>' . $rank . '</td>';
                        echo '<td class="text-left"><a href="' . $pick['url'] . '" target="_blank" title="goto this website" alt="goto this website">' . $pick['title'] . '</a></td>';
                        echo '<td class="text-right">' . $pick['clicks'] . '</td>';
                        echo '<td class="text-md-center"><a href="#" data-toggle="modal" data-target="#enterComment" title="view or submit your own comments" alt="view or submit your own comments">' . $pick['comments'] . '</a></td>';
                        echo '<td class="text-md-center">' . $pick['positive'] . '</td>';
                        echo '<td class="text-md-center">' . $pick['negative'] . '</td>';                        
                        echo '<td class="text-md-center"><a href="#" data-toggle="modal" data-target="#viewInfo" title="view information about this site" alt="view information about this site"><i>info</i></a></td>';
                        echo '</tr>';
                        
                        $rank++;
                    }
                    ?>
                    
                    </tbody>
                </table>
            </div>
            <div class="col-lg-2 text-md-center">
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
                <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
            </div>
        </div>
        
        <!-- modal dialog for entering favourite pick  -->
        <div id="enterPick" class="modal" tabindex="-1" role="dialog" aria-labelledby="enterPickLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="model-content rounded"  style="background-color:lightgrey;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="enterPickLabel">Enter Your Favourite Site</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Picks post modal
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- modal dialog for entering comments  -->
        <div id="enterComment" class="modal" tabindex="-1" role="dialog" aria-labelledby="enterCommentLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="model-content rounded"  style="background-color:lightgrey;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="enterCommentLabel">Enter Comments</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Comments post modal
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>
                </div>
            </div>
        </div>        
        
        <!-- modal dialog for viewing information  -->
        <div id="viewInfo" class="modal" tabindex="-1" role="dialog" aria-labelledby="viewInfoLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="model-content rounded"  style="background-color:lightgrey;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="viewInfoLabel">View Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Information modal
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>
                </div>
            </div>
        </div>                