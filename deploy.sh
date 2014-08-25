  # These are deploy lines, reserch them! 

  s3cmd put --recursive source/*  s3://productscience.co.uk

  s3cmd setacl --recursive -P s3://productscience.co.uk/