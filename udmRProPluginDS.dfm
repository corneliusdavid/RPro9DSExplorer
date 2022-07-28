object dmRProPluginDS: TdmRProPluginDS
  Height = 689
  Width = 1200
  PixelsPerInch = 192
  object rproConn: TFDConnection
    Params.Strings = (
      'Database=RPROODS'
      'User_Name=pluginuser'
      'Password=plugin'
      'DriverID=Ora')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object qryRProPluginVendors: TFDQuery
    Active = True
    Filtered = True
    ConstraintsEnabled = True
    Connection = rproConn
    SQL.Strings = (
      
        'select to_char(vendor_sid) as VENDOR_SID, vendor_name, created_d' +
        'ate'
      'from plugin_vendor_v'
      'order by vendor_name')
    Left = 208
    Top = 88
    object qryRProPluginVendorsVENDOR_SID: TStringField
      FieldName = 'VENDOR_SID'
      Origin = 'VENDOR_SID'
      Size = 40
    end
    object qryRProPluginVendorsVENDOR_NAME: TWideStringField
      FieldName = 'VENDOR_NAME'
      Origin = 'VENDOR_NAME'
      Required = True
      Size = 40
    end
    object qryRProPluginVendorsCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
      Origin = 'CREATED_DATE'
    end
  end
  object qryRProPluginDataSets: TFDQuery
    Active = True
    Filtered = True
    ConstraintsEnabled = True
    MasterSource = dsRProPluginVendors
    MasterFields = 'VENDOR_SID'
    DetailFields = 'VENDOR_SID'
    Connection = rproConn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select to_char(dataset_sid) as DATASET_SID, vendor_sid, dataset_' +
        'name, created_date'
      'from plugin_dataset_v'
      'where vendor_sid = :VENDOR_SID'
      '')
    Left = 392
    Top = 144
    ParamData = <
      item
        Name = 'VENDOR_SID'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = '7796004949480640247'
      end>
    object qryRProPluginDataSetsDATASET_SID2: TStringField
      FieldName = 'DATASET_SID'
      Origin = 'DATASET_SID'
      Size = 40
    end
    object qryRProPluginDataSetsVENDOR_SID: TFMTBCDField
      FieldName = 'VENDOR_SID'
      Origin = 'VENDOR_SID'
      Required = True
      Precision = 19
      Size = 0
    end
    object qryRProPluginDataSetsDATASET_NAME: TWideStringField
      FieldName = 'DATASET_NAME'
      Origin = 'DATASET_NAME'
      Required = True
      Size = 40
    end
    object qryRProPluginDataSetsCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
      Origin = 'CREATED_DATE'
    end
  end
  object qryRProPluginLookup1: TFDQuery
    Active = True
    MasterSource = srcRProPluginDatasets
    MasterFields = 'DATASET_SID'
    DetailFields = 'DATASET_SID'
    Connection = rproConn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select distinct to_char(dataset_sid) as DATASET_SID, Lookup_key1'
      'from plugin_dataset_index_v'
      'where dataset_sid = :Dataset_SID')
    Left = 576
    Top = 192
    ParamData = <
      item
        Name = 'DATASET_SID'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = '7796004949611777783'
      end>
    object qryRProPluginLookup1DATASET_SID: TStringField
      FieldName = 'DATASET_SID'
      Origin = 'DATASET_SID'
      Size = 40
    end
    object qryRProPluginLookup1LOOKUP_KEY1: TStringField
      FieldName = 'LOOKUP_KEY1'
      Origin = 'LOOKUP_KEY1'
      Size = 80
    end
  end
  object qryRProPluginLookup2: TFDQuery
    Active = True
    MasterSource = dsRProPluginLookup1
    MasterFields = 'DATASET_SID;LOOKUP_KEY1'
    Connection = rproConn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select rec_no, to_char(rec_sid) as REC_SID, lookup_key2, created' +
        '_date'
      'from plugin_dataset_index_v'
      'where '
      '  dataset_sid = :Dataset_SID'
      '  and lookup_key1 = :Lookup_Key1')
    Left = 776
    Top = 248
    ParamData = <
      item
        Name = 'DATASET_SID'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = '7796004949611777783'
      end
      item
        Name = 'LOOKUP_KEY1'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = 'AstroLoyaltyLicense'
      end>
    object qryRProPluginLookup2REC_NO: TBCDField
      FieldName = 'REC_NO'
      Origin = 'REC_NO'
      Required = True
      Precision = 10
      Size = 0
    end
    object qryRProPluginLookup2REC_SID: TStringField
      FieldName = 'REC_SID'
      Origin = 'REC_SID'
      Size = 40
    end
    object qryRProPluginLookup2LOOKUP_KEY2: TStringField
      FieldName = 'LOOKUP_KEY2'
      Origin = 'LOOKUP_KEY2'
      Size = 80
    end
    object qryRProPluginLookup2CREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
      Origin = 'CREATED_DATE'
    end
  end
  object srcRProPluginDatasets: TDataSource
    DataSet = qryRProPluginDataSets
    Left = 400
    Top = 256
  end
  object dsRProPluginVendors: TDataSource
    DataSet = qryRProPluginVendors
    Left = 208
    Top = 216
  end
  object dsRProPluginLookup1: TDataSource
    DataSet = qryRProPluginLookup1
    Left = 576
    Top = 304
  end
  object srcRProPluginLookup2: TDataSource
    DataSet = qryRProPluginLookup2
    Left = 784
    Top = 360
  end
  object qryRProPluginRecord: TFDQuery
    Active = True
    MasterSource = srcRProPluginLookup2
    MasterFields = 'REC_SID'
    DetailFields = 'REC_SID'
    Connection = rproConn
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from plugin_dataset_record_v'
      'where rec_sid = :REC_SID')
    Left = 992
    Top = 296
    ParamData = <
      item
        Name = 'REC_SID'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = '7796012525903222261'
      end>
    object qryRProPluginRecordREC_SID: TFMTBCDField
      FieldName = 'REC_SID'
      Origin = 'REC_SID'
      Required = True
      Precision = 19
      Size = 0
    end
    object qryRProPluginRecordREC_VALUE: TWideStringField
      FieldName = 'REC_VALUE'
      Origin = 'REC_VALUE'
      Size = 2000
    end
    object qryRProPluginRecordCREATED_DATE: TDateTimeField
      FieldName = 'CREATED_DATE'
      Origin = 'CREATED_DATE'
    end
    object qryRProPluginRecordMODIFIED_DATE: TDateTimeField
      FieldName = 'MODIFIED_DATE'
      Origin = 'MODIFIED_DATE'
    end
  end
end
