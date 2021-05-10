///////////////////////////////////////////////////////////
//  ConcreteBuilder.h
//  Implementation of the Class ConcreteBuilder
//  Created on:      03-май-2020 0:40:49
//  Original author: STM
///////////////////////////////////////////////////////////

#if !defined(EA_6DFFE5B7_7036_4675_85B8_DD1D2B7491CB__INCLUDED_)
#define EA_6DFFE5B7_7036_4675_85B8_DD1D2B7491CB__INCLUDED_

#include "Builder.h"

/**
 * This class (a) constructs and assembles parts of the product by implementing
 * the Builder interface, (b) defines and keeps track of the representation it
 * creates, and (c) provides an interface for retrieving the product.
 */
class ConcreteBuilder : public Builder
{

public:
	ConcreteBuilder();
	virtual ~ConcreteBuilder();

	virtual BuildPart();
	void GetResult();

};
#endif // !defined(EA_6DFFE5B7_7036_4675_85B8_DD1D2B7491CB__INCLUDED_)
