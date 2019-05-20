



CREATE TABLE cat_generales
( 
	IdGeneral            integer  NOT NULL ,
	IdTipoGeneral        integer  NULL ,
	DesGeneral           varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_generales
	ADD  PRIMARY KEY (IdGeneral ASC)
go



CREATE INDEX XIF1cat_generales ON cat_generales
( 
	IdTipoGeneral         ASC
)
go



CREATE TABLE cat_parametros
( 
	IdParametro          integer  NOT NULL ,
	DesParametro         varchar(20)  NULL ,
	Valor                integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_parametros
	ADD  PRIMARY KEY (IdParametro ASC)
go



CREATE TABLE cat_periodos
( 
	IdPeriodo            smallint  NOT NULL ,
	DesPeriodo           varchar(100)  NULL ,
	NombreCorto          varchar(30)  NULL ,
	PeriodoIni           datetime  NULL ,
	PeriodoFin           datetime  NULL ,
	Año                  smallint  NULL ,
	NumPeriodo           char(1)  NULL ,
	ClavePeriodo         varchar(5)  NULL ,
	TipoPeriodo          varchar(50)  NULL ,
	NumDias              smallint  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_periodos
	ADD  PRIMARY KEY (IdPeriodo ASC)
go



CREATE TABLE cat_periodos_actividades
( 
	IdPeriodo            smallint  NOT NULL ,
	IdActividad          smallint  NOT NULL ,
	DesActividad         varchar(200)  NULL ,
	FechaIni             datetime  NULL ,
	FechaFin             datetime  NULL ,
	TipoDia              vaRchar(50)  NULL ,
	SeLabora             char(1)  NULL ,
	SeSuspendeClases     char(1)  NULL ,
	VerAPartirDe         datetime  NULL ,
	VerHasta             datetime  NULL ,
	Justificacion        varchar(1000)  NULL ,
	Mensaje              varchar(3000)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_periodos_actividades
	ADD  PRIMARY KEY (IdPeriodo ASC,IdActividad ASC)
go



CREATE INDEX XIF5cat_periodos_actividades ON cat_periodos_actividades
( 
	IdPeriodo             ASC
)
go



CREATE TABLE cat_periodos_actividades_archivos
( 
	IdPeriodo            smallint  NOT NULL ,
	IdActividad          smallint  NOT NULL ,
	IdRutaArchivo        integer  NOT NULL ,
	IdTipoArchivo        integer  NULL ,
	RutaArchivo          varchar(1000)  NULL ,
	Principal            char(1)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_periodos_actividades_archivos
	ADD  PRIMARY KEY (IdPeriodo ASC,IdActividad ASC,IdRutaArchivo ASC)
go



CREATE INDEX XIF1cat_periodos_actividades_archivos_AS ON cat_periodos_actividades_archivos
( 
	IdActividad           ASC,
	IdPeriodo             ASC
)
go



CREATE INDEX XIF2cat_periodos_actividades_archivos_AS ON cat_periodos_actividades_archivos
( 
	IdTipoArchivo         ASC
)
go



CREATE TABLE cat_periodos_suspension_labores
( 
	IdPeriodo            smallint  NOT NULL ,
	IdActividad          smallint  NOT NULL ,
	IdSuspension         varchar(20)  NOT NULL ,
	HoraIni              time  NULL ,
	HoraFin              time  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_periodos_suspension_labores
	ADD  PRIMARY KEY (IdPeriodo ASC,IdActividad ASC,IdSuspension ASC)
go



CREATE INDEX XIF1cat_periodos_suspension_labores ON cat_periodos_suspension_labores
( 
	IdActividad           ASC,
	IdPeriodo             ASC
)
go



CREATE TABLE cat_tipo_estatus
( 
	IdTipoEstatus        integer  NOT NULL ,
	DesTipoEstatus       varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_tipo_estatus
	ADD  PRIMARY KEY (IdTipoEstatus ASC)
go



CREATE TABLE cat_tipos_generales
( 
	IdTipoGeneral        integer  NOT NULL ,
	DesTipoGeneral       varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_tipos_generales
	ADD  PRIMARY KEY (IdTipoGeneral ASC)
go



CREATE TABLE ce_cajas_gestion
( 
	IdGestionCaja        integer  NOT NULL ,
	IdCaja               integer  NULL ,
	IdEstatus            integer  NULL ,
	Activo               varchar(20)  NULL ,
	Borrado              varchar(20)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cajas_gestion
	ADD  PRIMARY KEY (IdGestionCaja ASC)
go



CREATE INDEX XIF1ce_cajas_gestion ON ce_cajas_gestion
( 
	IdCaja                ASC
)
go



CREATE INDEX XIF2ce_cajas_gestion ON ce_cajas_gestion
( 
	IdEstatus             ASC
)
go



CREATE TABLE ce_cajas_movimientos
( 
	IdMovto              integer  NOT NULL ,
	IdGestionCaja        integer  NULL ,
	IdMovtoCaja          integer  NULL ,
	IdTipoMovtoCaja      integer  NULL ,
	MontoAut             float  NULL ,
	MontoReal            float  NULL ,
	Observacion          varchar(255)  NULL ,
	Activo               varchar(20)  NULL ,
	Borrado              varchar(20)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cajas_movimientos
	ADD  PRIMARY KEY (IdMovto ASC)
go



CREATE INDEX XIF1ce_caja ON ce_cajas_movimientos
( 
	IdTipoMovtoCaja       ASC
)
go



CREATE INDEX XIF2ce_caja ON ce_cajas_movimientos
( 
	IdGestionCaja         ASC
)
go



CREATE TABLE ce_cat_almacenes
( 
	IdAlmacen            varchar(20)  NOT NULL ,
	DesAlmacen           varchar(20)  NULL ,
	Capacidad            varchar(20)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_almacenes
	ADD  PRIMARY KEY (IdAlmacen ASC)
go



CREATE TABLE ce_cat_cajas
( 
	IdCaja               integer  NOT NULL ,
	DesCaja              varchar(50)  NULL ,
	IdTipoCaja           integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_cajas
	ADD  PRIMARY KEY (IdCaja ASC)
go



CREATE INDEX XIF1ce_cat_cajas ON ce_cat_cajas
( 
	IdTipoCaja            ASC
)
go



CREATE TABLE ce_cat_conceptos_prod_serv
( 
	IdProdServ           integer  NOT NULL ,
	CodigoBarras         varchar(20)  NULL ,
	ClaveProdServ        varchar(20)  NULL ,
	DesProdServ          varchar(20)  NULL ,
	IdTipoProdServ       integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_conceptos_prod_serv
	ADD  PRIMARY KEY (IdProdServ ASC)
go



CREATE INDEX XIF1ce_cat_conceptos_prod_serv ON ce_cat_conceptos_prod_serv
( 
	IdTipoProdServ        ASC
)
go



CREATE TABLE ce_cat_inventarios
( 
	IdProdServ           integer  NOT NULL ,
	IdAlmacen            varchar(20)  NOT NULL ,
	IdPresentacion       varchar(20)  NOT NULL ,
	Ubicacion            varchar(50)  NULL ,
	CantidadDisponible   float  NULL ,
	StockMaximo          float  NULL ,
	StockMinimo          float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	CantidadApartada     float  NULL ,
	CantidadMerma        float  NULL 
)
go



ALTER TABLE ce_cat_inventarios
	ADD  PRIMARY KEY (IdProdServ ASC,IdAlmacen ASC,IdPresentacion ASC)
go



CREATE INDEX XIF1ce_cat_inventario ON ce_cat_inventarios
( 
	IdAlmacen             ASC
)
go



CREATE INDEX XIF2ce_cat_inventario ON ce_cat_inventarios
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE ce_cat_listas
( 
	IdLista              integer  NOT NULL ,
	DesLista             varchar(50)  NULL ,
	TipoLista            varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_listas
	ADD  PRIMARY KEY (IdLista ASC)
go



CREATE TABLE ce_cat_listas_precios_prod_serv
( 
	IdLista              integer  NOT NULL ,
	IdProdServ           integer  NOT NULL ,
	IdPresentacion       varchar(20)  NOT NULL ,
	Precio               float  NULL ,
	IVA                  float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_listas_precios_prod_serv
	ADD  PRIMARY KEY (IdLista ASC,IdProdServ ASC,IdPresentacion ASC)
go



CREATE INDEX XIF1ce_cat_prodser_precios ON ce_cat_listas_precios_prod_serv
( 
	IdLista               ASC
)
go



CREATE INDEX XIF2ce_cat_prodser_precios ON ce_cat_listas_precios_prod_serv
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE ce_cat_prod_serv
( 
	IdProdServ           integer  NOT NULL ,
	Marca                varchar(50)  NULL ,
	Modelo               varchar(50)  NULL ,
	IdTipoCondicion      integer  NULL ,
	IdTipoDepto          integer  NULL ,
	IdTipoGrupo          integer  NULL ,
	IdEstatus            integer  NULL ,
	PuntosXVenta         integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_prod_serv
	ADD  PRIMARY KEY (IdProdServ ASC)
go



CREATE INDEX XIF2ce_cat_prod_serv ON ce_cat_prod_serv
( 
	IdTipoCondicion       ASC
)
go



CREATE INDEX XIF3ce_cat_prod_serv ON ce_cat_prod_serv
( 
	IdEstatus             ASC
)
go



CREATE INDEX XIF4ce_cat_prod_serv ON ce_cat_prod_serv
( 
	IdTipoGrupo           ASC
)
go



CREATE INDEX XIF5ce_cat_prod_serv ON ce_cat_prod_serv
( 
	IdTipoDepto           ASC
)
go



CREATE UNIQUE INDEX XIF7ce_cat_prod_serv ON ce_cat_prod_serv
( 
	IdProdServ            ASC
)
go



CREATE TABLE ce_cat_prod_serv_cajeables
( 
	IdProdServ           integer  NOT NULL ,
	IdTipoCajeable       integer  NOT NULL ,
	Valor                integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_prod_serv_cajeables
	ADD  PRIMARY KEY (IdProdServ ASC,IdTipoCajeable ASC)
go



CREATE INDEX XIF1ce_cat_prod_serv_cajeables ON ce_cat_prod_serv_cajeables
( 
	IdProdServ            ASC
)
go



CREATE INDEX XIF2ce_cat_prod_serv_cajeables ON ce_cat_prod_serv_cajeables
( 
	IdTipoCajeable        ASC
)
go



CREATE TABLE ce_cat_prod_serv_caracteristicas
( 
	IdCaracteristica     varchar(20)  NOT NULL ,
	IdProdServ           integer  NOT NULL ,
	DesCaracteristica    varchar(20)  NULL ,
	Valor                varchar(255)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_prod_serv_caracteristicas
	ADD  PRIMARY KEY (IdCaracteristica ASC,IdProdServ ASC)
go



CREATE INDEX XIF1ce_cat_caracteristicas ON ce_cat_prod_serv_caracteristicas
( 
	IdProdServ            ASC
)
go



CREATE TABLE ce_cat_prod_serv_presenta
( 
	IdProdServ           integer  NOT NULL ,
	IdPresentacion       varchar(20)  NOT NULL ,
	Color1               varchar(20)  NULL ,
	Color2               varchar(20)  NULL ,
	IdUnidadMedida       varchar(20)  NULL ,
	Valor                float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_prod_serv_presenta
	ADD  PRIMARY KEY (IdProdServ ASC,IdPresentacion ASC)
go



CREATE INDEX XIF1ce_cat_prod_ser_presenta ON ce_cat_prod_serv_presenta
( 
	IdProdServ            ASC
)
go



CREATE INDEX XIF2ce_cat_prod_ser_presenta ON ce_cat_prod_serv_presenta
( 
	IdUnidadMedida        ASC
)
go



CREATE TABLE ce_cat_prod_serv_presenta_archivos
( 
	IdPresentacion       varchar(20)  NOT NULL ,
	IdRutaArchivo        integer  NOT NULL ,
	IdProdServ           integer  NOT NULL ,
	IdTipoArchivo        integer  NULL ,
	RutaArchivo          varchar(255)  NULL ,
	Principal            char(1)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_prod_serv_presenta_archivos
	ADD  PRIMARY KEY (IdPresentacion ASC,IdRutaArchivo ASC,IdProdServ ASC)
go



CREATE INDEX XIF1ce_cat_prod_serv_presenta_archivos ON ce_cat_prod_serv_presenta_archivos
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE INDEX XIF2ce_cat_prod_serv_presenta_archivos ON ce_cat_prod_serv_presenta_archivos
( 
	IdTipoArchivo         ASC
)
go



CREATE TABLE ce_cat_promo_prod_serv
( 
	IdProdServ           integer  NOT NULL ,
	IdPromocion          varchar(20)  NOT NULL ,
	IdPresentacion       varchar(20)  NOT NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_promo_prod_serv
	ADD  PRIMARY KEY (IdProdServ ASC,IdPromocion ASC,IdPresentacion ASC)
go



CREATE INDEX XIF1ce_cat_promo_ProdServ ON ce_cat_promo_prod_serv
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE INDEX XIF2ce_cat_promo_ProdServ ON ce_cat_promo_prod_serv
( 
	IdPromocion           ASC
)
go



CREATE TABLE ce_cat_promociones
( 
	IdPromocion          varchar(20)  NOT NULL ,
	DesPromocion         varchar(20)  NULL ,
	FechaExpiraFin       datetime  NULL ,
	FechaExpiraIni       datetime  NULL ,
	Valor                varchar(20)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	IdTipoPromocion      integer  NULL ,
	IdTipoDescuento      integer  NULL 
)
go



ALTER TABLE ce_cat_promociones
	ADD  PRIMARY KEY (IdPromocion ASC)
go



CREATE INDEX XIF2ce_cat_promociones ON ce_cat_promociones
( 
	IdTipoPromocion       ASC
)
go



CREATE INDEX XIF3ce_cat_promociones ON ce_cat_promociones
( 
	IdTipoDescuento       ASC
)
go



CREATE TABLE ce_cat_promociones_aplica_a
( 
	IdPromocion          varchar(20)  NOT NULL ,
	Valor                varchar(50)  NOT NULL ,
	IdTipoAplicaA        integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_promociones_aplica_a
	ADD  PRIMARY KEY (IdPromocion ASC,Valor ASC)
go



CREATE INDEX XIF1ce_cat_prmociones_aplica_a ON ce_cat_promociones_aplica_a
( 
	IdPromocion           ASC
)
go



CREATE INDEX XIF2ce_cat_prmociones_aplica_a ON ce_cat_promociones_aplica_a
( 
	IdTipoAplicaA         ASC
)
go



CREATE TABLE ce_cat_promociones_cantidad_fisica
( 
	IdPromocion          varchar(20)  NOT NULL ,
	Valor                integer  NULL ,
	ValorAcumulado       integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	IdTipoDescuento      integer  NULL 
)
go



ALTER TABLE ce_cat_promociones_cantidad_fisica
	ADD  PRIMARY KEY (IdPromocion ASC)
go



CREATE UNIQUE INDEX XIF1ce_cat_promociones_cantidad_fisica ON ce_cat_promociones_cantidad_fisica
( 
	IdPromocion           ASC
)
go



CREATE INDEX XIF2ce_cat_promociones_cantidad_fisica ON ce_cat_promociones_cantidad_fisica
( 
	IdTipoDescuento       ASC
)
go



CREATE TABLE ce_cat_tipos_canjeables
( 
	IdTipoCajeable       integer  NOT NULL ,
	DesTipoCanjeable     varchar(20)  NULL ,
	ValorPuntos          integer  NULL ,
	ValorMonedaLocal     integer  NULL 
)
go



ALTER TABLE ce_cat_tipos_canjeables
	ADD  PRIMARY KEY (IdTipoCajeable ASC)
go



CREATE TABLE ce_cat_unidad_medidas
( 
	IdUnidadMedida       varchar(20)  NOT NULL ,
	DesUnidadMedida      varchar(20)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_cat_unidad_medidas
	ADD  PRIMARY KEY (IdUnidadMedida ASC)
go



CREATE TABLE ce_creditos
( 
	IdCredito            integer  NOT NULL ,
	IdPedido             integer  NULL ,
	IdTipoPeriodoPago    integer  NULL ,
	PlazoEnMeses         integer  NULL ,
	InteresCredito       float  NULL ,
	IdTipoPeriodoMora    integer  NULL ,
	InteresMoratorio     float  NULL ,
	MesNatural           char(1)  NULL ,
	NumDiasPago          integer  NULL ,
	MontoTotal           integer  NULL ,
	Enganche             float  NULL ,
	IdAcreedor           integer  NULL ,
	IdAval               integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_creditos
	ADD  PRIMARY KEY (IdCredito ASC)
go



CREATE INDEX XIF1ce_creditos ON ce_creditos
( 
	IdTipoPeriodoPago     ASC
)
go



CREATE INDEX XIF2ce_creditos ON ce_creditos
( 
	IdPedido              ASC
)
go



CREATE INDEX XIF3ce_creditos ON ce_creditos
( 
	IdTipoPeriodoMora     ASC
)
go



CREATE INDEX XIF4ce_creditos ON ce_creditos
( 
	IdAval                ASC
)
go



CREATE INDEX XIF5ce_creditos ON ce_creditos
( 
	IdAcreedor            ASC
)
go



CREATE TABLE ce_creditos_beneficioarios
( 
	IdCredito            integer  NOT NULL ,
	IdCreditoBene        integer  NOT NULL ,
	IdBeneficiario       integer  NULL ,
	Porcentaje           integer  NULL ,
	Activo               varchar(20)  NULL ,
	Borrado              varchar(20)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_creditos_beneficioarios
	ADD  PRIMARY KEY (IdCredito ASC,IdCreditoBene ASC)
go



CREATE INDEX XIF1ce_creditos_beneficioarios ON ce_creditos_beneficioarios
( 
	IdCredito             ASC
)
go



CREATE INDEX XIF2ce_creditos_beneficioarios ON ce_creditos_beneficioarios
( 
	IdBeneficiario        ASC
)
go



CREATE TABLE ce_creditos_det
( 
	IdCredito            integer  NOT NULL ,
	IdCreditoDet         integer  NOT NULL ,
	NumPago              integer  NULL ,
	SaldoCapitalAnterior float  NULL ,
	PagoCapital          float  NULL ,
	PagoInteres          float  NULL ,
	MontoPago            float  NULL ,
	SaldoCapitalActual   float  NULL ,
	FechaPago            datetime  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_creditos_det
	ADD  PRIMARY KEY (IdCredito ASC,IdCreditoDet ASC)
go



CREATE INDEX XIF1ce_c ON ce_creditos_det
( 
	IdCredito             ASC
)
go



CREATE TABLE ce_facturas
( 
	IdFactura            integer  NOT NULL ,
	IdVenta              integer  NULL ,
	FolioFactura         varchar(20)  NULL ,
	IdEmisor             integer  NULL ,
	IdDomicilioEmisor    integer  NULL ,
	IdReceptor           integer  NULL ,
	IdDomicilioReceptor  integer  NULL ,
	SubTotal             float  NULL ,
	IVA                  float  NULL ,
	Total                float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_facturas
	ADD  PRIMARY KEY (IdFactura ASC)
go



CREATE INDEX XIF1ce_facturas ON ce_facturas
( 
	IdVenta               ASC
)
go



CREATE INDEX XIF2ce_facturas ON ce_facturas
( 
	IdEmisor              ASC
)
go



CREATE INDEX XIF3ce_facturas ON ce_facturas
( 
	IdReceptor            ASC
)
go



CREATE INDEX XIF4ce_facturas ON ce_facturas
( 
	IdDomicilioEmisor     ASC
)
go



CREATE INDEX XIF5ce_facturas ON ce_facturas
( 
	IdDomicilioReceptor   ASC
)
go



CREATE TABLE ce_inventario_series_caracteristicas
( 
	NumSerie             varchar(20)  NOT NULL ,
	IdCaracterisitca     integer  NOT NULL ,
	DesCaracteristica    varchar(50)  NULL ,
	Valor                varchar(255)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_inventario_series_caracteristicas
	ADD  PRIMARY KEY (NumSerie ASC,IdCaracterisitca ASC)
go



CREATE INDEX XIF1ce_cat_prod_serv_series_caracteristicas ON ce_inventario_series_caracteristicas
( 
	NumSerie              ASC
)
go



CREATE TABLE ce_inventarios_series
( 
	NumSerie             varchar(20)  NOT NULL ,
	IdAlmacen            varchar(20)  NULL ,
	IdProdServ           integer  NULL ,
	IdPresentacion       varchar(20)  NULL ,
	Referencia           varchar(50)  NULL ,
	IdTipoCondicion      integer  NULL ,
	Activo               varchar(20)  NULL ,
	Borrado              varchar(20)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	UbicacionDet         varchar(50)  NULL 
)
go



ALTER TABLE ce_inventarios_series
	ADD  PRIMARY KEY (NumSerie ASC)
go



CREATE INDEX XIF3ce_cat_prod_serv_series ON ce_inventarios_series
( 
	IdTipoCondicion       ASC
)
go



CREATE INDEX XIF4ce_cat_prod_serv_series ON ce_inventarios_series
( 
	IdAlmacen             ASC,
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE ce_invetarios_series_estatus
( 
	NumSerie             varchar(20)  NOT NULL ,
	IdEstatusDet         integer  NOT NULL ,
	IdEstatus            integer  NULL ,
	TipoPedidoVenta      char(1)  NULL ,
	Actual               char(1)  NULL ,
	Observacion          varchar(255)  NULL ,
	ReferenciaPedVta     varchar(50)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_invetarios_series_estatus
	ADD  PRIMARY KEY (NumSerie ASC,IdEstatusDet ASC)
go



CREATE INDEX XIF1ce_cat_prod_serv_series_estatus ON ce_invetarios_series_estatus
( 
	NumSerie              ASC
)
go



CREATE INDEX XIF2ce_cat_prod_serv_series_estatus ON ce_invetarios_series_estatus
( 
	IdEstatus             ASC
)
go



CREATE TABLE ce_lista_favoritos
( 
	IdListaFavorito      integer  NOT NULL ,
	DesListaFavorito     varchar(20)  NULL ,
	Activo               varchar(20)  NULL ,
	Borrado              varchar(20)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL 
)
go



ALTER TABLE ce_lista_favoritos
	ADD  PRIMARY KEY (IdListaFavorito ASC)
go



CREATE TABLE ce_listas_favoritos_prod_serv
( 
	IdListaFavoritoDet   varchar(20)  NOT NULL ,
	IdProdServ           integer  NULL ,
	IdListaFavorito      integer  NULL ,
	IdPresentacion       varchar(20)  NULL ,
	Precio               float  NULL ,
	NotificarBajaPrecio  char(1)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_listas_favoritos_prod_serv
	ADD  PRIMARY KEY (IdListaFavoritoDet ASC)
go



CREATE INDEX XIF1ce_listas_favoritos_prod_serv ON ce_listas_favoritos_prod_serv
( 
	IdListaFavorito       ASC
)
go



CREATE INDEX XIF2ce_listas_favoritos_prod_serv ON ce_listas_favoritos_prod_serv
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE ce_listas_montos_conceptos
( 
	IdLista              integer  NOT NULL ,
	IdProdServ           integer  NOT NULL ,
	IdTipoConcepto       integer  NULL ,
	IdTipoValor          integer  NULL ,
	IdTipoAplicaA        integer  NULL ,
	IdProdServReferencia integer  NULL ,
	IdPresentaReferencia varchar(20)  NULL ,
	Valor                float  NULL ,
	IVA                  float  NULL ,
	SumaResta            char(1)  NULL 
)
go



ALTER TABLE ce_listas_montos_conceptos
	ADD  PRIMARY KEY (IdLista ASC,IdProdServ ASC)
go



CREATE INDEX XIF1ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdLista               ASC
)
go



CREATE INDEX XIF2ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdProdServ            ASC
)
go



CREATE INDEX XIF3ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdTipoValor           ASC
)
go



CREATE INDEX XIF4ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdTipoConcepto        ASC
)
go



CREATE INDEX XIF5ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdTipoAplicaA         ASC
)
go



CREATE INDEX XIF6ce_listas_conceptos_montos ON ce_listas_montos_conceptos
( 
	IdProdServReferencia  ASC,
	IdPresentaReferencia  ASC
)
go



CREATE TABLE ce_pedidos
( 
	IdPedido             integer  NOT NULL ,
	IdPersona            integer  NULL ,
	IdTipoPedido         integer  NULL ,
	FechaExpiraIni       datetime  NULL ,
	FechaExpiraFin       datetime  NULL ,
	SubTotal             float  NULL ,
	IVA                  float  NULL ,
	Total                float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_pedidos
	ADD  PRIMARY KEY (IdPedido ASC)
go



CREATE INDEX XIF1ce_pedidos ON ce_pedidos
( 
	IdPersona             ASC
)
go



CREATE INDEX XIF2ce_pedidos ON ce_pedidos
( 
	IdTipoPedido          ASC
)
go



CREATE TABLE ce_pedidos_prod_serv
( 
	IdPedido             integer  NOT NULL ,
	IdPedidoDet          integer  NOT NULL ,
	IdProdServ           integer  NULL ,
	IdPresentacion       varchar(20)  NULL ,
	Cantidad             float  NULL ,
	PrecioUnitario       float  NULL ,
	IVA                  float  NULL ,
	Monto                float  NULL ,
	MontoIVA             float  NULL ,
	SubTotal             float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_pedidos_prod_serv
	ADD  PRIMARY KEY (IdPedido ASC,IdPedidoDet ASC)
go



CREATE INDEX XIF1ce_pedidos_prod_serv ON ce_pedidos_prod_serv
( 
	IdPedido              ASC
)
go



CREATE INDEX XIF2ce_pedidos_prod_serv ON ce_pedidos_prod_serv
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE ce_venta_forma_pago
( 
	IdVenta              integer  NOT NULL ,
	IdTipoFormaPago      integer  NULL ,
	NumDocumento         varchar(20)  NULL ,
	Nombre               varchar(50)  NULL ,
	Domicilio            varchar(50)  NULL ,
	Telefono             varchar(20)  NULL ,
	NumDoctoOficial      varchar(20)  NULL ,
	Sexo                 char(1)  NULL ,
	MontoValor           float  NULL ,
	RutaDocumento        varchar(255)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	IdTipoDoctoOficial   integer  NULL 
)
go



ALTER TABLE ce_venta_forma_pago
	ADD  PRIMARY KEY (IdVenta ASC)
go



CREATE UNIQUE INDEX XIF1ce_venta_forma_pago ON ce_venta_forma_pago
( 
	IdVenta               ASC
)
go



CREATE INDEX XIF2ce_venta_forma_pago ON ce_venta_forma_pago
( 
	IdTipoFormaPago       ASC
)
go



CREATE INDEX XIF3ce_venta_forma_pago ON ce_venta_forma_pago
( 
	IdTipoDoctoOficial    ASC
)
go



CREATE TABLE ce_ventas
( 
	IdVenta              integer  NOT NULL ,
	IdMovto              integer  NULL ,
	FolioVenta           integer  NULL ,
	IdTipoVenta          integer  NULL ,
	IdPedido             integer  NULL ,
	IdCliente            integer  NULL ,
	IdCajero             integer  NULL ,
	IdTipoFormaPago      integer  NULL ,
	SubTotal             integer  NULL ,
	IVA                  float  NULL ,
	Total                float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_ventas
	ADD  PRIMARY KEY (IdVenta ASC)
go



CREATE INDEX XIF1ce_ventas ON ce_ventas
( 
	IdTipoVenta           ASC
)
go



CREATE INDEX XIF2ce_ventas ON ce_ventas
( 
	IdPedido              ASC
)
go



CREATE INDEX XIF3ce_ventas ON ce_ventas
( 
	IdCliente             ASC
)
go



CREATE INDEX XIF4ce_ventas ON ce_ventas
( 
	IdCajero              ASC
)
go



CREATE INDEX XIF5ce_ventas ON ce_ventas
( 
	IdMovto               ASC
)
go



CREATE INDEX XIF6ce_ventas ON ce_ventas
( 
	IdTipoFormaPago       ASC
)
go



CREATE TABLE ce_ventas_prod_serv
( 
	IdVenta              integer  NOT NULL ,
	IdVentaDet           integer  NOT NULL ,
	IdProdServ           integer  NULL ,
	IdPresentacion       varchar(20)  NULL ,
	Cantidad             float  NULL ,
	PrecioUnitario       float  NULL ,
	IVA                  float  NULL ,
	Monto                float  NULL ,
	MontoIVA             float  NULL ,
	SubTotal             float  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE ce_ventas_prod_serv
	ADD  PRIMARY KEY (IdVenta ASC,IdVentaDet ASC)
go



CREATE INDEX XIF1ce_ventas_prod_serv ON ce_ventas_prod_serv
( 
	IdVenta               ASC
)
go



CREATE INDEX XIF2ce_ventas_prod_serv ON ce_ventas_prod_serv
( 
	IdPresentacion        ASC,
	IdProdServ            ASC
)
go



CREATE TABLE rh_cat_dir_webs
( 
	IdDirWeb             integer  NOT NULL ,
	IdPersona            integer  NULL ,
	IdTipoTelefono       integer  NULL ,
	DesDirWeb            varchar(50)  NULL ,
	DireccionWeb         varchar(255)  NULL ,
	Principal            char(1)  NULL ,
	IdTipoDirWeb         integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltAct          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE rh_cat_dir_webs
	ADD  PRIMARY KEY (IdDirWeb ASC)
go



CREATE INDEX XIF1rh_cat_ ON rh_cat_dir_webs
( 
	IdPersona             ASC
)
go



CREATE INDEX XIF2rh_cat_ ON rh_cat_dir_webs
( 
	IdTipoTelefono        ASC
)
go



CREATE TABLE rh_cat_domicilios
( 
	IdDomicilio          integer  NOT NULL ,
	IdPersona            integer  NULL ,
	Domicilio            varchar(50)  NULL ,
	EntreCalle1          varchar(50)  NULL ,
	EntreCalle2          varchar(50)  NULL ,
	CodigoPostal         varchar(10)  NULL ,
	Coordenadas          varchar(255)  NULL ,
	IdTipoDomicilio      integer  NULL ,
	RFC                  varchar(20)  NULL ,
	Principal            char(1)  NULL ,
	Pais                 varchar(50)  NULL ,
	Estado               varchar(50)  NULL ,
	Municipio            varchar(50)  NULL ,
	Localidad            varchar(50)  NULL ,
	Colonia              varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE rh_cat_domicilios
	ADD  PRIMARY KEY (IdDomicilio ASC)
go



CREATE INDEX XIF1cat_domicilios ON rh_cat_domicilios
( 
	IdTipoDomicilio       ASC
)
go



CREATE INDEX XIF2cat_domicilios ON rh_cat_domicilios
( 
	IdPersona             ASC
)
go



CREATE TABLE rh_cat_personas
( 
	IdPersona            integer  NOT NULL ,
	Nombre               varchar(20)  NULL ,
	ApPaterno            varchar(20)  NULL ,
	ApMaterno            varchar(20)  NULL ,
	PuntosAcumulados     integer  NULL ,
	Alias                varchar(20)  NULL ,
	Sexo                 char(1)  NULL ,
	RFC                  varchar(20)  NULL ,
	FechaNac             datetime  NULL ,
	RutaFoto             varchar(255)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE rh_cat_personas
	ADD  PRIMARY KEY (IdPersona ASC)
go



CREATE TABLE rh_cat_telefonos
( 
	IdTelefono           integer  NOT NULL ,
	IdPersona            integer  NULL ,
	CodPais              varchar(5)  NULL ,
	NumTelefono          varchar(20)  NULL ,
	NumExtension         varchar(10)  NULL ,
	Principal            char(1)  NULL ,
	IdTipoTelefono       integer  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE rh_cat_telefonos
	ADD  PRIMARY KEY (IdTelefono ASC)
go



CREATE INDEX XIF1rh_cat_telefonos ON rh_cat_telefonos
( 
	IdPersona             ASC
)
go



CREATE INDEX XIF2rh_cat_telefonos ON rh_cat_telefonos
( 
	IdTipoTelefono        ASC
)
go




ALTER TABLE cat_estatus
	ADD  FOREIGN KEY (IdTipoEstatus) REFERENCES cat_tipo_estatus(IdTipoEstatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE cat_generales
	ADD  FOREIGN KEY (IdTipoGeneral) REFERENCES cat_tipos_generales(IdTipoGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE cat_periodos_actividades
	ADD  FOREIGN KEY (IdPeriodo) REFERENCES cat_periodos(IdPeriodo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE cat_periodos_actividades_archivos
	ADD  FOREIGN KEY (IdPeriodo,IdActividad) REFERENCES cat_periodos_actividades(IdPeriodo,IdActividad)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE cat_periodos_actividades_archivos
	ADD  FOREIGN KEY (IdTipoArchivo) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE cat_periodos_suspension_labores
	ADD  FOREIGN KEY (IdPeriodo,IdActividad) REFERENCES cat_periodos_actividades(IdPeriodo,IdActividad)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cajas_gestion
	ADD  FOREIGN KEY (IdCaja) REFERENCES ce_cat_cajas(IdCaja)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cajas_gestion
	ADD  FOREIGN KEY (IdEstatus) REFERENCES cat_estatus(IdEstatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cajas_movimientos
	ADD  FOREIGN KEY (IdTipoMovtoCaja) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cajas_movimientos
	ADD  FOREIGN KEY (IdGestionCaja) REFERENCES ce_cajas_gestion(IdGestionCaja)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_cajas
	ADD  FOREIGN KEY (IdTipoCaja) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_conceptos_prod_serv
	ADD  FOREIGN KEY (IdTipoProdServ) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_inventarios
	ADD  FOREIGN KEY (IdAlmacen) REFERENCES ce_cat_almacenes(IdAlmacen)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_inventarios
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_listas_precios_prod_serv
	ADD  FOREIGN KEY (IdLista) REFERENCES ce_cat_listas(IdLista)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_listas_precios_prod_serv
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv
	ADD  FOREIGN KEY (IdTipoCondicion) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv
	ADD  FOREIGN KEY (IdEstatus) REFERENCES cat_estatus(IdEstatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv
	ADD  FOREIGN KEY (IdTipoGrupo) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv
	ADD  FOREIGN KEY (IdTipoDepto) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv
	ADD  FOREIGN KEY (IdProdServ) REFERENCES ce_cat_conceptos_prod_serv(IdProdServ)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_cajeables
	ADD  FOREIGN KEY (IdProdServ) REFERENCES ce_cat_prod_serv(IdProdServ)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_cajeables
	ADD  FOREIGN KEY (IdTipoCajeable) REFERENCES ce_cat_tipos_canjeables(IdTipoCajeable)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_caracteristicas
	ADD  FOREIGN KEY (IdProdServ) REFERENCES ce_cat_prod_serv(IdProdServ)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_presenta
	ADD  FOREIGN KEY (IdProdServ) REFERENCES ce_cat_prod_serv(IdProdServ)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_presenta
	ADD  FOREIGN KEY (IdUnidadMedida) REFERENCES ce_cat_unidad_medidas(IdUnidadMedida)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_presenta_archivos
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_prod_serv_presenta_archivos
	ADD  FOREIGN KEY (IdTipoArchivo) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promo_prod_serv
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promo_prod_serv
	ADD  FOREIGN KEY (IdPromocion) REFERENCES ce_cat_promociones(IdPromocion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones
	ADD  FOREIGN KEY (IdTipoPromocion) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones
	ADD  FOREIGN KEY (IdTipoDescuento) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones_aplica_a
	ADD  FOREIGN KEY (IdPromocion) REFERENCES ce_cat_promociones(IdPromocion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones_aplica_a
	ADD  FOREIGN KEY (IdTipoAplicaA) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones_cantidad_fisica
	ADD  FOREIGN KEY (IdPromocion) REFERENCES ce_cat_promociones(IdPromocion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_cat_promociones_cantidad_fisica
	ADD  FOREIGN KEY (IdTipoDescuento) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos
	ADD  FOREIGN KEY (IdTipoPeriodoPago) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos
	ADD  FOREIGN KEY (IdPedido) REFERENCES ce_pedidos(IdPedido)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos
	ADD  FOREIGN KEY (IdTipoPeriodoMora) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos
	ADD  FOREIGN KEY (IdAval) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos
	ADD  FOREIGN KEY (IdAcreedor) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos_beneficioarios
	ADD  FOREIGN KEY (IdCredito) REFERENCES ce_creditos(IdCredito)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos_beneficioarios
	ADD  FOREIGN KEY (IdBeneficiario) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_creditos_det
	ADD  FOREIGN KEY (IdCredito) REFERENCES ce_creditos(IdCredito)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas
	ADD  FOREIGN KEY (IdVenta) REFERENCES ce_ventas(IdVenta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas
	ADD  FOREIGN KEY (IdEmisor) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas
	ADD  FOREIGN KEY (IdReceptor) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas
	ADD  FOREIGN KEY (IdDomicilioEmisor) REFERENCES rh_cat_domicilios(IdDomicilio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas
	ADD  FOREIGN KEY (IdDomicilioReceptor) REFERENCES rh_cat_domicilios(IdDomicilio)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_inventario_series_caracteristicas
	ADD  FOREIGN KEY (NumSerie) REFERENCES ce_inventarios_series(NumSerie)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_inventarios_series
	ADD  FOREIGN KEY (IdTipoCondicion) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_inventarios_series
	ADD  FOREIGN KEY (IdProdServ,IdAlmacen,IdPresentacion) REFERENCES ce_cat_inventarios(IdProdServ,IdAlmacen,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_invetarios_series_estatus
	ADD  FOREIGN KEY (NumSerie) REFERENCES ce_inventarios_series(NumSerie)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_invetarios_series_estatus
	ADD  FOREIGN KEY (IdEstatus) REFERENCES cat_estatus(IdEstatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_favoritos_prod_serv
	ADD  FOREIGN KEY (IdListaFavorito) REFERENCES ce_lista_favoritos(IdListaFavorito)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_favoritos_prod_serv
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdLista) REFERENCES ce_cat_listas(IdLista)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdProdServ) REFERENCES ce_cat_conceptos_prod_serv(IdProdServ)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdTipoValor) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdTipoConcepto) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdTipoAplicaA) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_listas_montos_conceptos
	ADD  FOREIGN KEY (IdProdServReferencia,IdPresentaReferencia) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_pedidos
	ADD  FOREIGN KEY (IdPersona) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_pedidos
	ADD  FOREIGN KEY (IdTipoPedido) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_pedidos_prod_serv
	ADD  FOREIGN KEY (IdPedido) REFERENCES ce_pedidos(IdPedido)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_pedidos_prod_serv
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_venta_forma_pago
	ADD  FOREIGN KEY (IdVenta) REFERENCES ce_ventas(IdVenta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_venta_forma_pago
	ADD  FOREIGN KEY (IdTipoFormaPago) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_venta_forma_pago
	ADD  FOREIGN KEY (IdTipoDoctoOficial) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdTipoVenta) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdPedido) REFERENCES ce_pedidos(IdPedido)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdCliente) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdCajero) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdMovto) REFERENCES ce_cajas_movimientos(IdMovto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas
	ADD  FOREIGN KEY (IdTipoFormaPago) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas_prod_serv
	ADD  FOREIGN KEY (IdVenta) REFERENCES ce_ventas(IdVenta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_ventas_prod_serv
	ADD  FOREIGN KEY (IdProdServ,IdPresentacion) REFERENCES ce_cat_prod_serv_presenta(IdProdServ,IdPresentacion)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_dir_webs
	ADD  FOREIGN KEY (IdPersona) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_dir_webs
	ADD  FOREIGN KEY (IdTipoTelefono) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_domicilios
	ADD  FOREIGN KEY (IdTipoDomicilio) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_domicilios
	ADD  FOREIGN KEY (IdPersona) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_telefonos
	ADD  FOREIGN KEY (IdPersona) REFERENCES rh_cat_personas(IdPersona)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE rh_cat_telefonos
	ADD  FOREIGN KEY (IdTipoTelefono) REFERENCES cat_generales(IdGeneral)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE TABLE ce_facturas_estatus
( 
	IdFactura            integer  NOT NULL ,
	IdEstatusDet         int  NOT NULL ,
	Actual               varchar(1)  NULL ,
	Observacion          varchar(255)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod         datetime  NULL ,
	UsuarioMod           varchar(20)  NULL ,
	IdEstatus            integer  NULL 
)
go



ALTER TABLE ce_facturas_estatus
	ADD  PRIMARY KEY  CLUSTERED (IdFactura ASC,IdEstatusDet ASC)
go



CREATE NONCLUSTERED INDEX XIF1ce_facturas_estatus ON ce_facturas_estatus
( 
	IdFactura             ASC
)
go



CREATE NONCLUSTERED INDEX XIF2ce_facturas_estatus ON ce_facturas_estatus
( 
	IdEstatus             ASC
)
go




ALTER TABLE ce_facturas_estatus
	ADD  FOREIGN KEY (IdFactura) REFERENCES ce_facturas(IdFactura)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ce_facturas_estatus
	ADD  FOREIGN KEY (IdEstatus) REFERENCES cat_estatus(IdEstatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go






CREATE TABLE cat_estatus
( 
	IdEstatus            integer  NOT NULL ,
	IdTipoEstatus        integer  NOT NULL ,
	DesEstatus           varchar(50)  NULL ,
	Activo               char(1)  NULL ,
	Borrado              char(1)  NULL ,
	FechaReg             datetime  NULL ,
	UsuarioReg           varchar(20)  NULL ,
	FechaUltMod          datetime  NULL ,
	UsuarioMod           varchar(20)  NULL 
)
go



ALTER TABLE cat_estatus
	ADD  PRIMARY KEY (IdEstatus ASC)
go



CREATE INDEX XIF1cat_estatus ON cat_estatus
( 
	IdTipoEstatus         ASC
)
go

