##### [Self-Message](https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/self-message.html)

![](_src/d-selfmessage.png)

A Self-Message reflects a new process or method invoked within the calling lifeline's operation. It is a specification of a Message, typically in a Sequence diagram.

Самостоятельное сообщение отражает новый процесс или метод, вызванный в рамках операции вызывающей линии жизни. Это спецификация сообщения, обычно в виде диаграммы последовательности.

Self-Message Calls indicate a nested invocation; new activation levels are added with each Call.

Вызовы с собственными сообщениями указывают на вложенный вызов; новые уровни активации добавляются с каждым звонком.

-- Self-Message as Return

It is possible to depict a return from a Self Message call.

Самостоятельное сообщение в качестве возврата
Можно изобразить возврат от вызова с собственным сообщением.

![](_src/selfmessagereturn.png)

Create a Self Message return

| Step                                     | Action                                   |
|------------------------------------------|------------------------------------------|
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;">1</span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);">Create a second Self Message at the end of execution.</span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;">2</span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);">Double-click on the Message name to open the 'Message Properties' dialog.</span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;">3</span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);">Select the 'Is Return' checkbox.</span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;">4</span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);">Raise the Activation level of the return.</span></p> |



| шаг                                      | действие                                 |
|------------------------------------------|------------------------------------------|
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">1</font></font></span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">Создайте второе собственное сообщение в конце выполнения.</font></font></span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">2</font></font></span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">Дважды щелкните имя сообщения, чтобы открыть диалоговое окно «Свойства сообщения».</font></font></span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">3</font></font></span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">Установите флажок "Возврат".</font></font></span></p> |
| <p class="p_Tableheader" style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_Tabletext" style="box-sizing: border-box;"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">4</font></font></span></p> | <p style="box-sizing: border-box; text-align: left; text-indent: 0px; padding: 14px 0px; margin: 5px; line-height: 19px;"><span class="f_BodyTextTable" style="box-sizing: border-box; color: rgb(51, 51, 51);"><font style="box-sizing: border-box; vertical-align: inherit;"><font style="box-sizing: border-box; vertical-align: inherit;">Поднимите уровень активации возврата.</font></font></span></p> |

Toolbox icon

![](_src/c-selfmessage.png)

Learn more
* [Sequence Diagram](https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/sequencediagram.html)
* [Message](https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/message.html)
* [Raise the Activation Level](https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/lifelineself-messagehierarch.html)
* [Call](https://sparxsystems.com/enterprise_architect_user_guide/15.1/model_domains/call.html)


Выучить больше
* Схема последовательности
* Сообщение
* Поднимите уровень активации
* Вызов


