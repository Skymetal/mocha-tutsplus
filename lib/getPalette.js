function getData(){
	return ["#FF0000", "#00FF00","#FF0000"];
}

module.exports= function (fetch){
	var palette = fetch ? fetch():getData();

	if(!Array.isArray(palette)) {
		throw new Error("Palette is not an array");
	}

	return palette;
};