@EndUserText.label: 'Projection view SO HEADER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity zc_so_header
provider contract transactional_query as projection on zl_so_rmc
{
    key OrderCode,
    OrderIntrnlLin,
    OrderDate,
    Item,
    PricingPlant,
    ProdCat,
    RemoveCode,
    CustCode,
    CustName,
    ProjCode,
    ProjName,
    Distance,
    TrvlTime,
    Loads,
    Createdby,
    Createdate,
    Createtime,
    LastChangeby,
    LastChangedate,
    LastChangetime,
    Extra1,
    Extra2,
    Extra3,
    Extra4,
    Extra5,
    Extra6,
    Extra7,
    Extra8,
    Extra9,
    Extra10,
    QuotationNo,
    QuotationMat,
    /* Associations */
    _rmcvbap : redirected to composition child zc_so_line_item
}
