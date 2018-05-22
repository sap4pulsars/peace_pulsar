# peace_pulsar

Docker for PEACE, an algorithm for Pulsar search classification 

PEACE: Pulsar Evaluation Algorithm for Candidate Extraction 

Originally developed by K J Lee.

Paper link : https://arxiv.org/abs/1305.0447

Code link : https://sourceforge.net/p/pulsareace/code/ci/master/tree/


Please execute the following commands:

1) docker run -i /home/psr/software/pulsareace-code/bin/autos2.exe -f [filename] (files need to )

This generates a .qual file with multiple scores. The last score generated is the overall score.

2) python  /home/psr/software/pulsareace-code/score.py 

This prints the final score to stdout
