$(function(){

  //Configuration
  $container = $('#container');

  //Functions
  function run(numRows,numColumns){
    var string='';
    var numCubes = numRows * numColumns;
    $container.html(function(){
      for(var i=0; i<(numCubes);i++){
          string += '<div class="pixel"></div>';
          
        };
        return string;
    });
    $container.css({'width':numColumns*32,'height':numRows*32});

    $container.find('div').mouseenter(function(){
      $opac = +$(this).css('opacity');
      if($opac <= 0.9){
        $opac += .1
        $(this).css('opacity',$opac);
      }
    });
  };

  // Main Code

  run(16,16);

  $('button').click(function(event) {
    event.preventDefault();
    $input = $(this).closest('#input');
    run($input.find('#rows').val(),$input.find('#columns').val());

  });

});
