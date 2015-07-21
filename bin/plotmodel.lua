#!/usr/bin/env th

require 'nn'
require 'nngraph'
require 'util.OneHot'

RNN = require 'model.RNN'
LSTM = require 'model.LSTM'

-- model_type = 'RNN'
-- model_file = 'rnn-1-layer'
-- model = RNN.rnn(10, 5, 1) 
-- model_file = 'rnn-2-layer'
-- model = RNN.rnn(10, 5, 2) 

model_type = 'LSTM (input_size=10, nhidden=5, nlayers=1, dropout=0.5)'
model_file = 'lstm-1-layer'
model = LSTM.lstm(10, 5, 1, 0.5)

graph.dot(model.fg, model_type, model_file)
cmd = 'dot -Tpng ' .. model_file .. '.dot' .. ' -o ' .. model_file .. '.png'
os.execute(cmd)
