object Banco: TBanco
  OldCreateOrder = False
  Height = 205
  Width = 372
  object Connection: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'hifuzion'
    Username = 'HFZ'
    Server = '192.168.0.103'
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 32
    EncryptedPassword = '97FF99FF85FF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 112
    Top = 24
  end
  object qrUsuariosPSQ: TUniQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID = :ID')
    Active = True
    Left = 80
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        Value = nil
      end>
    object qrUsuariosPSQID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object qrUsuariosPSQNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qrUsuariosPSQEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 50
    end
    object qrUsuariosPSQTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 25
    end
    object qrUsuariosPSQSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 12
    end
    object qrUsuariosPSQPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Required = True
      Size = 100
    end
    object qrUsuariosPSQSTATUS: TIntegerField
      FieldName = 'STATUS'
      Required = True
    end
  end
  object qrServicosPSQ: TUniQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM SERVICOS WHERE ID = :ID')
    Left = 168
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
    object qrServicosPSQID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object qrServicosPSQSERVICO: TStringField
      FieldName = 'SERVICO'
      Required = True
      Size = 100
    end
    object qrServicosPSQDESCRISCAO: TMemoField
      FieldName = 'DESCRISCAO'
      Required = True
      BlobType = ftMemo
    end
    object qrServicosPSQVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      Required = True
    end
    object qrServicosPSQDESCONTO_SERVICO: TFloatField
      FieldName = 'DESCONTO_SERVICO'
      Required = True
    end
    object qrServicosPSQID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qrServicosPSQFORMA_PAGEMTO: TStringField
      FieldName = 'FORMA_PAGEMTO'
      Required = True
      Size = 50
    end
    object qrServicosPSQESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      Size = 50
    end
    object qrServicosPSQCIDADE: TStringField
      FieldName = 'CIDADE'
      Required = True
      Size = 50
    end
    object qrServicosPSQBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Required = True
      Size = 50
    end
    object qrServicosPSQENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 50
    end
    object qrServicosPSQNUMERO_CASA: TFloatField
      FieldName = 'NUMERO_CASA'
      Required = True
    end
  end
end
