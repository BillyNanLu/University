<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        class Student {
            // 学生信息属性列表
            public $sName;
            public $sSex;
            private $sID;
            private $sCollage;
            protected $sMajor;
            
            // 构造函数
            public function __construct($id, $major) {
                $this->sID = strtoupper($id);
                $this->sMajor = $major;
                $this->sCollage = $this->getCollage();
            }
        
            // 解析学院方法
            private function getCollage() {
                $collageCode = substr($this->sID, 0, 1);
                switch ($collageCode) {
                    case 'A':
                        return "金融学院";
                        break;
                    case 'B':
                        return "法学院";
                        break;
                    case 'C':
                        return "信息管理与工程学院";
                        break;
                    case 'D':
                        return "统计与管理学院";
                        break;
                }
            }
            
            // 输出学生信息的公有方法
            public function printlnfo() {
                echo "学号: ".$this->sID,"<br>";
                echo "姓名: ".$this->sName,"<br>";
                echo "性别: ".$this->sSex,"<br>";
                echo "学院: ".$this->sCollage,"<br>";
                echo "专业: ".$this->sMajor,"<br>";
            }
            
            // 析构函数
            function __destruct() {
                echo "<hr>";
            }
         }
    ?>
    
    <?php 
        $stu1 = new Student("C21C5001", "MySQL数据库");
        $stu1->sName="佳文";
        $stu1->sSex="女";
        $stu1->printlnfo();
        $stu1=NULL;
        
        $stu2 = new Student("A21C2501", "投资与税收");
        $stu2->sName="静怡";
        $stu2->sSex="女";
        $stu2->printlnfo();
    ?>
</body>
</html>





