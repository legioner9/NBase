/// <summary>
/// This class (a) defines abstract primitive operations that concrete subclasses
/// define to implement steps of an algorithm, and (b) implements a template method
/// defining the skeleton of an algorithm.
/// </summary>
function AbstractClass(manager, instanceName) {

	this.PrimitiveOperation1 = function(){

	};

	this.PrimitiveOperation2 = function(){

	};

	this.TemplateMethod = function(){

		//...
		//PrimitiveOperation1()
		//...
		//PrimitiveOperation2()
		//...


	};

}//end AbstractClass

