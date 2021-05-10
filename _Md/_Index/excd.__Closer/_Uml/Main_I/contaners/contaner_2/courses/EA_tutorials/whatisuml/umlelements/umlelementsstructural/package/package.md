#### <a href="https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/package.html" target="_blank">Package</a> пакет

Description

A Package is a namespace as well as an element that can be contained in other Package's namespaces. A Package can own or merge with other Packages, and its elements can be imported into a Package's namespace. In addition to using Packages in the Browser window to organize your project contents, you can drag the Packages onto a diagram workspace (most diagram types, both standard and extended) for structural or relational depictions, including Package imports or merges.

Пакет - это пространство имен, а также элемент, который может содержаться в других пространствах имен пакета. Пакет может принадлежать другим пакетам или объединяться с ними, а его элементы могут быть импортированы в пространство имен пакета. Помимо использования пакетов в окне браузера для организации содержимого проекта, вы можете перетаскивать пакеты в рабочую область диаграммы (большинство типов диаграмм, как стандартных, так и расширенных) для структурного или реляционного отображения, включая импорт или слияние пакетов.

Toolbox icon

![](_src/e-package.png)

OMG UML Specification:
The OMG UML specification (UML Superstructure Specification, v2.1.1, p.109) states:

A package is a namespace for its members, and may contain other packages. Only packageable elements can be owned members of a package. By virtue of being a namespace, a package can import either individual members of other packages, or all the members of other packages. In addition a package can be merged with other packages.

Спецификация OMG UML:
Спецификация OMG UML (Спецификация надстройки UML, v2.1.1, стр.109) гласит:

Пакет - это пространство имен для своих членов и может содержать другие пакеты. Членами пакета могут быть только упаковываемые элементы. Поскольку пакет является пространством имен, он может импортировать либо отдельные элементы других пакетов, либо все элементы других пакетов. Кроме того, пакет можно объединить с другими пакетами.