x=imread('cat.jpg')  %��ȡͼƬ
x=imresize(x,[32,32])%��ͼƬ����Ϊ32*32����
x=reshape(x,3072,1)%���õ��ľ������Ϊ���������繤����������ʽ
x=double(x)%���������͵���Ϊ���������繤�������������
output=myNeuralNetworkFunction(x); %����Ԥ��
output=round(output);%�Խ��������������
label_names(output)