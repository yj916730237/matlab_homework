clc
clear all
word_count=0
char_count=0
line_count=0    %总行数(包括空行)
blank_line_count=0     %空行数
doc=fopen('test.txt');
over=1
while over   %判断是否读取完文本，0为读取完
tline = fgets(doc);   %按行读取
line_count=line_count+1
if length(tline)<=2
    blank_line_count=blank_line_count+1
end
if ischar(tline(end))
    over=1
else
    over=0

     
end


%统计字符，不包括标点符号
for i=1:length(tline)
    if isstrprop(tline(i),'alphanum')   
        char_count=char_count+1
    end
end
%统计单词个数
if ischar(tline)
    word = regexp(tline,'\s', 'split')  
    word_count = word_count+length(word)-2
end
end


line_count=line_count-1
disp('总行数为：')
disp(line_count)
disp('空行数为：')
disp(blank_line_count)
disp('单词个数为：')
disp(word_count)
disp('字符个数为（不包括标点符号）：')
disp(char_count)
