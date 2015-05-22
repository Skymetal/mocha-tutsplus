function getData(){
	//return ["#FF0000", "#00FF00","#FF0000"]; 
	return "hello";
}

module.exports= function (){
	var palette = getData();

	if(!Array.isArray(palette)) {
		throw new Error("Palette is not an array");
	}

	return palette;
};