namespace County.GAAP
{
  public class StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General
  {
    int id { get; set; }
    
    decimal Revenues_PropertyTaxes { get; set; }
    decimal Revenues_SalesTaxes { get; set; }
    decimal Revenues_Intergovernmental { get; set; }
    decimal Revenues_Interest { get; set; }
    decimal Revenues_LicensesAndPermits { get; set; }
    decimal Revenues_FinesAndForfeitures { get; set; }
    decimal Revenues_Rentals { get; set; }
    decimal Revenues_ChargesForServices { get; set; }
    decimal Revenues_ContributionsAndDonations { get; set; }
    decimal Revenues_SpecialAssessments { get; set; }
    decimal Revenues_OtherRevenues { get; set; }
    decimal Expenditures_GeneralGovernment_LegislativeAndExecutive { get; set; }
    decimal Expenditures_GeneralGovernment_Judicial { get; set; }
    decimal Expenditures_PublicSafety { get; set; }
    decimal Expenditures_PublicWorks { get; set; }
    decimal Expenditures_Health { get; set; }
    decimal Expenditures_HumanServices { get; set; }
    decimal Expenditures_ConservationAndRecreation { get; set; }
    decimal Expenditures_CapitalOutlay { get; set; }
    decimal Expenditures_Intergovernmental { get; set; }
    decimal Expenditures_DebtService_PrincipalRetirement { get; set; }
    decimal Expenditures_DebtService_InterestAndFiscalCharges { get; set; }
    decimal Expenditures_DebtService_BondIssuanceCosts { get; set; }
    decimal Expenditures_DebtService_Other { get; set; }
    decimal Expenditures_OtherExpenditures { get; set; }
    decimal OtherFinancingSourcesUses_SaleOfCapitalAssets { get; set; }
    decimal OtherFinancingSourcesUses_InceptionOfCapitalLease { get; set; }
    decimal OtherFinancingSourcesUses_GeneralObligationBondsIssued { get; set; }
    decimal OtherFinancingSourcesUses_RefundingBondsIssued { get; set; }
    decimal OtherFinancingSourcesUses_PremiumOnDebtIssuance { get; set; }
    decimal OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent { get; set; }
    decimal OtherFinancingSourcesUses_TransfersIn { get; set; }
    decimal OtherFinancingSourcesUses_TransfersOut { get; set; }
    decimal OtherFinancingSourcesUses_OtherFinancingSources { get; set; }
    decimal OtherFinancingSourcesUses_OtherFinancingUses { get; set; }
    decimal SpecialAndExtraordinaryItems_SpecialItem { get; set; }
    decimal SpecialAndExtraordinaryItems_ExtraordinaryItem { get; set; }
    decimal FundBalancesBeginningOfYear_FundBalancesBeginningOfYear { get; set; }
    decimal IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets { get; set; }

    public StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Revenues_PropertyTaxes = reader["Revenues_PropertyTaxes"];
        this.Revenues_SalesTaxes = reader["Revenues_SalesTaxes"];
        this.Revenues_Intergovernmental = reader["Revenues_Intergovernmental"];
        this.Revenues_Interest = reader["Revenues_Interest"];
        this.Revenues_LicensesAndPermits = reader["Revenues_LicensesAndPermits"];
        this.Revenues_FinesAndForfeitures = reader["Revenues_FinesAndForfeitures"];
        this.Revenues_Rentals = reader["Revenues_Rentals"];
        this.Revenues_ChargesForServices = reader["Revenues_ChargesForServices"];
        this.Revenues_ContributionsAndDonations = reader["Revenues_ContributionsAndDonations"];
        this.Revenues_SpecialAssessments = reader["Revenues_SpecialAssessments"];
        this.Revenues_OtherRevenues = reader["Revenues_OtherRevenues"];
        this.Expenditures_GeneralGovernment_LegislativeAndExecutive = reader["Expenditures_GeneralGovernment_LegislativeAndExecutive"];
        this.Expenditures_GeneralGovernment_Judicial = reader["Expenditures_GeneralGovernment_Judicial"];
        this.Expenditures_PublicSafety = reader["Expenditures_PublicSafety"];
        this.Expenditures_PublicWorks = reader["Expenditures_PublicWorks"];
        this.Expenditures_Health = reader["Expenditures_Health"];
        this.Expenditures_HumanServices = reader["Expenditures_HumanServices"];
        this.Expenditures_ConservationAndRecreation = reader["Expenditures_ConservationAndRecreation"];
        this.Expenditures_CapitalOutlay = reader["Expenditures_CapitalOutlay"];
        this.Expenditures_Intergovernmental = reader["Expenditures_Intergovernmental"];
        this.Expenditures_DebtService_PrincipalRetirement = reader["Expenditures_DebtService_PrincipalRetirement"];
        this.Expenditures_DebtService_InterestAndFiscalCharges = reader["Expenditures_DebtService_InterestAndFiscalCharges"];
        this.Expenditures_DebtService_BondIssuanceCosts = reader["Expenditures_DebtService_BondIssuanceCosts"];
        this.Expenditures_DebtService_Other = reader["Expenditures_DebtService_Other"];
        this.Expenditures_OtherExpenditures = reader["Expenditures_OtherExpenditures"];
        this.OtherFinancingSourcesUses_SaleOfCapitalAssets = reader["OtherFinancingSourcesUses_SaleOfCapitalAssets"];
        this.OtherFinancingSourcesUses_InceptionOfCapitalLease = reader["OtherFinancingSourcesUses_InceptionOfCapitalLease"];
        this.OtherFinancingSourcesUses_GeneralObligationBondsIssued = reader["OtherFinancingSourcesUses_GeneralObligationBondsIssued"];
        this.OtherFinancingSourcesUses_RefundingBondsIssued = reader["OtherFinancingSourcesUses_RefundingBondsIssued"];
        this.OtherFinancingSourcesUses_PremiumOnDebtIssuance = reader["OtherFinancingSourcesUses_PremiumOnDebtIssuance"];
        this.OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent = reader["OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent"];
        this.OtherFinancingSourcesUses_TransfersIn = reader["OtherFinancingSourcesUses_TransfersIn"];
        this.OtherFinancingSourcesUses_TransfersOut = reader["OtherFinancingSourcesUses_TransfersOut"];
        this.OtherFinancingSourcesUses_OtherFinancingSources = reader["OtherFinancingSourcesUses_OtherFinancingSources"];
        this.OtherFinancingSourcesUses_OtherFinancingUses = reader["OtherFinancingSourcesUses_OtherFinancingUses"];
        this.SpecialAndExtraordinaryItems_SpecialItem = reader["SpecialAndExtraordinaryItems_SpecialItem"];
        this.SpecialAndExtraordinaryItems_ExtraordinaryItem = reader["SpecialAndExtraordinaryItems_ExtraordinaryItem"];
        this.FundBalancesBeginningOfYear_FundBalancesBeginningOfYear = reader["FundBalancesBeginningOfYear_FundBalancesBeginningOfYear"];
        this.IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets = reader["IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralAdd", connection);
        
        
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
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralId", this.id);
        
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

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralDelete", connection);

        command.Parameters.AddWithValue("@StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
