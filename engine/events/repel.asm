RepelWoreOffScript::
	opentext
	readmem wRepelType
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext .RepelWoreOffText
	waitbutton
	closetext
	end

.RepelWoreOffText:
	text_far _RepelWoreOffText
	text_end

UseAnotherRepelScript::
	opentext
	readmem wRepelType
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext .UseAnotherRepelText
	yesorno
	iffalse .done
	callasm DoItemEffect
.done
	closetext
	end

.UseAnotherRepelText:
	text_far _UseAnotherRepelText
	text_end