object MainEFRM: TMainEFRM
  Left = 253
  Top = 193
  Caption = 'MainEFRM'
  ClientHeight = 630
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 804
    Height = 59
    Align = alTop
    Alignment = taCenter
    Caption = 'Add Metadata Tokyo  Main'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -50
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 629
  end
  object DatabaseFLD: TLabel
    Left = 0
    Top = 59
    Width = 804
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Add Metadata Tokyo Cab'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -30
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 354
  end
  object Bevel1: TBevel
    Left = 0
    Top = 94
    Width = 804
    Height = 67
    Align = alTop
    ExplicitWidth = 1259
  end
  object Exit: TButton
    Left = 123
    Top = 888
    Width = 92
    Height = 41
    Caption = 'Exit'
    TabOrder = 0
    OnClick = ExitClick
  end
  object Button2: TButton
    Left = 666
    Top = 188
    Width = 75
    Height = 25
    Caption = 'LoadFromFile'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 40
    Top = 551
    Width = 75
    Height = 41
    Caption = 'Execute'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 40
    Top = 161
    Width = 593
    Height = 384
    Items.Strings = (
      '//ALTER TABLE HAWB ADD DESTINATION_STATION CHAR_20'
      ''
      
        '//ALTER TABLE CLEARANCE_WAITING_CODE ADD IS_CLEARED BOOLEAN_OPTI' +
        'ONAL_NULL'
      '//ALTER TABLE MAWB ADD FILE_NAME_XML CHAR_80'
      ''
      '//delete from tariff_group_line '
      '//delete from tariff_group '
      '//delete from clearance_instruction '
      ''
      
        '//ALTER TABLE CLEARANCE_INSTRUCTION ADD IS_DISPLAY BOOLEAN_OPTIO' +
        'NAL_NULL'
      ''
      '//CREATE INDEX CUSTOMER_VAT_NDX ON CUSTOMER (VAT_ID)'
      ''
      '//CREATE TABLE AGENT ('
      
        '    SERIAL_NUMBER  SERIAL_DOMAIN NOT NULL /* SERIAL_DOMAIN = INT' +
        'EGER NOT NULL */,'
      '    NAME           CHAR_80 /* CHAR_80 = VARCHAR(80) */,'
      '    AUTHORITY_ID   CHAR_30 /* CHAR_30 = CHAR(30) */'
      ');'
      ''
      
        '//ALTER TABLE AGENT ADD CONSTRAINT PK_AGENT PRIMARY KEY (SERIAL_' +
        'NUMBER);'
      '//CREATE SEQUENCE GEN_AGENT')
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'sql'
    Filter = 'SQL script files|*.sql'
    InitialDir = 'E:\All\Databases\Tocheck'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 328
    Top = 252
  end
  object CabCOnnection: TIBCConnection
    Database = 'C:\Data\DelphiProjects\Databases\Cab\IBDHL25.FDB'
    Options.KeepDesignConnected = False
    ClientLibrary = 'C:\Data\DelphiProjects\Databases\GDS32.DLL'
    Port = '3050'
    Username = 'SYSDBA'
    LoginPrompt = False
    Debug = True
    Left = 584
    Top = 472
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object UpdateTrans: TIBCTransaction
    DefaultConnection = CabCOnnection
    Left = 984
    Top = 488
  end
  object IBCQuery1: TIBCQuery
    Connection = CabCOnnection
    SQL.Strings = (
      'select * from Customer')
    Left = 608
    Top = 184
    object IBCQuery1NAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 80
    end
    object IBCQuery1ADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Size = 50
    end
    object IBCQuery1ADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 50
    end
    object IBCQuery1ADDRESS3: TStringField
      FieldName = 'ADDRESS3'
      Size = 50
    end
    object IBCQuery1VAT_ID: TStringField
      FieldName = 'VAT_ID'
      Size = 10
    end
    object IBCQuery1COMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 10
    end
    object IBCQuery1RECEIPIENT_ID: TStringField
      FieldName = 'RECEIPIENT_ID'
      Size = 10
    end
    object IBCQuery1OTHER_ID: TStringField
      FieldName = 'OTHER_ID'
      Size = 15
    end
    object IBCQuery1TEL_NO1: TStringField
      FieldName = 'TEL_NO1'
      Size = 10
    end
    object IBCQuery1TEL_NO2: TStringField
      FieldName = 'TEL_NO2'
      Size = 10
    end
    object IBCQuery1FAX1: TStringField
      FieldName = 'FAX1'
      Size = 10
    end
    object IBCQuery1FAX2: TStringField
      FieldName = 'FAX2'
      Size = 10
    end
    object IBCQuery1FK_DISTRICT_CODE: TStringField
      FieldName = 'FK_DISTRICT_CODE'
      Size = 3
    end
    object IBCQuery1COMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 200
    end
    object IBCQuery1AUTHORIZATION_NUMBER: TStringField
      FieldName = 'AUTHORIZATION_NUMBER'
      Size = 15
    end
    object IBCQuery1QUARANTEE_NUMBER: TStringField
      FieldName = 'QUARANTEE_NUMBER'
      Size = 10
    end
    object IBCQuery1IMPORTER: TStringField
      FieldName = 'IMPORTER'
      Size = 1
    end
    object IBCQuery1EXPORTER: TStringField
      FieldName = 'EXPORTER'
      Size = 1
    end
    object IBCQuery1RESELLER: TStringField
      FieldName = 'RESELLER'
      Size = 1
    end
    object IBCQuery1CUSTOM_DEALER_NUMBER: TStringField
      FieldName = 'CUSTOM_DEALER_NUMBER'
      Size = 10
    end
    object IBCQuery1FK_OCCUPATION_CODE: TStringField
      FieldName = 'FK_OCCUPATION_CODE'
      Size = 5
    end
    object IBCQuery1FK_CUSTOMER_CATEGORY_CODE: TStringField
      FieldName = 'FK_CUSTOMER_CATEGORY_CODE'
      Size = 5
    end
    object IBCQuery1AUTHORITY_TO_AGENT: TStringField
      FieldName = 'AUTHORITY_TO_AGENT'
      Size = 10
    end
    object IBCQuery1COMPANY_OR_PERSON: TStringField
      FieldName = 'COMPANY_OR_PERSON'
      Size = 1
    end
    object IBCQuery1CODE: TIntegerField
      FieldName = 'CODE'
      Required = True
    end
    object IBCQuery1ACCOUNT_NUMBER: TIntegerField
      FieldName = 'ACCOUNT_NUMBER'
    end
    object IBCQuery1EMAIL_TO_NOTIFY: TStringField
      FieldName = 'EMAIL_TO_NOTIFY'
      Size = 80
    end
    object IBCQuery1MOBILE_TO_NOTIFY: TStringField
      FieldName = 'MOBILE_TO_NOTIFY'
      Size = 80
    end
    object IBCQuery1IS_NOTIFY_MOBILE: TStringField
      FieldName = 'IS_NOTIFY_MOBILE'
      FixedChar = True
      Size = 1
    end
    object IBCQuery1IS_NOTIFY_EMAIL: TStringField
      FieldName = 'IS_NOTIFY_EMAIL'
      FixedChar = True
      Size = 1
    end
    object IBCQuery1IS_RECEIVE_NOTIFICATION: TStringField
      FieldName = 'IS_RECEIVE_NOTIFICATION'
      FixedChar = True
      Size = 1
    end
    object IBCQuery1AUTHORITY_TO_DHL: TStringField
      FieldName = 'AUTHORITY_TO_DHL'
      Size = 10
    end
  end
  object IBCDataSource1: TIBCDataSource
    DataSet = IBCQuery1
    Left = 552
    Top = 184
  end
  object ScriptSQL: TIBCScript
    Delimiter = '/'
    OnError = ScriptSQLError
    AutoCommit = True
    AutoDDL = False
    Connection = CabCOnnection
    Transaction = UpdateTrans
    Left = 584
    Top = 544
  end
end
