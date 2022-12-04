%% BP网络训练
%网络参数设置
net.trainParam.epochs=100;
net.trainParam.lr=0.1;
net.trainParam.goal=0.00001;

net.divideParam.trainRatio = 75/100;   %默认训练集占比
net.divideParam.valRatio = 15/100;      %默认验证集占比
net.divideParam.testRatio = 15/100;     %默认测试集占比

%网络训练
[net,per2]=train(net,inputn,outputn);