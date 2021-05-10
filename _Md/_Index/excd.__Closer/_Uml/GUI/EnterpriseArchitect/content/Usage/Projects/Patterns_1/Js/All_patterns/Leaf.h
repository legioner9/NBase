///////////////////////////////////////////////////////////
//  Leaf.h
//  Implementation of the Class Leaf
//  Created on:      03-май-2020 0:40:50
//  Original author: STM
///////////////////////////////////////////////////////////

#if !defined(EA_AC52CF72_AC09_4544_AFAD_EA79751135AA__INCLUDED_)
#define EA_AC52CF72_AC09_4544_AFAD_EA79751135AA__INCLUDED_

#include "Component.h"

/**
 * This class (a) represents leaf objects in the composition, and (b) defines
 * behaviour for primitive objects in the composition.
 */
class Leaf : public Component
{

public:
	Leaf();
	virtual ~Leaf();

	virtual Operation();

};
#endif // !defined(EA_AC52CF72_AC09_4544_AFAD_EA79751135AA__INCLUDED_)
