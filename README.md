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

 Available properties and methods:
*  TDomTree
*  property Count - count of nodes
*  property RootNode - root node (TDomTreeNode)
*  property ParseErr - Tstringlist contains all parsing errors and warnings

*  TDomTreeNode
*   property Tag - name of tag
*   property AttributesTxt - string with all attributtes
*   property Attributes - parsed attributes (TDictionary<string, string>)
*   property Text - text
*   property TypeTag  -
*   property Child - contains child's nodes (TChildList of TDomTreeNode)
*   property Parent - contains parent's node
*   property Owner - contains pointer to owner TDomTree
*   function FindNode - boolean function, if true then  TNodeList contains found nodes
*   function FindTagOfIndex - boolean function, if true then  TNodeList contains founded nodes
*   function GetAttrValue - returns value of attribute of current node
*   function GetComment - returns the set index comment in the current container node
*   function GetTagName - return name of tag + AttributesTxt
*   function GetText - returns the set index text in the current container node
*   function GetXPath - returns Xpath for current node
*   function RunParse - if parse is successfully then CHild property contains HTML DOM tree
*   function FindXPath - boolean function, if true then  TNodeList contains founded nodes
*                        and TStringList  contains founded value of attribute, comment, text

   Xpath  support:
*   attributes     - //*[@id="TopBox"]/div/@class
*   comment        - //*[@id="TopBox"]/div/comment()[3]
*   text           - //*[@id="TopBox"]/div/text()[2]
*   previous level - /../div[@class="draw default"]/img[2]/@alt
   
*   partial coincidence by search in value of attribute:
*   /div[@class="draw] returned nodes [[div class="draw default"],[div class="draw"], [div class="draw any"]..]  
*   like  Xpath's function contains.
   
   See demo project.

   
[![screenshot1](/demo/Parse.png?raw=true)](/demo/Parse.png?raw=true)
[![screenshot2](/demo/Xpath.png)](/Xpath.png)
