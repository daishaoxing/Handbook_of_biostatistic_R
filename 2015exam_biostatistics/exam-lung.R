a <- read.table("lung_cancer.txt",header = T)
#��������hospitalת����factor
a$hospital <- factor(a$hospital)
#anova�����Ƿ��������Բ���
b <-aov(exp_A~hospital,data=a)
#�鿴����
summary(b)
#p adj����p-value,������������֮�����������
TukeyHSD(b)
#��ȡһ��ҽԺ�����ݣ����ַ���
alpha <- a[a$hospital==1,]
alpha1 <- subset(a,hospital==1)
#logistic��������ع�ģ��
fit <- glm(status~exp_A,data=a,family = binomial())
summary(fit)
#���������Ϻ��������ϵ��
coef(fit)
#odds=e^(-1.8693509+0.0294x)