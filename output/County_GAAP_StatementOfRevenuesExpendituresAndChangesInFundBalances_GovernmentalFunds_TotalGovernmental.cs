using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental
  {
    public int Id { get; set; }
    
    public decimal Revenues_PropertyTaxes { get; set; }
    public decimal Revenues_SalesTaxes { get; set; }
    public decimal Revenues_Intergovernmental { get; set; }
    public decimal Revenues_Interest { get; set; }
    public decimal Revenues_LicensesAndPermits { get; set; }
    public decimal Revenues_FinesAndForfeitures { get; set; }
    public decimal Revenues_Rentals { get; set; }
    public decimal Revenues_ChargesForServices { get; set; }
    public decimal Revenues_ContributionsAndDonations { get; set; }
    public decimal Revenues_SpecialAssessments { get; set; }
    public decimal Revenues_OtherRevenues { get; set; }
    public decimal Expenditures_GeneralGovernment_LegislativeAndExecutive { get; set; }
    public decimal Expenditures_GeneralGovernment_Judicial { get; set; }
    public decimal Expenditures_PublicSafety { get; set; }
    public decimal Expenditures_PublicWorks { get; set; }
    public decimal Expenditures_Health { get; set; }
    public decimal Expenditures_HumanServices { get; set; }
    public decimal Expenditures_ConservationAndRecreation { get; set; }
    public decimal Expenditures_CapitalOutlay { get; set; }
    public decimal Expenditures_Intergovernmental { get; set; }
    public decimal Expenditures_DebtService_PrincipalRetirement { get; set; }
    public decimal Expenditures_DebtService_InterestAndFiscalCharges { get; set; }
    public decimal Expenditures_DebtService_BondIssuanceCosts { get; set; }
    public decimal Expenditures_DebtService_Other { get; set; }
    public decimal Expenditures_OtherExpenditures { get; set; }
    public decimal OtherFinancingSourcesUses_SaleOfCapitalAssets { get; set; }
    public decimal OtherFinancingSourcesUses_InceptionOfCapitalLease { get; set; }
    public decimal OtherFinancingSourcesUses_GeneralObligationBondsIssued { get; set; }
    public decimal OtherFinancingSourcesUses_RefundingBondsIssued { get; set; }
    public decimal OtherFinancingSourcesUses_PremiumOnDebtIssuance { get; set; }
    public decimal OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent { get; set; }
    public decimal OtherFinancingSourcesUses_TransfersIn { get; set; }
    public decimal OtherFinancingSourcesUses_TransfersOut { get; set; }
    public decimal OtherFinancingSourcesUses_OtherFinancingSources { get; set; }
    public decimal OtherFinancingSourcesUses_OtherFinancingUses { get; set; }
    public decimal SpecialAndExtraordinaryItems_SpecialItem { get; set; }
    public decimal SpecialAndExtraordinaryItems_ExtraordinaryItem { get; set; }
    public decimal FundBalancesBeginningOfYear_FundBalancesBeginningOfYear { get; set; }
    public decimal IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets { get; set; }

    public StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Revenues_PropertyTaxes = (decimal)reader["Revenues_PropertyTaxes"];
        this.Revenues_SalesTaxes = (decimal)reader["Revenues_SalesTaxes"];
        this.Revenues_Intergovernmental = (decimal)reader["Revenues_Intergovernmental"];
        this.Revenues_Interest = (decimal)reader["Revenues_Interest"];
        this.Revenues_LicensesAndPermits = (decimal)reader["Revenues_LicensesAndPermits"];
        this.Revenues_FinesAndForfeitures = (decimal)reader["Revenues_FinesAndForfeitures"];
        this.Revenues_Rentals = (decimal)reader["Revenues_Rentals"];
        this.Revenues_ChargesForServices = (decimal)reader["Revenues_ChargesForServices"];
        this.Revenues_ContributionsAndDonations = (decimal)reader["Revenues_ContributionsAndDonations"];
        this.Revenues_SpecialAssessments = (decimal)reader["Revenues_SpecialAssessments"];
        this.Revenues_OtherRevenues = (decimal)reader["Revenues_OtherRevenues"];
        this.Expenditures_GeneralGovernment_LegislativeAndExecutive = (decimal)reader["Expenditures_GeneralGovernment_LegislativeAndExecutive"];
        this.Expenditures_GeneralGovernment_Judicial = (decimal)reader["Expenditures_GeneralGovernment_Judicial"];
        this.Expenditures_PublicSafety = (decimal)reader["Expenditures_PublicSafety"];
        this.Expenditures_PublicWorks = (decimal)reader["Expenditures_PublicWorks"];
        this.Expenditures_Health = (decimal)reader["Expenditures_Health"];
        this.Expenditures_HumanServices = (decimal)reader["Expenditures_HumanServices"];
        this.Expenditures_ConservationAndRecreation = (decimal)reader["Expenditures_ConservationAndRecreation"];
        this.Expenditures_CapitalOutlay = (decimal)reader["Expenditures_CapitalOutlay"];
        this.Expenditures_Intergovernmental = (decimal)reader["Expenditures_Intergovernmental"];
        this.Expenditures_DebtService_PrincipalRetirement = (decimal)reader["Expenditures_DebtService_PrincipalRetirement"];
        this.Expenditures_DebtService_InterestAndFiscalCharges = (decimal)reader["Expenditures_DebtService_InterestAndFiscalCharges"];
        this.Expenditures_DebtService_BondIssuanceCosts = (decimal)reader["Expenditures_DebtService_BondIssuanceCosts"];
        this.Expenditures_DebtService_Other = (decimal)reader["Expenditures_DebtService_Other"];
        this.Expenditures_OtherExpenditures = (decimal)reader["Expenditures_OtherExpenditures"];
        this.OtherFinancingSourcesUses_SaleOfCapitalAssets = (decimal)reader["OtherFinancingSourcesUses_SaleOfCapitalAssets"];
        this.OtherFinancingSourcesUses_InceptionOfCapitalLease = (decimal)reader["OtherFinancingSourcesUses_InceptionOfCapitalLease"];
        this.OtherFinancingSourcesUses_GeneralObligationBondsIssued = (decimal)reader["OtherFinancingSourcesUses_GeneralObligationBondsIssued"];
        this.OtherFinancingSourcesUses_RefundingBondsIssued = (decimal)reader["OtherFinancingSourcesUses_RefundingBondsIssued"];
        this.OtherFinancingSourcesUses_PremiumOnDebtIssuance = (decimal)reader["OtherFinancingSourcesUses_PremiumOnDebtIssuance"];
        this.OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent = (decimal)reader["OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent"];
        this.OtherFinancingSourcesUses_TransfersIn = (decimal)reader["OtherFinancingSourcesUses_TransfersIn"];
        this.OtherFinancingSourcesUses_TransfersOut = (decimal)reader["OtherFinancingSourcesUses_TransfersOut"];
        this.OtherFinancingSourcesUses_OtherFinancingSources = (decimal)reader["OtherFinancingSourcesUses_OtherFinancingSources"];
        this.OtherFinancingSourcesUses_OtherFinancingUses = (decimal)reader["OtherFinancingSourcesUses_OtherFinancingUses"];
        this.SpecialAndExtraordinaryItems_SpecialItem = (decimal)reader["SpecialAndExtraordinaryItems_SpecialItem"];
        this.SpecialAndExtraordinaryItems_ExtraordinaryItem = (decimal)reader["SpecialAndExtraordinaryItems_ExtraordinaryItem"];
        this.FundBalancesBeginningOfYear_FundBalancesBeginningOfYear = (decimal)reader["FundBalancesBeginningOfYear_FundBalancesBeginningOfYear"];
        this.IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets = (decimal)reader["IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalAdd", connection);
        
        
        command.Parameters.AddWithValue("@Revenues_PropertyTaxes", this.Revenues_PropertyTaxes);
        command.Parameters.AddWithValue("@Revenues_SalesTaxes", this.Revenues_SalesTaxes);
        command.Parameters.AddWithValue("@Revenues_Intergovernmental", this.Revenues_Intergovernmental);
        command.Parameters.AddWithValue("@Revenues_Interest", this.Revenues_Interest);
        command.Parameters.AddWithValue("@Revenues_LicensesAndPermits", this.Revenues_LicensesAndPermits);
        command.Parameters.AddWithValue("@Revenues_FinesAndForfeitures", this.Revenues_FinesAndForfeitures);
        command.Parameters.AddWithValue("@Revenues_Rentals", this.Revenues_Rentals);
        command.Parameters.AddWithValue("@Revenues_ChargesForServices", this.Revenues_ChargesForServices);
        command.Parameters.AddWithValue("@Revenues_ContributionsAndDonations", this.Revenues_ContributionsAndDonations);
        command.Parameters.AddWithValue("@Revenues_SpecialAssessments", this.Revenues_SpecialAssessments);
        command.Parameters.AddWithValue("@Revenues_OtherRevenues", this.Revenues_OtherRevenues);
        command.Parameters.AddWithValue("@Expenditures_GeneralGovernment_LegislativeAndExecutive", this.Expenditures_GeneralGovernment_LegislativeAndExecutive);
        command.Parameters.AddWithValue("@Expenditures_GeneralGovernment_Judicial", this.Expenditures_GeneralGovernment_Judicial);
        command.Parameters.AddWithValue("@Expenditures_PublicSafety", this.Expenditures_PublicSafety);
        command.Parameters.AddWithValue("@Expenditures_PublicWorks", this.Expenditures_PublicWorks);
        command.Parameters.AddWithValue("@Expenditures_Health", this.Expenditures_Health);
        command.Parameters.AddWithValue("@Expenditures_HumanServices", this.Expenditures_HumanServices);
        command.Parameters.AddWithValue("@Expenditures_ConservationAndRecreation", this.Expenditures_ConservationAndRecreation);
        command.Parameters.AddWithValue("@Expenditures_CapitalOutlay", this.Expenditures_CapitalOutlay);
        command.Parameters.AddWithValue("@Expenditures_Intergovernmental", this.Expenditures_Intergovernmental);
        command.Parameters.AddWithValue("@Expenditures_DebtService_PrincipalRetirement", this.Expenditures_DebtService_PrincipalRetirement);
        command.Parameters.AddWithValue("@Expenditures_DebtService_InterestAndFiscalCharges", this.Expenditures_DebtService_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@Expenditures_DebtService_BondIssuanceCosts", this.Expenditures_DebtService_BondIssuanceCosts);
        command.Parameters.AddWithValue("@Expenditures_DebtService_Other", this.Expenditures_DebtService_Other);
        command.Parameters.AddWithValue("@Expenditures_OtherExpenditures", this.Expenditures_OtherExpenditures);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_SaleOfCapitalAssets", this.OtherFinancingSourcesUses_SaleOfCapitalAssets);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_InceptionOfCapitalLease", this.OtherFinancingSourcesUses_InceptionOfCapitalLease);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_GeneralObligationBondsIssued", this.OtherFinancingSourcesUses_GeneralObligationBondsIssued);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_RefundingBondsIssued", this.OtherFinancingSourcesUses_RefundingBondsIssued);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_PremiumOnDebtIssuance", this.OtherFinancingSourcesUses_PremiumOnDebtIssuance);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent", this.OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_TransfersIn", this.OtherFinancingSourcesUses_TransfersIn);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_TransfersOut", this.OtherFinancingSourcesUses_TransfersOut);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_OtherFinancingSources", this.OtherFinancingSourcesUses_OtherFinancingSources);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_OtherFinancingUses", this.OtherFinancingSourcesUses_OtherFinancingUses);
        command.Parameters.AddWithValue("@SpecialAndExtraordinaryItems_SpecialItem", this.SpecialAndExtraordinaryItems_SpecialItem);
        command.Parameters.AddWithValue("@SpecialAndExtraordinaryItems_ExtraordinaryItem", this.SpecialAndExtraordinaryItems_ExtraordinaryItem);
        command.Parameters.AddWithValue("@FundBalancesBeginningOfYear_FundBalancesBeginningOfYear", this.FundBalancesBeginningOfYear_FundBalancesBeginningOfYear);
        command.Parameters.AddWithValue("@IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets", this.IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets);

        connection.Open();
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalId", this.Id);
        
        command.Parameters.AddWithValue("@Revenues_PropertyTaxes", this.Revenues_PropertyTaxes);
        command.Parameters.AddWithValue("@Revenues_SalesTaxes", this.Revenues_SalesTaxes);
        command.Parameters.AddWithValue("@Revenues_Intergovernmental", this.Revenues_Intergovernmental);
        command.Parameters.AddWithValue("@Revenues_Interest", this.Revenues_Interest);
        command.Parameters.AddWithValue("@Revenues_LicensesAndPermits", this.Revenues_LicensesAndPermits);
        command.Parameters.AddWithValue("@Revenues_FinesAndForfeitures", this.Revenues_FinesAndForfeitures);
        command.Parameters.AddWithValue("@Revenues_Rentals", this.Revenues_Rentals);
        command.Parameters.AddWithValue("@Revenues_ChargesForServices", this.Revenues_ChargesForServices);
        command.Parameters.AddWithValue("@Revenues_ContributionsAndDonations", this.Revenues_ContributionsAndDonations);
        command.Parameters.AddWithValue("@Revenues_SpecialAssessments", this.Revenues_SpecialAssessments);
        command.Parameters.AddWithValue("@Revenues_OtherRevenues", this.Revenues_OtherRevenues);
        command.Parameters.AddWithValue("@Expenditures_GeneralGovernment_LegislativeAndExecutive", this.Expenditures_GeneralGovernment_LegislativeAndExecutive);
        command.Parameters.AddWithValue("@Expenditures_GeneralGovernment_Judicial", this.Expenditures_GeneralGovernment_Judicial);
        command.Parameters.AddWithValue("@Expenditures_PublicSafety", this.Expenditures_PublicSafety);
        command.Parameters.AddWithValue("@Expenditures_PublicWorks", this.Expenditures_PublicWorks);
        command.Parameters.AddWithValue("@Expenditures_Health", this.Expenditures_Health);
        command.Parameters.AddWithValue("@Expenditures_HumanServices", this.Expenditures_HumanServices);
        command.Parameters.AddWithValue("@Expenditures_ConservationAndRecreation", this.Expenditures_ConservationAndRecreation);
        command.Parameters.AddWithValue("@Expenditures_CapitalOutlay", this.Expenditures_CapitalOutlay);
        command.Parameters.AddWithValue("@Expenditures_Intergovernmental", this.Expenditures_Intergovernmental);
        command.Parameters.AddWithValue("@Expenditures_DebtService_PrincipalRetirement", this.Expenditures_DebtService_PrincipalRetirement);
        command.Parameters.AddWithValue("@Expenditures_DebtService_InterestAndFiscalCharges", this.Expenditures_DebtService_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@Expenditures_DebtService_BondIssuanceCosts", this.Expenditures_DebtService_BondIssuanceCosts);
        command.Parameters.AddWithValue("@Expenditures_DebtService_Other", this.Expenditures_DebtService_Other);
        command.Parameters.AddWithValue("@Expenditures_OtherExpenditures", this.Expenditures_OtherExpenditures);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_SaleOfCapitalAssets", this.OtherFinancingSourcesUses_SaleOfCapitalAssets);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_InceptionOfCapitalLease", this.OtherFinancingSourcesUses_InceptionOfCapitalLease);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_GeneralObligationBondsIssued", this.OtherFinancingSourcesUses_GeneralObligationBondsIssued);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_RefundingBondsIssued", this.OtherFinancingSourcesUses_RefundingBondsIssued);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_PremiumOnDebtIssuance", this.OtherFinancingSourcesUses_PremiumOnDebtIssuance);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent", this.OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_TransfersIn", this.OtherFinancingSourcesUses_TransfersIn);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_TransfersOut", this.OtherFinancingSourcesUses_TransfersOut);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_OtherFinancingSources", this.OtherFinancingSourcesUses_OtherFinancingSources);
        command.Parameters.AddWithValue("@OtherFinancingSourcesUses_OtherFinancingUses", this.OtherFinancingSourcesUses_OtherFinancingUses);
        command.Parameters.AddWithValue("@SpecialAndExtraordinaryItems_SpecialItem", this.SpecialAndExtraordinaryItems_SpecialItem);
        command.Parameters.AddWithValue("@SpecialAndExtraordinaryItems_ExtraordinaryItem", this.SpecialAndExtraordinaryItems_ExtraordinaryItem);
        command.Parameters.AddWithValue("@FundBalancesBeginningOfYear_FundBalancesBeginningOfYear", this.FundBalancesBeginningOfYear_FundBalancesBeginningOfYear);
        command.Parameters.AddWithValue("@IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets", this.IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalDelete", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
