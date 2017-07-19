<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div style="height: 100px"></div>
<table align="center" style="width: 50%">
	<tr>
		<td colspan="3">
			${data.title}
		</td>
	</tr>
	<tr>
		<td>
			${data.bizType}
		</td>
		<td>
			${data.bizLocal}
		</td>
		<td>
			${data.bizSize}
		</td>
	</tr>
	<tr>
		<td colspan="3">
			${data.nickname}
		</td>
	</tr>
	<tr>
		<td colspan="3">
			${data.contents}
		</td>
	</tr>
</table>