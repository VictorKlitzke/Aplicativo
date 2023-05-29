object Banco: TBanco
  OldCreateOrder = False
  Height = 205
  Width = 372
  object Connection: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'vgmobile'
    Username = 'VGServices'
    Server = '10.1.1.103'
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 32
    EncryptedPassword = '89FF98FF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 112
    Top = 24
  end
  object qrUsuariosPSQ: TUniQuery
    Connection = Connection
    SQL.Strings = (
      'select * from usuarios where id = :id')
    Left = 320
    Top = 104
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
    object qrUsuariosPSQLOGADO: TIntegerField
      FieldName = 'LOGADO'
      Required = True
    end
  end
  object qrListar: TUniQuery
    Connection = Connection
    SQL.Strings = (
      'SELECT '
      '  '
      ' USUARIOS.ID AS ID_USERS, '
      ' USUARIOS.NOME, '
      ' USUARIOS.EMAIL, '
      ' USUARIOS.LOGADO,'
      ' USUARIOS.TELEFONE, '
      ' USUARIOS.SENHA,  '
      ' USUARIOS.PROFISSAO,     '
      ' SERVICOS.ID AS ID_SERVICOS,  '
      ' SERVICOS.SERVICO, '
      ' SERVICOS.DESCRISCAO,  '
      ' SERVICOS.VALOR,  '
      ' SERVICOS.DESCONTO, '
      ' SERVICOS.DESCONTO, '
      ' SERVICOS.FORMA_PAGAMENTO, '
      ' SERVICOS.ESTADO,  '
      ' SERVICOS.CIDADE, '
      ' SERVICOS.BAIRRO,  '
      ' SERVICOS.ENDERECO,  '
      ' SERVICOS.ID_USUARIO'
      'FROM   '
      ' USUARIOS USUARIOS '
      ' JOIN SERVICOS ON SERVICOS.ID_USUARIO = USUARIOS.ID')
    Left = 320
    Top = 5
    object qrListarID_USERS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USERS'
    end
    object qrListarNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
    object qrListarEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 50
    end
    object qrListarTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 25
    end
    object qrListarSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 12
    end
    object qrListarPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Required = True
      Size = 100
    end
    object qrListarID_SERVICOS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_SERVICOS'
      ReadOnly = True
    end
    object qrListarSERVICO: TStringField
      FieldName = 'SERVICO'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qrListarDESCRISCAO: TMemoField
      FieldName = 'DESCRISCAO'
      ReadOnly = True
      Required = True
      BlobType = ftMemo
    end
    object qrListarVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
      Required = True
    end
    object qrListarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
      Required = True
    end
    object qrListarFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListarESTADO: TStringField
      FieldName = 'ESTADO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListarCIDADE: TStringField
      FieldName = 'CIDADE'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListarBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListarENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object qrListarID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ReadOnly = True
      Required = True
    end
    object qrListarLOGADO: TIntegerField
      FieldName = 'LOGADO'
      Required = True
    end
  end
  object qrServicosPSQ: TUniQuery
    Connection = Connection
    Left = 320
    Top = 56
  end
end
