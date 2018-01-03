        <!-- Jumbotron -->
        <div class="jumbotron rounded">
          <h3>Bookmark ClicksPicks.com and Return Often!</h3>
          <p class="lead"><?= $marketing ?></p>
          <p><a class="btn btn-sm btn-success" href="#" role="button">Add Your Favourite Sites</a></p>
        </div>

        <!-- Example row of columns -->
        <div id="main_content" class="row" style="margin-bottom:1em;">
          <div class="col-lg-2 text-md-center">
            <h2>Heading</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
            <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
          </div>
          <div class="col-lg-8">
            <h2>Heading</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Rank</th>
                        <th>Website</th>
                        <th class="text-right">Clicks</th>
                        <th class="text-md-center"><img src="<?= base_url("assets/images/comments.gif") ?>" border="0" title="comments" alt="comment" /></th>
                        <th class="text-md-center"><img src="<?= base_url("assets/images/yes.gif") ?>" border="0" title="comments" alt="comment" /></th>
                        <th class="text-md-center"><img src="<?= base_url("assets/images/no.gif") ?>" border="0" title="comments" alt="comment" /></th>
                    </tr>
                </thead>
                <tbody>
                    
                    <?php
                    $rank = 1;
                    foreach( $picks as $pick ){
                        echo '<tr>';
                        echo '<td>' . $rank . '</td>';
                        echo '<td><a href="' . $pick['url'] . '" target="_blank">' . $pick['title'] . '</a></td>';
                        echo '<td class="text-right">' . $pick['clicks'] . '</td>';
                        echo '<td class="text-md-center">' . $pick['comments'] . '</td>';
                        echo '<td class="text-md-center">' . $pick['positive'] . '</td>';
                        echo '<td class="text-md-center">' . $pick['negative'] . '</td>';                        
                        echo '</tr>';
                        
                        $rank++;
                    }
                    ?>
                    
                </tbody>
            </table>
          </div>
          <div class="col-lg-2 text-md-center">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>
            <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
          </div>
        </div>

