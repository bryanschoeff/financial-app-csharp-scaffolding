using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer
  {
    public int Id { get; set; }
    
    public decimal OperatingRevenues_Sales { get; set; }
    public decimal OperatingRevenues_ChargesForServices { get; set; }
    public decimal OperatingRevenues_Miscellaneous { get; set; }
    public decimal OperatingRevenues_OtherOperatingRevenues { get; set; }
    public decimal OperatingExpenses_Salaries { get; set; }
    public decimal OperatingExpenses_FringeBenefits { get; set; }
    public decimal OperatingExpenses_PurchasedServices { get; set; }
    public decimal OperatingExpenses_MaterialsAndSupplies { get; set; }
    public decimal OperatingExpenses_CostOfSales { get; set; }
    public decimal OperatingExpenses_Depreciation { get; set; }
    public decimal OperatingExpenses_Claims { get; set; }
    public decimal OperatingExpenses_CapitalOutlay { get; set; }
    public decimal OperatingExpenses_OtherOperatingExpenses { get; set; }
    public decimal NonOperatingRevenuesExpenses_InterestAndFiscalCharges { get; set; }
    public decimal NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets { get; set; }
    public decimal NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets { get; set; }
    public decimal NonOperatingRevenuesExpenses_Interest { get; set; }
    public decimal NonOperatingRevenuesExpenses_OperatingGrants { get; set; }
    public decimal NonOperatingRevenuesExpenses_OtherNonOperatingRevenues { get; set; }
    public decimal NonOperatingRevenuesExpenses_OtherNonOperatingExpenses { get; set; }
    public decimal CapitalContributions { get; set; }
    public decimal SpecialItems { get; set; }
    public decimal ExtraordinaryItems { get; set; }
    public decimal TransfersIn { get; set; }
    public decimal TransfersOut { get; set; }
    public decimal NetPositionBeginningOfYear { get; set; }

    public StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.OperatingRevenues_Sales = (decimal)reader["OperatingRevenues_Sales"];
        this.OperatingRevenues_ChargesForServices = (decimal)reader["OperatingRevenues_ChargesForServices"];
        this.OperatingRevenues_Miscellaneous = (decimal)reader["OperatingRevenues_Miscellaneous"];
        this.OperatingRevenues_OtherOperatingRevenues = (decimal)reader["OperatingRevenues_OtherOperatingRevenues"];
        this.OperatingExpenses_Salaries = (decimal)reader["OperatingExpenses_Salaries"];
        this.OperatingExpenses_FringeBenefits = (decimal)reader["OperatingExpenses_FringeBenefits"];
        this.OperatingExpenses_PurchasedServices = (decimal)reader["OperatingExpenses_PurchasedServices"];
        this.OperatingExpenses_MaterialsAndSupplies = (decimal)reader["OperatingExpenses_MaterialsAndSupplies"];
        this.OperatingExpenses_CostOfSales = (decimal)reader["OperatingExpenses_CostOfSales"];
        this.OperatingExpenses_Depreciation = (decimal)reader["OperatingExpenses_Depreciation"];
        this.OperatingExpenses_Claims = (decimal)reader["OperatingExpenses_Claims"];
        this.OperatingExpenses_CapitalOutlay = (decimal)reader["OperatingExpenses_CapitalOutlay"];
        this.OperatingExpenses_OtherOperatingExpenses = (decimal)reader["OperatingExpenses_OtherOperatingExpenses"];
        this.NonOperatingRevenuesExpenses_InterestAndFiscalCharges = (decimal)reader["NonOperatingRevenuesExpenses_InterestAndFiscalCharges"];
        this.NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets = (decimal)reader["NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets"];
        this.NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets = (decimal)reader["NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets"];
        this.NonOperatingRevenuesExpenses_Interest = (decimal)reader["NonOperatingRevenuesExpenses_Interest"];
        this.NonOperatingRevenuesExpenses_OperatingGrants = (decimal)reader["NonOperatingRevenuesExpenses_OperatingGrants"];
        this.NonOperatingRevenuesExpenses_OtherNonOperatingRevenues = (decimal)reader["NonOperatingRevenuesExpenses_OtherNonOperatingRevenues"];
        this.NonOperatingRevenuesExpenses_OtherNonOperatingExpenses = (decimal)reader["NonOperatingRevenuesExpenses_OtherNonOperatingExpenses"];
        this.CapitalContributions = (decimal)reader["CapitalContributions"];
        this.SpecialItems = (decimal)reader["SpecialItems"];
        this.ExtraordinaryItems = (decimal)reader["ExtraordinaryItems"];
        this.TransfersIn = (decimal)reader["TransfersIn"];
        this.TransfersOut = (decimal)reader["TransfersOut"];
        this.NetPositionBeginningOfYear = (decimal)reader["NetPositionBeginningOfYear"];
      
        connection.Close();
      }
    }

    public void Save()
    {
      if (this.Id == -1)
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
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
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
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.Id);
        
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

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
