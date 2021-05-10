package All_patterns;


/**
 * This class declares a Visit operation for each class of ConcreteElement in the
 * object structure. The operation's name and signature identifies the class that
 * sends the Visit request to the visitor. That lets the visitor determine the
 * concrete class of the element being visited. Then the visitor can access the
 * element directly through its particular interface.
 * @author STM
 * @version 1.0
 * @created 03-май-2020 0:40:51
 */
public abstract class Visitor {

	public Visitor(){

	}

	public void finalize() throws Throwable {

	}

	/**
	 * 
	 * @param a
	 */
	public abstract VisitConcreteElementA(ConcreteElementA a);

	/**
	 * 
	 * @param b
	 */
	public abstract VisitConcreteElementB(ConcreteElementB b);

}