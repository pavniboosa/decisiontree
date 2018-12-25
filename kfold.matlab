[attribute,class,totalmat]=xlsread("Published/HW2-Synth-Data (1).xls")
a1=attribute(:,1:2)
class
c=totalmat(:,3)
c1=cell2mat(c) 
tree=fitctree(a1,c1)
cv=crossval(tree,'Kfold',5)
view(tree,'Mode','graph')
cv.Trained
view(cv.Trained{1},'Mode','graph')
view(cv.Trained{2},'Mode','graph')
view(cv.Trained{3},'Mode','graph')
view(cv.Trained{4},'Mode','graph')
view(cv.Trained{5},'Mode','graph')