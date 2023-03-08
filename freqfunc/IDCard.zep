namespace FreqFunc;

class IDCard {

    protected static powers = ["7","9","10","5","8","4","2","1","6","3","7","9","10","5","8","4","2"];
    protected static paritybit = ["1","0","X","9","8","7","6","5","4","3","2"];
    
    public static function validate(string no) -> boolean {
        var len;
        let len = strlen(no);
	if len != 15 && len != 18 {
	    throw new \Exception("身份证号长度不正确");
	}

	if len === 15 {
	   return self::validate15(no); 
	}

	return self::validate18(no);
    }

    private static function validate18(string no) -> boolean {
       var _num,_bit,power,arr,isValid,mode, idx, item;

       let _num = substr(no, 0, 17);
       let _bit = substr(no, 17);
       let power = 0;
       let arr = str_split(_num);
       let isValid = true;

       for idx,item in arr {
           if !is_numeric(item)  {
	       let isValid = false;
	       break;
	   }

           let power = power + item * self::powers[idx];
       }
       if !isValid {
           return isValid;
       }

       let mode = power % 11;

       return self::paritybit[mode] === _bit;
    }

    private static function validate15(string no) -> boolean {
        var isValid, nums, year, mon, day, item;
	let isValid = true,
	    nums = str_split(no);

	for item in nums {
	    if !is_numeric(item) {
                let isValid = false;
		break;
	    }
	}

	if !isValid {
	    return isValid;
	}
        
	let year = substr(no, 6, 2),
	    mon = substr(no, 8, 2),
	    day = substr(no, 10, 2);
	
	if year < 1 || year > 99 || mon < 1 || mon > 12 || day < 1 || day > 31 {
            return false;
	}

	return true;

    }

    public static function getBirth(string no) -> unsigned long {
        var len;

	let len = strlen(no);

        if len === 15 {
	}

	if len === 18 {
	}
	throw new \Exception("身份证号必须是15位或者18位");
}
