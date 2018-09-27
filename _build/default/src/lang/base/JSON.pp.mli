Caml1999N022����            6src/lang/base/JSON.mli����  #  �  3  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���-ppxlib_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����+use_threadsG����
K@K@����-use_vmthreadsP����T@T@����'cookiesY����B]@]@@@]@@]@]�����-ContractState��6src/lang/base/JSON.mliY���Y��@�����Р-get_json_data��_���_��@��@����&string��_���_��@@��_���_��@@����$list��!_���"_��@��������&string��-_���._��@@��0_���1_��@@������&Syntax'literal��;_���<_��@@��>_���?_��@@@��A_���B_��@@@��D_���E_��@@��G_���H_��@@@���)ocaml.doc���A@ ���A@ �A�������	� 
   **  Returns a list of (vname:string,value:literal) items
   **  from the json in the input filename. Invalid inputs in the json are ignored 
   *@��Y[���Z^��@@@��\[���]^��@@������A@ ���A@ �A�������	� 
   ** Prints a list of state variables (string, literal)
   ** as a json and returns it as a string.
   ** pp enables pretty printing.
   *@��m`���ndW]@@@��p`���qdW]@@@��s_���t_��@��v_���w_��@���Р/state_to_string��e^d��e^s@���"pp����$bool���e^z��e^~@@���e^z��e^~@@��@����$list���e^���e^�@��������&string���e^���e^�@@���e^���e^�@@������&Syntax'literal���e^���e^�@@���e^���e^�@@@���e^���e^�@@@���e^���e^�@@����&string���e^���e^�@@���e^���e^�@@���e^���e^�@@���e^v��e^�@@@������5A@ ��6A@ �A�������p@���`����dW]@@@���`����dW]@@@���e^`��e^�@���e^`��e^�@���Р-state_to_json���h����h��@��@����$list���h���h�@��������&string��h���h��@@��h���h��@@������&Syntax'literal��h���h�	@@��h���h�	@@@��h���h�	@@@��h���h�@@�����&Yojson$json��%h��&h�@@��(h��)h�@@��+h���,h�@@@@��.h���/h�@��1h���2h�@@��4Y���5j!$@@�������A@ ���A@ �A�������
    The state input is a json containing an array state variables.
 ** Each state variable is a list of the following key value pairs:
 **    "vname" : "variable name"
 **    "type" : "valid scilla type"
 **    "value" : "value of the variable as a string"
 *@��ES���FX��@@@��HS���IX��@@@��KY���Lj!$@��NY���Oj!$@�����'Message��W B	?	F�X B	?	M@�����Р-get_json_data��b G	�	��c G	�

@��@����&string��l G	�
�m G	�
@@��o G	�
�p G	�
@@����$list��w G	�
1�x G	�
5@��������&string��� G	�
�� G	�
@@��� G	�
�� G	�
@@������&Syntax'literal��� G	�
!�� G	�
/@@��� G	�
!�� G	�
/@@@��� G	�
�� G	�
/@@@��� G	�
�� G	�
5@@��� G	�
�� G	�
5@@@���V��A@ ��A@ �A�������	� Parses and returns a list of (pname,pval), with
  "_tag", "_sender" and "_amount" at the beginning of this list.
  Invalid inputs in the json are ignored *@��� D	U	U�� F	�	�@@@��� D	U	U�� F	�	�@@@��� G	�	��� G	�
5@��� G	�	��� G	�
5@���Р2message_to_jstring��� Q���� Q��@���"pp����$bool��� Q���� Q��@@��� Q���� Q��@@��@����$list��� Q���� Q��@��������&string��� Q���� Q��@@��� Q���� Q��@@������&Syntax'literal��� Q���� Q��@@��� Q���� Q��@@@��� Q���� Q��@@@��� Q���� Q��@@����&string�� Q�� Q�
@@�� Q�� Q�
@@��
 Q��� Q�
@@�� Q��� Q�
@@@���ư�vA@ ��wA@ �A�������
  z 
   ** Prints a message (string, literal) as a json to the 
   ** and returns the string. pp enables pretty printing.
   ** The difference b/w this and the one in ContractState is that
   ** this has a mandatory "_tag", "_sender" and "_amount" field,
   ** with the actual params themselves in an array json with
   ** name "params" (as described in comment in .mli file).
   *@�� I
