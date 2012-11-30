namespace County.GAAP
{
  public class StatementOfActivities_GovernmentalActivities
  {
    int id { get; set; }
    
    decimal ProgramRevenues_ChargesForServicesAndSales { get; set; }
    decimal ProgramRevenues_OperatingGrantsContributionsAndInterest { get; set; }
    decimal ProgramRevenues_CapitalGrantsAndContributions { get; set; }
    decimal GeneralRevenues_PropertyTaxes { get; set; }
    decimal GeneralRevenues_SalesTaxes { get; set; }
    decimal GeneralRevenues_OtherTaxes { get; set; }
    decimal GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms { get; set; }
    decimal GeneralRevenues_GainOnSaleOfCapitalAsset { get; set; }
    decimal GeneralRevenues_PaymentInLieuOfTaxes { get; set; }
    decimal GeneralRevenues_UnrestrictedContributions { get; set; }
    decimal GeneralRevenues_InvestmentEarnings { get; set; }
    decimal GeneralRevenues_Miscellaneous { get; set; }
    decimal GeneralRevenues_OtherRevenues { get; set; }
    decimal SpecialItem { get; set; }
    decimal ExtraordinaryItem { get; set; }
    decimal ContributionToPermanentFund { get; set; }
    decimal Transfers { get; set; }
    decimal Expenses_GeneralGovernment_LegislativeAndExecutive { get; set; }
    decimal Expenses_GeneralGovernment_Judicial { get; set; }
    decimal Expenses_PublicSafety { get; set; }
    decimal Expenses_PublicWorks { get; set; }
    decimal Expenses_Health { get; set; }
    decimal Expenses_HumanServices { get; set; }
    decimal Expenses_ConservationAndRecreation { get; set; }
    decimal Expenses_Intergovernmental { get; set; }
    decimal Expenses_InterestAndFiscalCharges { get; set; }
    decimal Expenses_DepreciationExpense { get; set; }
    decimal Expenses_OtherExpenses { get; set; }
    decimal NetPositionBeginningOfYear { get; set; }

    public StatementOfActivities_GovernmentalActivities()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.ProgramRevenues_ChargesForServicesAndSales = reader["ProgramRevenues_ChargesForServicesAndSales"];
        this.ProgramRevenues_OperatingGrantsContributionsAndInterest = reader["ProgramRevenues_OperatingGrantsContributionsAndInterest"];
        this.ProgramRevenues_CapitalGrantsAndContributions = reader["ProgramRevenues_CapitalGrantsAndContributions"];
        this.GeneralRevenues_PropertyTaxes = reader["GeneralRevenues_PropertyTaxes"];
        this.GeneralRevenues_SalesTaxes = reader["GeneralRevenues_SalesTaxes"];
        this.GeneralRevenues_OtherTaxes = reader["GeneralRevenues_OtherTaxes"];
        this.GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms = reader["GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms"];
        this.GeneralRevenues_GainOnSaleOfCapitalAsset = reader["GeneralRevenues_GainOnSaleOfCapitalAsset"];
        this.GeneralRevenues_PaymentInLieuOfTaxes = reader["GeneralRevenues_PaymentInLieuOfTaxes"];
        this.GeneralRevenues_UnrestrictedContributions = reader["GeneralRevenues_UnrestrictedContributions"];
        this.GeneralRevenues_InvestmentEarnings = reader["GeneralRevenues_InvestmentEarnings"];
        this.GeneralRevenues_Miscellaneous = reader["GeneralRevenues_Miscellaneous"];
        this.GeneralRevenues_OtherRevenues = reader["GeneralRevenues_OtherRevenues"];
        this.SpecialItem = reader["SpecialItem"];
        this.ExtraordinaryItem = reader["ExtraordinaryItem"];
        this.ContributionToPermanentFund = reader["ContributionToPermanentFund"];
        this.Transfers = reader["Transfers"];
        this.Expenses_GeneralGovernment_LegislativeAndExecutive = reader["Expenses_GeneralGovernment_LegislativeAndExecutive"];
        this.Expenses_GeneralGovernment_Judicial = reader["Expenses_GeneralGovernment_Judicial"];
        this.Expenses_PublicSafety = reader["Expenses_PublicSafety"];
        this.Expenses_PublicWorks = reader["Expenses_PublicWorks"];
        this.Expenses_Health = reader["Expenses_Health"];
        this.Expenses_HumanServices = reader["Expenses_HumanServices"];
        this.Expenses_ConservationAndRecreation = reader["Expenses_ConservationAndRecreation"];
        this.Expenses_Intergovernmental = reader["Expenses_Intergovernmental"];
        this.Expenses_InterestAndFiscalCharges = reader["Expenses_InterestAndFiscalCharges"];
        this.Expenses_DepreciationExpense = reader["Expenses_DepreciationExpense"];
        this.Expenses_OtherExpenses = reader["Expenses_OtherExpenses"];
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesAdd", connection);
        
        
        command.Parameters.AddWithValue("@ProgramRevenues_ChargesForServicesAndSales", this.ProgramRevenues_ChargesForServicesAndSales);
        command.Parameters.AddWithValue("@ProgramRevenues_OperatingGrantsContributionsAndInterest", this.ProgramRevenues_OperatingGrantsContributionsAndInterest);
        command.Parameters.AddWithValue("@ProgramRevenues_CapitalGrantsAndContributions", this.ProgramRevenues_CapitalGrantsAndContributions);
        command.Parameters.AddWithValue("@GeneralRevenues_PropertyTaxes", this.GeneralRevenues_PropertyTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_SalesTaxes", this.GeneralRevenues_SalesTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_OtherTaxes", this.GeneralRevenues_OtherTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms", this.GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms);
        command.Parameters.AddWithValue("@GeneralRevenues_GainOnSaleOfCapitalAsset", this.GeneralRevenues_GainOnSaleOfCapitalAsset);
        command.Parameters.AddWithValue("@GeneralRevenues_PaymentInLieuOfTaxes", this.GeneralRevenues_PaymentInLieuOfTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_UnrestrictedContributions", this.GeneralRevenues_UnrestrictedContributions);
        command.Parameters.AddWithValue("@GeneralRevenues_InvestmentEarnings", this.GeneralRevenues_InvestmentEarnings);
        command.Parameters.AddWithValue("@GeneralRevenues_Miscellaneous", this.GeneralRevenues_Miscellaneous);
        command.Parameters.AddWithValue("@GeneralRevenues_OtherRevenues", this.GeneralRevenues_OtherRevenues);
        command.Parameters.AddWithValue("@SpecialItem", this.SpecialItem);
        command.Parameters.AddWithValue("@ExtraordinaryItem", this.ExtraordinaryItem);
        command.Parameters.AddWithValue("@ContributionToPermanentFund", this.ContributionToPermanentFund);
        command.Parameters.AddWithValue("@Transfers", this.Transfers);
        command.Parameters.AddWithValue("@Expenses_GeneralGovernment_LegislativeAndExecutive", this.Expenses_GeneralGovernment_LegislativeAndExecutive);
        command.Parameters.AddWithValue("@Expenses_GeneralGovernment_Judicial", this.Expenses_GeneralGovernment_Judicial);
        command.Parameters.AddWithValue("@Expenses_PublicSafety", this.Expenses_PublicSafety);
        command.Parameters.AddWithValue("@Expenses_PublicWorks", this.Expenses_PublicWorks);
        command.Parameters.AddWithValue("@Expenses_Health", this.Expenses_Health);
        command.Parameters.AddWithValue("@Expenses_HumanServices", this.Expenses_HumanServices);
        command.Parameters.AddWithValue("@Expenses_ConservationAndRecreation", this.Expenses_ConservationAndRecreation);
        command.Parameters.AddWithValue("@Expenses_Intergovernmental", this.Expenses_Intergovernmental);
        command.Parameters.AddWithValue("@Expenses_InterestAndFiscalCharges", this.Expenses_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@Expenses_DepreciationExpense", this.Expenses_DepreciationExpense);
        command.Parameters.AddWithValue("@Expenses_OtherExpenses", this.Expenses_OtherExpenses);
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", this.id);
        
        command.Parameters.AddWithValue("@ProgramRevenues_ChargesForServicesAndSales", this.ProgramRevenues_ChargesForServicesAndSales);
        command.Parameters.AddWithValue("@ProgramRevenues_OperatingGrantsContributionsAndInterest", this.ProgramRevenues_OperatingGrantsContributionsAndInterest);
        command.Parameters.AddWithValue("@ProgramRevenues_CapitalGrantsAndContributions", this.ProgramRevenues_CapitalGrantsAndContributions);
        command.Parameters.AddWithValue("@GeneralRevenues_PropertyTaxes", this.GeneralRevenues_PropertyTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_SalesTaxes", this.GeneralRevenues_SalesTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_OtherTaxes", this.GeneralRevenues_OtherTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms", this.GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms);
        command.Parameters.AddWithValue("@GeneralRevenues_GainOnSaleOfCapitalAsset", this.GeneralRevenues_GainOnSaleOfCapitalAsset);
        command.Parameters.AddWithValue("@GeneralRevenues_PaymentInLieuOfTaxes", this.GeneralRevenues_PaymentInLieuOfTaxes);
        command.Parameters.AddWithValue("@GeneralRevenues_UnrestrictedContributions", this.GeneralRevenues_UnrestrictedContributions);
        command.Parameters.AddWithValue("@GeneralRevenues_InvestmentEarnings", this.GeneralRevenues_InvestmentEarnings);
        command.Parameters.AddWithValue("@GeneralRevenues_Miscellaneous", this.GeneralRevenues_Miscellaneous);
        command.Parameters.AddWithValue("@GeneralRevenues_OtherRevenues", this.GeneralRevenues_OtherRevenues);
        command.Parameters.AddWithValue("@SpecialItem", this.SpecialItem);
        command.Parameters.AddWithValue("@ExtraordinaryItem", this.ExtraordinaryItem);
        command.Parameters.AddWithValue("@ContributionToPermanentFund", this.ContributionToPermanentFund);
        command.Parameters.AddWithValue("@Transfers", this.Transfers);
        command.Parameters.AddWithValue("@Expenses_GeneralGovernment_LegislativeAndExecutive", this.Expenses_GeneralGovernment_LegislativeAndExecutive);
        command.Parameters.AddWithValue("@Expenses_GeneralGovernment_Judicial", this.Expenses_GeneralGovernment_Judicial);
        command.Parameters.AddWithValue("@Expenses_PublicSafety", this.Expenses_PublicSafety);
        command.Parameters.AddWithValue("@Expenses_PublicWorks", this.Expenses_PublicWorks);
        command.Parameters.AddWithValue("@Expenses_Health", this.Expenses_Health);
        command.Parameters.AddWithValue("@Expenses_HumanServices", this.Expenses_HumanServices);
        command.Parameters.AddWithValue("@Expenses_ConservationAndRecreation", this.Expenses_ConservationAndRecreation);
        command.Parameters.AddWithValue("@Expenses_Intergovernmental", this.Expenses_Intergovernmental);
        command.Parameters.AddWithValue("@Expenses_InterestAndFiscalCharges", this.Expenses_InterestAndFiscalCharges);
        command.Parameters.AddWithValue("@Expenses_DepreciationExpense", this.Expenses_DepreciationExpense);
        command.Parameters.AddWithValue("@Expenses_OtherExpenses", this.Expenses_OtherExpenses);
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesDelete", connection);

        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
