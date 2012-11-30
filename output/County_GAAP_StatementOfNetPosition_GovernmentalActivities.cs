using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class StatementOfNetPosition_GovernmentalActivities
  {
    public int Id { get; set; }
    
    public decimal Assets_CashAndCashEquivalents { get; set; }
    public decimal Assets_Investments { get; set; }
    public decimal Assets_InventoryHeldForResale { get; set; }
    public decimal Assets_MaterialsAndSuppliesInventory { get; set; }
    public decimal Assets_AccruedInterestReceivable { get; set; }
    public decimal Assets_AccountsReceivable { get; set; }
    public decimal Assets_InternalBalances { get; set; }
    public decimal Assets_IntergovernmentalReceivable { get; set; }
    public decimal Assets_PrepaidItems { get; set; }
    public decimal Assets_PropertyTaxesReceivable { get; set; }
    public decimal Assets_SpecialAssessmentsReceivable { get; set; }
    public decimal Assets_SalesTaxReceivable { get; set; }
    public decimal Assets_RevenueInLieuOfTaxesReceivable { get; set; }
    public decimal Assets_DueFromOtherGovernments { get; set; }
    public decimal Assets_NotesReceivable { get; set; }
    public decimal Assets_LoansReceivable { get; set; }
    public decimal Assets_InvestmentInJointVenture { get; set; }
    public decimal Assets_RestrictedAssets { get; set; }
    public decimal Assets_AdvancesToOtherFunds { get; set; }
    public decimal Assets_NondepreciableCapitalAssets { get; set; }
    public decimal Assets_DepreciableCapitalAssets { get; set; }
    public decimal Assets_LessAccumulatedDepreciaion { get; set; }
    public decimal Assets_OtherAssets { get; set; }
    public decimal Assets_TotalDeferredOutflowsOfResources { get; set; }
    public decimal Liabilities_AccountsPayable { get; set; }
    public decimal Liabilities_AccruedWagesAndBenefits { get; set; }
    public decimal Liabilities_ContractsPayable { get; set; }
    public decimal Liabilities_IntergovernmentalPayable { get; set; }
    public decimal Liabilities_DueToOtherGovernments { get; set; }
    public decimal Liabilities_MaturedCompensatedAbsences { get; set; }
    public decimal Liabilities_MaturedInterestPayable { get; set; }
    public decimal Liabilities_MaturedBondsPayable { get; set; }
    public decimal Liabilities_AccruedInterestPayable { get; set; }
    public decimal Liabilities_RetainagePayable { get; set; }
    public decimal Liabilities_ClaimsPayable { get; set; }
    public decimal Liabilities_UnearnedRevenue { get; set; }
    public decimal Liabilities_NotesPayable { get; set; }
    public decimal Liabilities_LongTermLiabilities_DueWithinOneYear { get; set; }
    public decimal Liabilities_LongTermLiabilities_DueInMoreThanOneYear { get; set; }
    public decimal Liabilities_OtherLiabilities { get; set; }
    public decimal NetPosition_NetInvestmentInCapitalAssets { get; set; }
    public decimal NetPosition_Restricted { get; set; }
    public decimal NetPosition_UnrestrictedDeficit { get; set; }

    public StatementOfNetPosition_GovernmentalActivities()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Assets_CashAndCashEquivalents = (decimal)reader["Assets_CashAndCashEquivalents"];
        this.Assets_Investments = (decimal)reader["Assets_Investments"];
        this.Assets_InventoryHeldForResale = (decimal)reader["Assets_InventoryHeldForResale"];
        this.Assets_MaterialsAndSuppliesInventory = (decimal)reader["Assets_MaterialsAndSuppliesInventory"];
        this.Assets_AccruedInterestReceivable = (decimal)reader["Assets_AccruedInterestReceivable"];
        this.Assets_AccountsReceivable = (decimal)reader["Assets_AccountsReceivable"];
        this.Assets_InternalBalances = (decimal)reader["Assets_InternalBalances"];
        this.Assets_IntergovernmentalReceivable = (decimal)reader["Assets_IntergovernmentalReceivable"];
        this.Assets_PrepaidItems = (decimal)reader["Assets_PrepaidItems"];
        this.Assets_PropertyTaxesReceivable = (decimal)reader["Assets_PropertyTaxesReceivable"];
        this.Assets_SpecialAssessmentsReceivable = (decimal)reader["Assets_SpecialAssessmentsReceivable"];
        this.Assets_SalesTaxReceivable = (decimal)reader["Assets_SalesTaxReceivable"];
        this.Assets_RevenueInLieuOfTaxesReceivable = (decimal)reader["Assets_RevenueInLieuOfTaxesReceivable"];
        this.Assets_DueFromOtherGovernments = (decimal)reader["Assets_DueFromOtherGovernments"];
        this.Assets_NotesReceivable = (decimal)reader["Assets_NotesReceivable"];
        this.Assets_LoansReceivable = (decimal)reader["Assets_LoansReceivable"];
        this.Assets_InvestmentInJointVenture = (decimal)reader["Assets_InvestmentInJointVenture"];
        this.Assets_RestrictedAssets = (decimal)reader["Assets_RestrictedAssets"];
        this.Assets_AdvancesToOtherFunds = (decimal)reader["Assets_AdvancesToOtherFunds"];
        this.Assets_NondepreciableCapitalAssets = (decimal)reader["Assets_NondepreciableCapitalAssets"];
        this.Assets_DepreciableCapitalAssets = (decimal)reader["Assets_DepreciableCapitalAssets"];
        this.Assets_LessAccumulatedDepreciaion = (decimal)reader["Assets_LessAccumulatedDepreciaion"];
        this.Assets_OtherAssets = (decimal)reader["Assets_OtherAssets"];
        this.Assets_TotalDeferredOutflowsOfResources = (decimal)reader["Assets_TotalDeferredOutflowsOfResources"];
        this.Liabilities_AccountsPayable = (decimal)reader["Liabilities_AccountsPayable"];
        this.Liabilities_AccruedWagesAndBenefits = (decimal)reader["Liabilities_AccruedWagesAndBenefits"];
        this.Liabilities_ContractsPayable = (decimal)reader["Liabilities_ContractsPayable"];
        this.Liabilities_IntergovernmentalPayable = (decimal)reader["Liabilities_IntergovernmentalPayable"];
        this.Liabilities_DueToOtherGovernments = (decimal)reader["Liabilities_DueToOtherGovernments"];
        this.Liabilities_MaturedCompensatedAbsences = (decimal)reader["Liabilities_MaturedCompensatedAbsences"];
        this.Liabilities_MaturedInterestPayable = (decimal)reader["Liabilities_MaturedInterestPayable"];
        this.Liabilities_MaturedBondsPayable = (decimal)reader["Liabilities_MaturedBondsPayable"];
        this.Liabilities_AccruedInterestPayable = (decimal)reader["Liabilities_AccruedInterestPayable"];
        this.Liabilities_RetainagePayable = (decimal)reader["Liabilities_RetainagePayable"];
        this.Liabilities_ClaimsPayable = (decimal)reader["Liabilities_ClaimsPayable"];
        this.Liabilities_UnearnedRevenue = (decimal)reader["Liabilities_UnearnedRevenue"];
        this.Liabilities_NotesPayable = (decimal)reader["Liabilities_NotesPayable"];
        this.Liabilities_LongTermLiabilities_DueWithinOneYear = (decimal)reader["Liabilities_LongTermLiabilities_DueWithinOneYear"];
        this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear = (decimal)reader["Liabilities_LongTermLiabilities_DueInMoreThanOneYear"];
        this.Liabilities_OtherLiabilities = (decimal)reader["Liabilities_OtherLiabilities"];
        this.NetPosition_NetInvestmentInCapitalAssets = (decimal)reader["NetPosition_NetInvestmentInCapitalAssets"];
        this.NetPosition_Restricted = (decimal)reader["NetPosition_Restricted"];
        this.NetPosition_UnrestrictedDeficit = (decimal)reader["NetPosition_UnrestrictedDeficit"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesAdd", connection);
        
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InternalBalances", this.Assets_InternalBalances);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SpecialAssessmentsReceivable", this.Assets_SpecialAssessmentsReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_InvestmentInJointVenture", this.Assets_InvestmentInJointVenture);
        command.Parameters.AddWithValue("@Assets_RestrictedAssets", this.Assets_RestrictedAssets);
        command.Parameters.AddWithValue("@Assets_AdvancesToOtherFunds", this.Assets_AdvancesToOtherFunds);
        command.Parameters.AddWithValue("@Assets_NondepreciableCapitalAssets", this.Assets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_DepreciableCapitalAssets", this.Assets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_LessAccumulatedDepreciaion", this.Assets_LessAccumulatedDepreciaion);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedCompensatedAbsences", this.Liabilities_MaturedCompensatedAbsences);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedInterestPayable", this.Liabilities_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueWithinOneYear", this.Liabilities_LongTermLiabilities_DueWithinOneYear);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueInMoreThanOneYear", this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_UnrestrictedDeficit", this.NetPosition_UnrestrictedDeficit);

        connection.Open();
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", this.Id);
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InternalBalances", this.Assets_InternalBalances);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SpecialAssessmentsReceivable", this.Assets_SpecialAssessmentsReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_InvestmentInJointVenture", this.Assets_InvestmentInJointVenture);
        command.Parameters.AddWithValue("@Assets_RestrictedAssets", this.Assets_RestrictedAssets);
        command.Parameters.AddWithValue("@Assets_AdvancesToOtherFunds", this.Assets_AdvancesToOtherFunds);
        command.Parameters.AddWithValue("@Assets_NondepreciableCapitalAssets", this.Assets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_DepreciableCapitalAssets", this.Assets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_LessAccumulatedDepreciaion", this.Assets_LessAccumulatedDepreciaion);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedCompensatedAbsences", this.Liabilities_MaturedCompensatedAbsences);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedInterestPayable", this.Liabilities_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueWithinOneYear", this.Liabilities_LongTermLiabilities_DueWithinOneYear);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueInMoreThanOneYear", this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_UnrestrictedDeficit", this.NetPosition_UnrestrictedDeficit);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesDelete", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
