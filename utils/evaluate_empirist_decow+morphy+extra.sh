#!/bin/bash

time ../bin/nlp4py-tagger --train tiger+decow+morphy+empirist+extra.model --prior tiger+decow+morphy.model --brown /data/Thomas/decow14_brown.txt --lexicon /data/Thomas/morphy_wc.txt <(cat ~/Documents/Arbeit/nlp4py/data/empirist_gold_standard/train_all_sent_emo.txt additional_training.txt)
../bin/nlp4py-tagger --evaluate tiger+decow+morphy+empirist+extra.model ~/Documents/Arbeit/nlp4py/data/empirist_gold_standard/test_cmc_sent_emo.txt
../bin/nlp4py-tagger --evaluate tiger+decow+morphy+empirist+extra.model ~/Documents/Arbeit/nlp4py/data/empirist_gold_standard/test_web_sent_emo.txt
