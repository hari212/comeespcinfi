<%@ page import="java.util.List,com.eespc.tracking.bo.FuelConsumptionVo" %> 
<%@ page import="com.eespc.tracking.bo.myenum.YearEnum,java.util.Collection"%>
<%@ page import="java.util.Iterator,com.eespc.tracking.bo.DropDown,com.eespc.tracking.bo.NameValueBean"%>

<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=2 BGCOLOR=#006699 WIDTH=100%>
  <TR BGCOLOR=#006699> 
    <TD width="100%">&#160&#160&#160 <FONT COLOR=white CLASS=section>Ink One Consumption<input type="image" src="/eespc/images/help.png" onClick="return false;" onmouseover="InkOneConsumption();"  onmouseout="UnTip()" /><div align="right">(in 
      cubic feet)</div></FONT></TD>
  </TR>
  <TR> 
    <TD width="100%" > <TABLE BORDER=0 CELLSPACING=1 CELLPADDING=0 WIDTH=100%>
        <TR BGCOLOR=white> 
          <TD> 
          <table border="0" width="100%" cellspacing="1" cellpadding="2" class="globalTableStyle">
              <tr class="oddRowStyle"> 
                <td   class=columnhead width="47">Year</td>
                <td colspan="12"   class=columnhead ><div align="center">Monthly 
                    Consumption<input type="image" src="/eespc/images/help.png" onClick="return false;" onmouseover="MonthlyInkConsumption();"  onmouseout="UnTip()" /> </div></td>
                <td   class=columnhead width="131">Year to Date</td>
                <td colspan="1"   class=columnhead ><div align="center">12 Month Rolling Status<input type="image" src="/eespc/images/help.png" onClick="return false;" onmouseover="TwelveMonthRollingStatus();"  onmouseout="UnTip()" /></div></td>
                <td   class=columnhead width="67" align="center">Lock<input type="image" src="/eespc/images/help.png" onClick="return false;" onmouseover="Lock();"  onmouseout="UnTip()" /></td>
               
                <td   class=columnhead width="70" align="center"><div align="center">
                  Delete</div></td>
              </tr>
              <tr class="oddRowStyle"> 
                <td   class=columnhead width="47">&nbsp;</td>
                <td   class=columnhead width="52">Jan</td>
                <td   class=columnhead width="46">Feb</td>
                <td   class=columnhead width="46">Mar</td>
                <td   class=columnhead width="46">Apr</td>
                <td   class=columnhead width="46">May</td>
                <td   class=columnhead width="46">Jun</td>
                <td   class=columnhead width="47">Jul</td>
                <td   class=columnhead width="47">Aug</td>
                <td   class=columnhead width="47">Sep</td>
                <td   class=columnhead width="47">Oct</td>
                <td   class=columnhead width="47">Nov</td>
                <td   class=columnhead width="47">Dec</td>
                <td   class=columnhead >&nbsp;</td>
                <td   class=columnhead ><div align="center">Consumption</div></td>
             
                <td   class=columnhead width="67">&nbsp;</td>
              
                <td   class=columnhead width="70">&nbsp;</td>
              </tr>
<%
			List on_consumptionList= (List)request.getAttribute("PRESS_INK");
			int on_size = (( on_consumptionList!= null )?on_consumptionList.size():0);
			boolean on_isAllLocked = true;
			
			if (on_size > 0 ){		
			
				for (int i=0; i < on_size; i++)
				{
				 	FuelConsumptionVo fuelConsumptionVo = (FuelConsumptionVo )on_consumptionList.get(i);
					if (fuelConsumptionVo .isLocked()==false){
						on_isAllLocked = false;
					}
					out.println(fuelConsumptionVo .on_getHtml(i));
				}//for
				
			}
			
			
			
			if (on_size==0 || on_isAllLocked){
%>				  
              <tr class="evenRowStyle"> 
                <td width="47" align="center"  nowrap class="fieldleft">
<%
					DropDown on_yearEnum = YearEnum.getDropDownObj();
					Collection on_col = on_yearEnum.getDropDownValues();
					out.println("<select name=\"on_fcyear\" id=\"on_fcyear\">");			
					for (Iterator it=on_col.iterator(); it.hasNext(); ) {
						NameValueBean element = (NameValueBean)it.next();
						String name = element.getName();
						out.println("<option value=\"" +name + "\">" + name + "</option>");
					}
					out.println("</select>");
%>			
				  </td>
                <td width="52" align="center"  nowrap class="fieldleft"><input name="on_jan" type="text" class="normal" id="inkConsumDaily26" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="46" align="center"  nowrap class="fieldleft"><input name="on_feb" type="text" class="normal" id="inkConsumDaily27" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="46" align="center"  nowrap class="fieldleft"><input name="on_mar" type="text" class="normal" id="inkConsumDaily28" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="46" align="center"  nowrap class="fieldleft"><input name="on_apr" type="text" class="normal" id="inkConsumDaily29" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="46" align="center"  nowrap class="fieldleft"><input name="on_may" type="text" class="normal" id="inkConsumDaily210" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="46" align="center"  nowrap class="fieldleft"><input name="on_jun" type="text" class="normal" id="inkConsumDaily211" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_jul" type="text" class="normal" id="inkConsumDaily212" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_aug" type="text" class="normal" id="inkConsumDaily213" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_sep" type="text" class="normal" id="inkConsumDaily214" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_oct" type="text" class="normal" id="inkConsumDaily215" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_nov" type="text" class="normal" id="inkConsumDaily216" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>
                <td width="47" align="center"  nowrap class="fieldleft"><input name="on_dec" type="text" class="normal" id="inkConsumDaily217" size="4" maxlength="11"><br><input name="on_rdbIndex" type="radio" value="0"></td>                
                <td  align="center"  nowrap class="fieldleft"><input name="on_yearToDate" type="text" class="normal" id="inkConsumAnnual22" size="10" maxlength="10"></td>
                <td  align="center"  nowrap class="fieldleft"><input name="on_consumption" type="text" class="normal" id="inkConsumAnnual2" size="20"></td>                              
                <td width="67" align="center"  nowrap class="fieldleft"><input name="on_lock" type="checkbox" id="lock" value="Y" ></td>
                
                <td width="70" align="center"  nowrap class="fieldleft">&nbsp;</td>
              </tr>
<%
			}//else condition
			
%>			 
			<input type="hidden" name="on_hdnConsumption" value="<%= request.getAttribute("on_hdnConsumption")%>">
			<input type="hidden" name="onx_hdnPreviousConsumption" value="<%= request.getAttribute("on_hdnPreviousConsumption")%>" >
			<input type="hidden" name="on_hdnCurrentMonthIndex" value="<%= request.getAttribute("on_hdnCurrentMonthIndex")%>">			
              <tr align="right" class="evenRowStyle"> 
                <td colspan=19  ><input type="button" name="Button23" value="Validate" onClick="on_fetchConsumption();">
									<input type="button" name="Button23" value="Add " onClick="on_addInkConsumption();"> </td>
              </tr>
            </table></TD>
        </TR>
      </TABLE></TD>
  </TR>
</TABLE>