7
9� P��@@@��! I
7
9�" P��@@@��$ Q���% Q�
@��' Q���( Q�
@���Р/message_to_json��0 S_e�1 S_t@��@����$list��: S_��; S_�@��������&string��F S_y�G S_@@��I S_y�J S_@@������&Syntax'literal��T S_��U S_�@@��W S_��X S_�@@@��Z S_y�[ S_�@@@��] S_x�^ S_�@@�����&Yojson$json��g S_��h S_�@@��j S_��k S_�@@��m S_w�n S_�@@@@��p S_a�q S_�@��s S_a�t S_�@@��v B	?	P�w U��@@���/���A@ ���A@ �A�������
   Message json parsing and printing. A message json has three mandatory
 *  fields "_tag" specifying the transition to be invoked, an "_amount"
 *  field, specifying amount to be transferred. and a "_sender" field
 *  do convey the sender of the message. These two are followed by an
 *  array of json objects for parameters to the transition. These parameters
 *  are encoded similar to the array of variables in ContractState. It is
 *  expected that the types of parameters match with those in the contract 
 *  definition.
    {
      "_tag" : "foo",
      "_sender" : "0x1234567890123456789012345678901234567890"
      "_amount": "100", 
      "params" :
      [
        {
          "vname" : "bar",
          "type" : "Uint128" ,
          "value" : "100"
        }
      ]
    }
 *@���l&&�� A	:	>@@@���l&&�� A	:	>@@@��� B	?	?�� U��@��� B	?	?�� U��@�����/BlockChainState��� W���� W��@�����Р-get_json_data��� ]AG�� ]AT@��@����&string��� ]AW�� ]A]@@��� ]AW�� ]A]@@����$list��� ]A{�� ]A@��������&string��� ]Ab�� ]Ah@@��� ]Ab�� ]Ah@@������&Syntax'literal��� ]Ak�� ]Ay@@��� ]Ak�� ]Ay@@@��� ]Ab�� ]Ay@@@��� ]Aa�� ]A@@��� ]AW�� ]A@@@������HA@ ��IA@ �A�������	n 
   **  Returns a list of (vname:string,value:literal) items
   **  from the json in the input filename.
   *@��� Y���� \:@@@@��� Y���� \:@@@@��� ]AC�� ]A@��� ]AC�� ]A@@��� W���� _��@@@��� W���  _��@�� W��� _��@�����,ContractInfo�� a��� a��@���������*ParserUtil,ParsedSyntax�� b��� b��@A�� b��� b��@@�� b���  b��@���Р*get_string��( �hn�) �hx@��@����(contract��2 �h{�3 �h�@@��5 �h{�6 �h�@@��@����$list��? �h��@ �h�@��������&string��K �h��L �h�@@��N �h��O �h�@@�����$list��W �h��X �h�@��������&string��c �h��d �h�@@��f �h��g �h�@@������&Syntax#typ��q �h��r �h�@@��t �h��u �h�@@@��w �h��x �h�@@@��z �h��{ �h�@@@��} �h��~ �h�@@@��� �h��� �h�@@����&string��� �h��� �h�@@��� �h��� �h�@@��� �h��� �h�@@��� �h{�� �h�@@@@��� �hj�� �h�@��� �hj�� �h�@@��� a���� ���@@@��� a���� ���@��� a���� ���@�����%Event��� ����� ���@�����Р0event_to_jstring��� �^d�� �^t@���"pp����$bool��� �^{�� �^@@��� �^{�� �^@@��@����$list��� �^��� �^�@��������&string��� �^��� �^�@@��� �^��� �^�@@������&Syntax'literal��� �^��� �^�@@��� �^��� �^�@@@��� �^��� �^�@@@��� �^��� �^�@@����&string��� �^��� �^�@@��� �^��� �^�@@��� �^��� �^�@@�� �^w� �^�@@@������jA@ ��kA@ �A�������	� 
   ** Prints an Event "(string, literal) list" as a json to the 
   ** and returns the string. pp enables pretty printing.
   *@�� ���� �W]@@@�� ���� �W]@@@�� �^`� �^�@�� �^`� �^�@���Р-event_to_json��$ ���% ��@��@����$list��. ��.�/ ��2@��������&string��: ���; ��@@��= ���> ��@@������&Syntax'literal��H ���I ��,@@��K ���L ��,@@@��N ���O ��,@@@��Q ���R ��2@@�����&Yojson$json��[ ��6�\ ��A@@��^ ��6�_ ��A@@��a ���b ��A@@@@��d �� �e ��A@��g �� �h ��A@@��j ����k �CF@@@��m ����n �CF@��p ����q �CF@�����,Invalid_json��y �HR�z �H^@�������&string��� �Hb�� �Hh@@��� �Hb�� �Hh@@@@��� �HH�� �Hh@@��� �HH�� �Hh@@