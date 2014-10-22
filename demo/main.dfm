object Form1: TForm1
  Left = 411
  Top = 0
  Caption = 'DemoParser'
  ClientHeight = 691
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 672
    Width = 998
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 998
    Height = 672
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'HTML Parser'
      OnShow = TabSheet1Show
      object Splitter1: TSplitter
        Left = 0
        Top = 560
        Width = 990
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = 1
        ExplicitTop = 61
        ExplicitWidth = 398
      end
      object Panel2: TPanel
        Left = 0
        Top = 563
        Width = 990
        Height = 81
        Align = alBottom
        TabOrder = 0
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 988
          Height = 79
          Align = alClient
          BevelInner = bvNone
          Lines.Strings = (
            '')
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 560
        Align = alClient
        TabOrder = 1
        object Panel4: TPanel
          Left = 1
          Top = 41
          Width = 988
          Height = 518
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 0
          object TreeView1: TTreeView
            Left = 1
            Top = 1
            Width = 986
            Height = 516
            ParentCustomHint = False
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            DragMode = dmAutomatic
            Indent = 19
            MultiSelect = True
            ParentShowHint = False
            ReadOnly = True
            RightClickSelect = True
            ShowHint = False
            TabOrder = 0
            OnMouseUp = TreeView1MouseUp
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 988
          Height = 40
          Align = alTop
          TabOrder = 1
          object ParseBt: TButton
            Left = 7
            Top = 5
            Width = 90
            Height = 25
            Caption = 'Parse'
            TabOrder = 0
            OnClick = ParseBtClick
          end
          object Edit1: TEdit
            Left = 106
            Top = 8
            Width = 759
            Height = 21
            TabOrder = 1
            Text = 'http://www.ozlotteries.com/lotto-results#'
          end
        end
      end
    end
    object XPath: TTabSheet
      Caption = 'miniXPath'
      ImageIndex = 1
      OnShow = XPathShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 880
      ExplicitHeight = 475
      object Splitter3: TSplitter
        Left = 400
        Top = 40
        Height = 520
        AutoSnap = False
        ExplicitLeft = 704
        ExplicitTop = 512
        ExplicitHeight = 100
      end
      object Splitter4: TSplitter
        Left = 0
        Top = 560
        Width = 990
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 500
        ExplicitWidth = 906
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 40
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 880
        object FindOneBt: TButton
          Left = 5
          Top = 5
          Width = 90
          Height = 25
          Caption = 'Find in DOM'
          TabOrder = 0
          OnClick = FindOneBtClick
        end
        object Edit2: TEdit
          Left = 105
          Top = 7
          Width = 760
          Height = 21
          TabOrder = 1
          Text = '//*[@id="TopBox"]/div/div/div/div/div[@class="draw default"]'
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 40
        Width = 400
        Height = 520
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 1
        ExplicitHeight = 351
      end
      object Panel7: TPanel
        Left = 403
        Top = 40
        Width = 587
        Height = 520
        Align = alClient
        Caption = 'Panel7'
        TabOrder = 2
        ExplicitWidth = 477
        ExplicitHeight = 351
        object Splitter2: TSplitter
          Left = 1
          Top = 225
          Width = 585
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = -23
          ExplicitTop = 17
          ExplicitWidth = 540
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 585
          Height = 224
          Align = alTop
          Caption = 'Panel3'
          TabOrder = 0
          ExplicitWidth = 475
          object Panel9: TPanel
            Left = 1
            Top = 193
            Width = 583
            Height = 30
            Align = alBottom
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 473
            object ClearBt: TButton
              Left = 4
              Top = 3
              Width = 45
              Height = 25
              Caption = 'Clear'
              TabOrder = 0
              OnClick = ClearBtClick
            end
            object FindAllBt: TButton
              Left = 208
              Top = 3
              Width = 122
              Height = 25
              Caption = 'Find all result'
              TabOrder = 1
              OnClick = FindAllBtClick
            end
            object Button1: TButton
              Left = 55
              Top = 3
              Width = 58
              Height = 25
              Caption = 'Collapse'
              TabOrder = 2
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 106
              Top = 3
              Width = 55
              Height = 25
              Caption = 'Expand'
              TabOrder = 3
              OnClick = Button2Click
            end
          end
          object TreeView2: TTreeView
            Left = 1
            Top = 1
            Width = 583
            Height = 192
            Align = alClient
            Indent = 19
            TabOrder = 1
            OnDragDrop = TreeView2DragDrop
            OnDragOver = TreeView2DragOver
            OnEndDrag = TreeView2EndDrag
            Items.NodeData = {
              0301000000B80000000000000000000000FFFFFFFFFFFFFFFF00000000000000
              0002000000014D2F002F002A005B004000690064003D00220054006F00700042
              006F00780022005D002F006400690076002F006400690076002F006400690076
              002F006400690076005B00400063006C006100730073003D0022007200650073
              0075006C0074005F0062006C006F0063006B005D002F006400690076005B0040
              0063006C006100730073003D0022006E0075006D00620065007200730022005D
              00960000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
              00013C2F002E002E002F006400690076005B00400063006C006100730073003D
              00220064007200610077002000640065006600610075006C00740022005D002F
              0061005B00400063006C006100730073003D0022006C006F00740074006F005F
              006E0061006D00650022005D002F007400650078007400280029005000000000
              00000000000000FFFFFFFFFFFFFFFF00000000000000000600000001192F002E
              002E002F006400690076005B00400063006C006100730073003D0022006E0075
              006D00620065007200730022005D006E0000000000000000000000FFFFFFFFFF
              FFFFFF00000000000000000000000001282F002E002E002F006400690076005B
              00400063006C006100730073003D002200640072006100770020006400650066
              00610075006C00740022005D002F007400650078007400280029005B0031005D
              006E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
              0001282F002E002E002F006400690076005B00400063006C006100730073003D
              00220064007200610077002000640065006600610075006C00740022005D002F
              007400650078007400280029005B0032005D00540000000000000000000000FF
              FFFFFFFFFFFFFF000000000000000000000000011B2F007400610062006C0065
              002F00740072005B0032005D002F00740064005B0031005D002F0069006D0067
              002F00400061006C007400540000000000000000000000FFFFFFFFFFFFFFFF00
              0000000000000000000000011B2F007400610062006C0065002F00740072005B
              0032005D002F00740064005B0032005D002F0069006D0067002F00400061006C
              0074007A0000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
              000000012E2F002E002E002F006400690076005B00400063006C006100730073
              003D0022006400690076006900640065006E0064005F00770072006100700070
              006500720022005D002F007300700061006E002F007400650078007400280029
              00740000000000000000000000FFFFFFFFFFFFFFFF0000000000000000040000
              00012B2F002E002E002F006400690076005B00400063006C006100730073003D
              0022006400690076006900640065006E0064005F007700720061007000700065
              00720022005D002F007400610062006C0065002F007400720046000000000000
              0000000000FFFFFFFFFFFFFFFF00000000000000000000000001142F00740064
              005B0031005D002F007300740072006F006E0067002F00740065007800740028
              002900460000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
              00000001142F00740064005B0032005D002F007300740072006F006E0067002F
              007400650078007400280029003E0000000000000000000000FFFFFFFFFFFFFF
              FF00000000000000000000000001102F00740064005B0032005D002F00740065
              0078007400280029005B0031005D003E0000000000000000000000FFFFFFFFFF
              FFFFFF00000000000000000000000001102F00740064005B0032005D002F0074
              00650078007400280029005B0032005D00}
          end
        end
        object TreeView3: TTreeView
          Left = 1
          Top = 228
          Width = 585
          Height = 291
          Align = alClient
          Indent = 19
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 563
        Width = 990
        Height = 81
        Align = alBottom
        Caption = 'Panel10'
        TabOrder = 3
        ExplicitTop = 394
        ExplicitWidth = 880
      end
    end
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 824
    Top = 72
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 824
    Top = 144
  end
end
