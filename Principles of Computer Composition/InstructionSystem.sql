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


insert into HierarchicalStructure values ('HS01', 'Machine Instructions', '机器指令', '是CPU能直接识别并执行的指令，它的表现形式是二进制编码。机器指令通常由操作码和操作数两部分组成，操作码指出该指令所要完成的操作，即指令的功能，操作数指出参与运算的对象，以及运算结果所存放的位置等。'),
															('HS02', 'Micro Instruction', '微指令', '在机器的一个CPU周期中，一组实现一定操作功能的微命令的组合，描述微操作的语句。微命令是指控制部件通过控制线向执行部件发出各种控制命令。操作微指令是描述受控电路的操作语句 , 分支微指令是描述控制电路的分支语句。'),
															('HS03', 'Macro', '宏指令', '是若干条机器指令组成的软件指令，属于软件，代表某功能的一段源程序。在编写C/C++程序时，经常用#define指令，定义的一般形式是#define宏替换名字符串（或数值）。一旦在程序中使用，编译时会自动用所定义的字符串（或数值）代替它。');

select * from HierarchicalStructure;


insert into PhysicalPosition values ('PP01', 'Memory - Memory (SS) type instructions', '存储器-存储器（SS）型', '参与操作的数据都放在内存里，机器执行这种指令需要多次访问内存。'),
													('PP02', 'Register Register (RR) type instructions', '寄存器-寄存器（RR）型', '需要对各通用寄存器或专用寄存器，从寄存器中取操作数，把操作结果放到另一寄存器中。'),
													('PP03', 'Register Memory (RS) type instructions', '寄存器-存储器（RS）型', '既要访问内存单元，又要访问寄存器')

select * from PhysicalPosition;


insert into InstructionLenth values ('IL01', 'Fixed length Instruction', '定长指令', '指令系统中所有指令的长度都相等'),
													('IL02', 'Variable-length Instruction', '变长指令', '指令系统中各种指令的长度不等')

select * from InstructionLenth;


insert into NumberOperands values ('NO01', 'Four-address', '四地址', '要使确定的机器指令序列控制计算机自动连续地进行预定的信息处理，一条机器指令除包含2个操作数的地址(大多数算术运算操作要求2个操作数)外，还要一个存运算操作结果的地址及一个取下条指令的地址。其中前3个是存取操作数的地址，后一个是取指令的地址。'),
														('NO02', 'Three-address', '三地址', '需要至少三个操作数执行操作的指令类型，由于每个陈述都包含了三个变量,即每条指令最多有三个操作数'),
														('NO03', 'Two-address', '二地址', '需要至少两个操作数执行操作的指令类型，二地址指令是机器指令的一种格式。它有一个操作码和两个地址字段。一个地址字段是通用的,可用于目标或源,其他地址字段用于源。'),
														('NO04', 'Single-address', '单地址', '只有一个操作数地址的指令。'),
														('NO05', 'Zero-address', '零地址', '是机器指令的一种，是指令系统中的一种不设地址字段的指令，只有操作码，没有操作数。')

select * from NumberOperands;


insert into CommandFunction values ('CF01',  'Arithmetic and logical operation instructions', '算术与逻辑运算指令', '每台计算机都必须具有的指令，它通常用于在计算机的运算器部件中完成对一或两个数据的算术运算或逻辑运算功能。'),
														('CF02', 'Shift operation instructions', '移位操作类指令', '包括算术移位、逻辑移位、循环移位三种，用于把指定的一个操作数左移或右移一（多）位。'),
														('CF03', 'Data transfer instructions', '数据传送类指令', '用于实现通用寄存器之间、通用寄存器与内存储器存储单元之间、内存储器不同存储单元之间、寄通用存器与外围设备（接口）之间（有些场合也可以单独划分为输入/输出指令）的数据传送功能。'),
														('CF04', 'Transfer class instructions, subroutine calls, return instructions', '转移类指令、子程序调用与返回指令', '用于解决变动程序中指令执行次序的需求。'),
														('CF05', 'Privileged Instruction', '特权指令', '指仅用于操作系统或其它系统软件的指令，为确保系统与数据安全起见，这一类指令不提供给用户使用。'),
														('CF06', 'Other Instructions', '其他指令', '如动态停机指令、空操作指令、置条件码指令、开中断指令、关中断指令、堆栈操作指令等，用于完成某些特定的处理功能。')

select * from CommandFunction;


insert into InstructionKind values ('ik01', 'HS01', 'PP01', 'IL01', 'NO01', 'CF01'),
													('ik02', 'HS02', 'PP02', 'IL02', 'NO02', 'CF02'),
													('ik03', 'HS03', 'PP03', 'IL01', 'NO03', 'CF03'),
													('ik04', 'HS01', 'PP01', 'IL02', 'NO04', 'CF04'),
													('ik05', 'HS02', 'PP02', 'IL01', 'NO05', 'CF05')


select cf.*, hs.*, ik.*
from CommandFunction cf, InstructionKind ik, HierarchicalStructure hs
where cf.cf_id = ik.cf_id and hs.hs_id = ik.hs_id;