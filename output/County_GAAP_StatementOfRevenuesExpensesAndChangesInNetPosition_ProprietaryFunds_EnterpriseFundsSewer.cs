namespace County.GAAP
{
  public class StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer
  {
    int id { get; set; }
    
    decimal OperatingRevenues_Sales { get; set; }
    decimal OperatingRevenues_ChargesForServices { get; set; }
    decimal OperatingRevenues_Miscellaneous { get; set; }
    decimal OperatingRevenues_OtherOperatingRevenues { get; set; }
    decimal OperatingExpenses_Salaries { get; set; }
    decimal OperatingExpenses_FringeBenefits { get; set; }
    decimal OperatingExpenses_PurchasedServices { get; set; }
    decimal OperatingExpenses_MaterialsAndSupplies { get; set; }
    decimal OperatingExpenses_CostOfSales { get; set; }
    decimal OperatingExpenses_Depreciation { get; set; }
    decimal OperatingExpenses_Claims { get; set; }
    decimal OperatingExpenses_CapitalOutlay { get; set; }
    decimal OperatingExpenses_OtherOperatingExpenses { get; set; }
    decimal NonOperatingRevenuesExpenses_InterestAndFiscalCharges { get; set; }
    decimal NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets { get; set; }
    decimal NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets { get; set; }
    decimal NonOperatingRevenuesExpenses_Interest { get; set; }
    decimal NonOperatingRevenuesExpenses_OperatingGrants { get; set; }
    decimal NonOperatingRevenuesExpenses_OtherNonOperatingRevenues { get; set; }
    decimal NonOperatingRevenuesExpenses_OtherNonOperatingExpenses { get; set; }
    decimal CapitalContributions { get; set; }
    decimal SpecialItems { get; set; }
    decimal ExtraordinaryItems { get; set; }
    decimal TransfersIn { get; set; }
    decimal TransfersOut { get; set; }
    decimal NetPositionBeginningOfYear { get; set; }

    public StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.OperatingRevenues_Sales = reader["OperatingRevenues_Sales"];
        this.OperatingRevenues_ChargesForServices = reader["OperatingRevenues_ChargesForServices"];
        this.OperatingRevenues_Miscellaneous = reader["OperatingRevenues_Miscellaneous"];
        this.OperatingRevenues_OtherOperatingRevenues = reader["OperatingRevenues_OtherOperatingRevenues"];
        this.OperatingExpenses_Salaries = reader["OperatingExpenses_Salaries"];
        this.OperatingExpenses_FringeBenefits = reader["OperatingExpenses_FringeBenefits"];
        this.OperatingExpenses_PurchasedServices = reader["OperatingExpenses_PurchasedServices"];
        this.OperatingExpenses_MaterialsAndSupplies = reader["OperatingExpenses_MaterialsAndSupplies"];
        this.OperatingExpenses_CostOfSales = reader["OperatingExpenses_CostOfSales"];
        this.OperatingExpenses_Depreciation = reader["OperatingExpenses_Depreciation"];
        this.OperatingExpenses_Claims = reader["OperatingExpenses_Claims"];
        this.OperatingExpenses_CapitalOutlay = reader["OperatingExpenses_CapitalOutlay"];
        this.OperatingExpenses_OtherOperatingExpenses = reader["OperatingExpenses_OtherOperatingExpenses"];
        this.NonOperatingRevenuesExpenses_InterestAndFiscalCharges = reader["NonOperatingRevenuesExpenses_InterestAndFiscalCharges"];
        this.NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets = reader["NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets"];
        this.NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets = reader["NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets"];
        this.NonOperatingRevenuesExpenses_Interest = reader["NonOperatingRevenuesExpenses_Interest"];
        this.NonOperatingRevenuesExpenses_OperatingGrants = reader["NonOperatingRevenuesExpenses_OperatingGrants"];
        this.NonOperatingRevenuesExpenses_OtherNonOperatingRevenues = reader["NonOperatingRevenuesExpenses_OtherNonOperatingRevenues"];
        this.NonOperatingRevenuesExpenses_OtherNonOperatingExpenses = reader["NonOperatingRevenuesExpenses_OtherNonOperatingExpenses"];
        this.CapitalContributions = reader["CapitalContributions"];
        this.SpecialItems = reader["SpecialItems"];
        this.ExtraordinaryItems = reader["ExtraordinaryItems"];
        this.TransfersIn = reader["TransfersIn"];
        this.TransfersOut = reader["TransfersOut"];
        this.NetPositionBeginningOfYear = reader["NetPositionBeginningOfYear"];
      
        connection.Close();
      }
    }

    public void Save()
    {
      if (this.id == -1)
      {
        SaveNew();
      }
      else
      {
        Update();
      }
    }

    protected void SaveNew()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd", connection);
        
        
        command.Parameters.AddWithValue("@OperatingRevenues_Sales", this.OperatingRevenues_Sales);
        command.Parameters.AddWithValue("@OperatingRevenues_ChargesForServices", this.OperatingRevenues_ChargesForServices);
        command.Parameters.AddWithValue("@OperatingRevenues_Miscellaneous", this.OperatingRevenues_Miscellaneous);
        command.Parameters.AddWithValue("@OperatingRevenues_OtherOperatingRevenues", this.OperatingRevenues_OtherOperatingRevenues);
        command.Parameters.AddWithValue("@OperatingExpenses_Salaries", this.OperatingExpenses_Salaries);
        command.Parameters.AddWithValue("@OperatingExpenses_FringeBenefits", this.OperatingExpenses_FringeBenefits);
        command.Parameters.AddWithValue("@OperatingExpenses_PurchasedServices", this.OperatingExpenses_PurchasedServices);
        command.Parameters.AddWithValue("@OperatingExpenses_MaterialsAndSupplies", this.OperatingExpenses_MaterialsAndSupplies);
        command.Parameters.AddWithValue("@OperatingExpenses_CostOfSales", this.OperatingExpenses_CostOfSales);
        command.Parameters.AddWithValue("@OperatingExpenses_Depreciation", this.OperatingExpenses_Depreciation);
        command.Parameters.AddWithValue("@OperatingExpenses_Claims", this.OperatingExpenses_Claims);
        command.Parameters.AddWithValue("@OperatingExpenses_CapitalOutlay", this.OperatingExpenses_CapitalOutlay);
        command.Parameters.AddWithValue("@OperatingExpenses_OtherOperatingExpenses", this.OperatingExpenses_OtherOperatingExpenses);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_InterestAndFiscalCharges", this.NonOperatingRevenuesExpenses_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets", this.NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets", this.NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_Interest", this.NonOperatingRevenuesExpenses_Interest);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OperatingGrants", this.NonOperatingRevenuesExpenses_OperatingGrants);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OtherNonOperatingRevenues", this.NonOperatingRevenuesExpenses_OtherNonOperatingRevenues);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OtherNonOperatingExpenses", this.NonOperatingRevenuesExpenses_OtherNonOperatingExpenses);
        command.Parameters.AddWithValue("@CapitalContributions", this.CapitalContributions);
        command.Parameters.AddWithValue("@SpecialItems", this.SpecialItems);
        command.Parameters.AddWithValue("@ExtraordinaryItems", this.ExtraordinaryItems);
        command.Parameters.AddWithValue("@TransfersIn", this.TransfersIn);
        command.Parameters.AddWithValue("@TransfersOut", this.TransfersOut);
        command.Parameters.AddWithValue("@NetPositionBeginningOfYear", this.NetPositionBeginningOfYear);

        connection.Open();
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.id);
        
        command.Parameters.AddWithValue("@OperatingRevenues_Sales", this.OperatingRevenues_Sales);
        command.Parameters.AddWithValue("@OperatingRevenues_ChargesForServices", this.OperatingRevenues_ChargesForServices);
        command.Parameters.AddWithValue("@OperatingRevenues_Miscellaneous", this.OperatingRevenues_Miscellaneous);
        command.Parameters.AddWithValue("@OperatingRevenues_OtherOperatingRevenues", this.OperatingRevenues_OtherOperatingRevenues);
        command.Parameters.AddWithValue("@OperatingExpenses_Salaries", this.OperatingExpenses_Salaries);
        command.Parameters.AddWithValue("@OperatingExpenses_FringeBenefits", this.OperatingExpenses_FringeBenefits);
        command.Parameters.AddWithValue("@OperatingExpenses_PurchasedServices", this.OperatingExpenses_PurchasedServices);
        command.Parameters.AddWithValue("@OperatingExpenses_MaterialsAndSupplies", this.OperatingExpenses_MaterialsAndSupplies);
        command.Parameters.AddWithValue("@OperatingExpenses_CostOfSales", this.OperatingExpenses_CostOfSales);
        command.Parameters.AddWithValue("@OperatingExpenses_Depreciation", this.OperatingExpenses_Depreciation);
        command.Parameters.AddWithValue("@OperatingExpenses_Claims", this.OperatingExpenses_Claims);
        command.Parameters.AddWithValue("@OperatingExpenses_CapitalOutlay", this.OperatingExpenses_CapitalOutlay);
        command.Parameters.AddWithValue("@OperatingExpenses_OtherOperatingExpenses", this.OperatingExpenses_OtherOperatingExpenses);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_InterestAndFiscalCharges", this.NonOperatingRevenuesExpenses_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets", this.NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets", this.NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_Interest", this.NonOperatingRevenuesExpenses_Interest);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OperatingGrants", this.NonOperatingRevenuesExpenses_OperatingGrants);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OtherNonOperatingRevenues", this.NonOperatingRevenuesExpenses_OtherNonOperatingRevenues);
        command.Parameters.AddWithValue("@NonOperatingRevenuesExpenses_OtherNonOperatingExpenses", this.NonOperatingRevenuesExpenses_OtherNonOperatingExpenses);
        command.Parameters.AddWithValue("@CapitalContributions", this.CapitalContributions);
        command.Parameters.AddWithValue("@SpecialItems", this.SpecialItems);
        command.Parameters.AddWithValue("@ExtraordinaryItems", this.ExtraordinaryItems);
        command.Parameters.AddWithValue("@TransfersIn", this.TransfersIn);
        command.Parameters.AddWithValue("@TransfersOut", this.TransfersOut);
        command.Parameters.AddWithValue("@NetPositionBeginningOfYear", this.NetPositionBeginningOfYear);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
