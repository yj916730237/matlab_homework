clc
clear all
word_count=0
char_count=0
line_count=0    %������(��������)
blank_line_count=0     %������
doc=fopen('test.txt');
over=1
while over   %�ж��Ƿ��ȡ���ı���0Ϊ��ȡ��
tline = fgets(doc);   %���ж�ȡ
line_count=line_count+1
if length(tline)<=2
    blank_line_count=blank_line_count+1
end
if ischar(tline(end))
    over=1
else
    over=0

     
end


%ͳ���ַ���������������
for i=1:length(tline)
    if isstrprop(tline(i),'alphanum')   
        char_count=char_count+1
    end
end
%ͳ�Ƶ��ʸ���
if ischar(tline)
    word = regexp(tline,'\s', 'split')  
    word_count = word_count+length(word)-2
end
end


line_count=line_count-1
disp('������Ϊ��')
disp(line_count)
disp('������Ϊ��')
disp(blank_line_count)
disp('���ʸ���Ϊ��')
disp(word_count)
disp('�ַ�����Ϊ�������������ţ���')
disp(char_count)
