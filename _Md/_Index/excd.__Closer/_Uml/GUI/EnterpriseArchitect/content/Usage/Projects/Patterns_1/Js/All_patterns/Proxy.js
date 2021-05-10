/// <summary>
/// This class (a) maintains a reference that lets the proxy access the real
/// subject, (b) provides an interface identical to Subject's so that a proxy can
/// be substituted for the real subject, and (c) controls access to the real
/// subject and may be responsible for creating and deleting it.
/// </summary>
function Proxy(manager, instanceName) {

	;
	this.m_RealSubject=null;

	this.Request = function(){

		//...
		//realSubject->Request();
		//...


	};

}//end Proxy

