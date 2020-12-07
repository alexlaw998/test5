function draw3()
pause(2);
hold on;
axis([0 120 0 120]);
grid;
A=[60,70];%������ʼ����
B=[0,0];%�˵���ʼ����
k=0;
vg=10;%�����ٶ�
vr=8;%�˵��ٶ�
dt=0.1;

while k<600
    k=k+1;
    plot(A(1),A(2),'r.','markersize',10);
    plot(B(1),B(2),'b.','markersize',10);
    e1=B-A;d=norm(e1);
 
    if d<0.2
        break;
    end
    e1=e1/d;
    A=A+vg*dt*e1;
    B(1)=B(1)+vr*dt;
    pause(0.05);
        
end
    
