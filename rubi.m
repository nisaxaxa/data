% v1=1:20;
% v11=[8 4 1 7 2 3 5 6 9:20];
% v12=[20 2 3 9 5:7 1 16 4 11:14 8 10 17:19 15];
% v13=[1:5 8 10 15 9 14 7 12 6 11 13 16:20];
% v14=[1:2 6 4 11 13 7:10 17 5 18 14:16 12 3 19:20];
% v15=[1:12 15 16 20 19 14 13 17 18];
% v16=[20 9 1 4:8 19 10:11 2 13:17 3 12 18];
% p=[1:8 18 10 16 15 13 14 12 11 17 12 20 19];
% r6=zeros(20);
% ind=find(v1==v16);
% for i=1:length(ind)
% r6(ind(i),ind(i))=1;
% end
% ind=find(v1~=v16);
% for i=1:length(ind)
% r6(ind(i),v16(ind(i)))=1;
% end


p1=r1*r2*r3*r4*r5*r6;
p=p1;

tr=trace(p1);
m=1;
while tr~=20
    t1=trace(p1*r1);
    t2=trace(p1*r2);
    t3=trace(p1*r3);
    t4=trace(p1*r4);
    t5=trace(p1*r5);
    t6=trace(p1*r6);
    t7=trace(p1*r1^2);
    t8=trace(p1*r2^2);
    t9=trace(p1*r3^2);
    t10=trace(p1*r4^2);
    t11=trace(p1*r5^2);
    t12=trace(p1*r6^2);
    t13=trace(p1*r1^3);
    t14=trace(p1*r2^3);
    t15=trace(p1*r3^3);
    t16=trace(p1*r4^3);
    t17=trace(p1*r5^3);
    t18=trace(p1*r6^3);
    ar(:,:,1)=p1*r1;
    ar(:,:,2)=p1*r2;
    ar(:,:,3)=p1*r3;
    ar(:,:,4)=p1*r4;
    ar(:,:,5)=p1*r5;
    ar(:,:,6)=p1*r6;
    ar(:,:,7)=p1*r1^2;
    ar(:,:,8)=p1*r2^2;
    ar(:,:,9)=p1*r3^2;
    ar(:,:,10)=p1*r4^2;
    ar(:,:,11)=p1*r5^2;
    ar(:,:,12)=p1*r6^2;
    ar(:,:,13)=p1*r1^3;
    ar(:,:,14)=p1*r2^3;
    ar(:,:,15)=p1*r3^3;
    ar(:,:,16)=p1*r4^3;
    ar(:,:,17)=p1*r5^3;
    ar(:,:,18)=p1*r6^3;
    trc=([t1 t2 t3 4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18]);
%     trc=([t1 t2 t3 t4 t5 t6]);
    
    if length(find(trc==max(trc))) >1
        in=randi(length(find(trc==max(trc))));
        idx=find(trc==max(trc));
        in=idx(in);
    else
        in=find(trc==max(trc));
    end
    tr=max(trc);
    p1=ar(:,:,in);
    arr(m)=in;
    m=m+1;
end