ALTER AUTHORIZATION ON database::InstructionSystem TO sa

create database InstructionSystem;

use InstructionSystem;

create table HierarchicalStructure (
	hs_id char(5) not null  primary key,
	hs_ename varchar(50),
	hs_cname varchar(50),
	hs_intro varchar(255)
);

create table PhysicalPosition (
	pp_id char(5) not null  primary key,
	pp_ename varchar(50),
	pp_cname varchar(50),
	pp_intro varchar(255)
);

create table InstructionLenth (
	il_id char(5) not null  primary key,
	il_ename varchar(50),
	il_cname varchar(50),
	il_intro varchar(255)
);

create table NumberOperands (
	no_id char(5) not null primary key,
	no_ename varchar(50),
	no_cname varchar(50),
	no_intro varchar(255)
);

create table CommandFunction (
	cf_id char(5) not null primary key,
	cf_ename varchar(100),
	cf_cname varchar(100),
	cf_intro varchar(255)
);

create table InstructionKind (
	ik_id char(5) not null primary key,
	hs_id char(5) not null references HierarchicalStructure(hs_id),
	pp_id char(5) not null references PhysicalPosition(pp_id),
	il_id char(5) not null references InstructionLenth(il_id),
	no_id char(5) not null references NumberOperands(no_id),
	cf_id char(5) not null references CommandFunction(cf_id)
);


insert into HierarchicalStructure values ('HS01', 'Machine Instructions', '����ָ��', '��CPU��ֱ��ʶ��ִ�е�ָ����ı�����ʽ�Ƕ����Ʊ��롣����ָ��ͨ���ɲ�����Ͳ�������������ɣ�������ָ����ָ����Ҫ��ɵĲ�������ָ��Ĺ��ܣ�������ָ����������Ķ����Լ�����������ŵ�λ�õȡ�'),
															('HS02', 'Micro Instruction', '΢ָ��', '�ڻ�����һ��CPU�����У�һ��ʵ��һ���������ܵ�΢�������ϣ�����΢��������䡣΢������ָ���Ʋ���ͨ����������ִ�в����������ֿ����������΢ָ���������ܿص�·�Ĳ������ , ��֧΢ָ�����������Ƶ�·�ķ�֧��䡣'),
															('HS03', 'Macro', '��ָ��', '������������ָ����ɵ����ָ��������������ĳ���ܵ�һ��Դ�����ڱ�дC/C++����ʱ��������#defineָ������һ����ʽ��#define���滻���ַ���������ֵ����һ���ڳ�����ʹ�ã�����ʱ���Զ�����������ַ���������ֵ����������');

select * from HierarchicalStructure;


insert into PhysicalPosition values ('PP01', 'Memory - Memory (SS) type instructions', '�洢��-�洢����SS����', '������������ݶ������ڴ������ִ������ָ����Ҫ��η����ڴ档'),
													('PP02', 'Register Register (RR) type instructions', '�Ĵ���-�Ĵ�����RR����', '��Ҫ�Ը�ͨ�üĴ�����ר�üĴ������ӼĴ�����ȡ���������Ѳ�������ŵ���һ�Ĵ����С�'),
													('PP03', 'Register Memory (RS) type instructions', '�Ĵ���-�洢����RS����', '��Ҫ�����ڴ浥Ԫ����Ҫ���ʼĴ���')

select * from PhysicalPosition;


insert into InstructionLenth values ('IL01', 'Fixed length Instruction', '����ָ��', 'ָ��ϵͳ������ָ��ĳ��ȶ����'),
													('IL02', 'Variable-length Instruction', '�䳤ָ��', 'ָ��ϵͳ�и���ָ��ĳ��Ȳ���')

select * from InstructionLenth;


insert into NumberOperands values ('NO01', 'Four-address', '�ĵ�ַ', 'Ҫʹȷ���Ļ���ָ�����п��Ƽ�����Զ������ؽ���Ԥ������Ϣ����һ������ָ�������2���������ĵ�ַ(����������������Ҫ��2��������)�⣬��Ҫһ���������������ĵ�ַ��һ��ȡ����ָ��ĵ�ַ������ǰ3���Ǵ�ȡ�������ĵ�ַ����һ����ȡָ��ĵ�ַ��'),
														('NO02', 'Three-address', '����ַ', '��Ҫ��������������ִ�в�����ָ�����ͣ�����ÿ����������������������,��ÿ��ָ�����������������'),
														('NO03', 'Two-address', '����ַ', '��Ҫ��������������ִ�в�����ָ�����ͣ�����ַָ���ǻ���ָ���һ�ָ�ʽ������һ���������������ַ�ֶΡ�һ����ַ�ֶ���ͨ�õ�,������Ŀ���Դ,������ַ�ֶ�����Դ��'),
														('NO04', 'Single-address', '����ַ', 'ֻ��һ����������ַ��ָ�'),
														('NO05', 'Zero-address', '���ַ', '�ǻ���ָ���һ�֣���ָ��ϵͳ�е�һ�ֲ����ַ�ֶε�ָ�ֻ�в����룬û�в�������')

select * from NumberOperands;


insert into CommandFunction values ('CF01',  'Arithmetic and logical operation instructions', '�������߼�����ָ��', 'ÿ̨�������������е�ָ���ͨ�������ڼ��������������������ɶ�һ���������ݵ�����������߼����㹦�ܡ�'),
														('CF02', 'Shift operation instructions', '��λ������ָ��', '����������λ���߼���λ��ѭ����λ���֣����ڰ�ָ����һ�����������ƻ�����һ���ࣩλ��'),
														('CF03', 'Data transfer instructions', '���ݴ�����ָ��', '����ʵ��ͨ�üĴ���֮�䡢ͨ�üĴ������ڴ洢���洢��Ԫ֮�䡢�ڴ洢����ͬ�洢��Ԫ֮�䡢��ͨ�ô�������Χ�豸���ӿڣ�֮�䣨��Щ����Ҳ���Ե�������Ϊ����/���ָ������ݴ��͹��ܡ�'),
														('CF04', 'Transfer class instructions, subroutine calls, return instructions', 'ת����ָ��ӳ�������뷵��ָ��', '���ڽ���䶯������ָ��ִ�д��������'),
														('CF05', 'Privileged Instruction', '��Ȩָ��', 'ָ�����ڲ���ϵͳ������ϵͳ�����ָ�Ϊȷ��ϵͳ�����ݰ�ȫ�������һ��ָ��ṩ���û�ʹ�á�'),
														('CF06', 'Other Instructions', '����ָ��', '�綯̬ͣ��ָ��ղ���ָ���������ָ����ж�ָ����ж�ָ���ջ����ָ��ȣ��������ĳЩ�ض��Ĵ����ܡ�')

select * from CommandFunction;


insert into InstructionKind values ('ik01', 'HS01', 'PP01', 'IL01', 'NO01', 'CF01'),
													('ik02', 'HS02', 'PP02', 'IL02', 'NO02', 'CF02'),
													('ik03', 'HS03', 'PP03', 'IL01', 'NO03', 'CF03'),
													('ik04', 'HS01', 'PP01', 'IL02', 'NO04', 'CF04'),
													('ik05', 'HS02', 'PP02', 'IL01', 'NO05', 'CF05')


select cf.*, hs.*, ik.*
from CommandFunction cf, InstructionKind ik, HierarchicalStructure hs
where cf.cf_id = ik.cf_id and hs.hs_id = ik.hs_id;