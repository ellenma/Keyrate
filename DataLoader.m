function [Qu, Qv, Eu, Ev] = DataLoader(filename)

synRecordNum = dlmread(filename,'\t','A1..A1');

signalCounts = dlmread(filename,'\t','A2..E5');

decoyCounts = dlmread(filename,'\t','A6..E9');

[Qu, Eu] = QECalculator(synRecordNum, signalCounts)

[Qv, Ev] = QECalculator(synRecordNum, decoyCounts)



