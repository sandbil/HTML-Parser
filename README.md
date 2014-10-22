---
title: Delphi HTML Parser
description: It is very small and fast module for parsing HTML pages.  
author: sandbil
tags: delphi, Lasarus

---
Delphi HTML Parser
=========
This module lets you working with HTML documents as DOM tree and use XPath for searching tags.  
It is very simple way to parse HTML.   
 


This tested with version Delphi XE5,6   

## Requirements
  OpenSSL 
  (Demo project contains two required dll: libeay32.dll, ssleay32.dll)
    
    
    
## Usage

  Add in Uses  parser.pas;
  Next:
  
  ..
  var
    DomTree: TDomTree;
    DomTreeNode: TDomTreeNode;
	HtmlTxt: string;
	NodeList:TNodeList;
	ValueList:TStringList;
  begin
    HtmlTxt:=
	NodeList:= TNodeList.Create;
    ValueList:= TStringList.Create;

    DomTree:= TDomTree.Create;
    DomTreeNode:= DomTree.RootNode;
	If DomTreeNode.RunParse(HtmlTxt) then
      begin
	    {your code
		 example:
		 DomTreeNode.FindXPath('//*[@id="TopBox"]/div[1]/div[@class="draw default"]'),NodeList,ValueList)}
		 ..
	  end;	
	..  
  end;  
  
   And joy!!!
   
   Xpath  support:
   attributes     - //*[@id="TopBox"]/div/@class
   comment        - //*[@id="TopBox"]/div/comment()[3]
   text           - //*[@id="TopBox"]/div/text()[2]
   previous level - /../div[@class="draw default"]/img[2]/@alt
   
   partial coincidence by search in value of attribute:
   /div[@class="draw] returned nodes [[div class="draw default"],[div class="draw"], [div class="draw any"]..]  
   like  Xpath's function contains.
   
   See demo project.

   
[![screenshot1](/parse.png)](/parse.png)
[![screenshot2](/xpath.png)](/xpath.png)
