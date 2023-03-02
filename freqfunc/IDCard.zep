namespace FreqFunc;

class IDCard {

    const POWERS18 = ["7","9","10","5","8","4","2","1","6","3","7","9","10","5","8","4","2"];
    const PARITYBIT = ["1","0","X","9","8","7","6","5","4","3","2"];
    
    public static function validate(string no) {
        let len = strlen(no);
	if len != 15 && len != 18 {
	    throw new \Exception("身份证号长度不正确");
	}

	if len === 15 {
	    
	}
    }

    private static function validate18(string no) {
       let _num = substr(no, 0, 17);
       let _bit = substr(no, 17);
       let _power = 0;
       let arr = str_split(_num);
       let isValid = true;
    }

}
