Bit = new Object({
	/* Sets the selected bit at the given index. */
	set: function(number, i){ return number | (1 << i); },

	/* Returns true iff the selected bit at the given index is 1. */
	isSet: function(number, i){ return number & (1 << i); },

	/* Clears the selected bit at the given index. */
	clear: function(number, i){ return number & ~(1 << i); },

	/* Toggles the selected bit at the given index. */
	toggle: function(number, i){ return number ^ (1 << i); },

	/* Returns the binary equivalent of the given number as a string */
	toBinary: function(n){
		if(n > 0) return n.toString(2);
		else {
			n = Math.abs(n);
			var res = n ^ parseInt((new Array(n.toString(2).length+1))
				.join("1"), 2);
			return (res+1).toString(2);
		}
	},

	/* Function that counts the number of set bits in the number */
	countSet: function(n){
		var count = 0;
		while(n){
			if(this.isSet(n, 0)) count++;
			n = n >> 1;
		}
		return count;
	}
});