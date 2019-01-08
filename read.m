x=imread('cat.jpg')  %读取图片
x=imresize(x,[32,32])%将图片调整为32*32像素
x=reshape(x,3072,1)%将得到的矩阵调整为符合神经网络工具箱的输入格式
x=double(x)%将数据类型调整为符合神经网络工具箱的输入类型
output=myNeuralNetworkFunction(x); %进行预测
output=round(output);%对结果进行四舍五入
label_names(output)