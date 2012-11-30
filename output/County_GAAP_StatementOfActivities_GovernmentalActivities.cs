using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class StatementOfActivities_GovernmentalActivities
  {
    public int Id { get; set; }
    
    public decimal ProgramRevenues_ChargesForServicesAndSales { get; set; }
    public decimal ProgramRevenues_OperatingGrantsContributionsAndInterest { get; set; }
    public decimal ProgramRevenues_CapitalGrantsAndContributions { get; set; }
    public decimal GeneralRevenues_PropertyTaxes { get; set; }
    public decimal GeneralRevenues_SalesTaxes { get; set; }
    public decimal GeneralRevenues_OtherTaxes { get; set; }
    public decimal GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms { get; set; }
    public decimal GeneralRevenues_GainOnSaleOfCapitalAsset { get; set; }
    public decimal GeneralRevenues_PaymentInLieuOfTaxes { get; set; }
    public decimal GeneralRevenues_UnrestrictedContributions { get; set; }
    public decimal GeneralRevenues_InvestmentEarnings { get; set; }
    public decimal GeneralRevenues_Miscellaneous { get; set; }
    public decimal GeneralRevenues_OtherRevenues { get; set; }
    public decimal SpecialItem { get; set; }
    public decimal ExtraordinaryItem { get; set; }
    public decimal ContributionToPermanentFund { get; set; }
    public decimal Transfers { get; set; }
    public decimal Expenses_GeneralGovernment_LegislativeAndExecutive { get; set; }
    public decimal Expenses_GeneralGovernment_Judicial { get; set; }
    public decimal Expenses_PublicSafety { get; set; }
    public decimal Expenses_PublicWorks { get; set; }
    public decimal Expenses_Health { get; set; }
    public decimal Expenses_HumanServices { get; set; }
    public decimal Expenses_ConservationAndRecreation { get; set; }
    public decimal Expenses_Intergovernmental { get; set; }
    public decimal Expenses_InterestAndFiscalCharges { get; set; }
    public decimal Expenses_DepreciationExpense { get; set; }
    public decimal Expenses_OtherExpenses { get; set; }
    public decimal NetPositionBeginningOfYear { get; set; }

    public StatementOfActivities_GovernmentalActivities()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.ProgramRevenues_ChargesForServicesAndSales = (decimal)reader["ProgramRevenues_ChargesForServicesAndSales"];
        this.ProgramRevenues_OperatingGrantsContributionsAndInterest = (decimal)reader["ProgramRevenues_OperatingGrantsContributionsAndInterest"];
        this.ProgramRevenues_CapitalGrantsAndContributions = (decimal)reader["ProgramRevenues_CapitalGrantsAndContributions"];
        this.GeneralRevenues_PropertyTaxes = (decimal)reader["GeneralRevenues_PropertyTaxes"];
        this.GeneralRevenues_SalesTaxes = (decimal)reader["GeneralRevenues_SalesTaxes"];
        this.GeneralRevenues_OtherTaxes = (decimal)reader["GeneralRevenues_OtherTaxes"];
        this.GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms = (decimal)reader["GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms"];
        this.GeneralRevenues_GainOnSaleOfCapitalAsset = (decimal)reader["GeneralRevenues_GainOnSaleOfCapitalAsset"];
        this.GeneralRevenues_PaymentInLieuOfTaxes = (decimal)reader["GeneralRevenues_PaymentInLieuOfTaxes"];
        this.GeneralRevenues_UnrestrictedContributions = (decimal)reader["GeneralRevenues_UnrestrictedContributions"];
        this.GeneralRevenues_InvestmentEarnings = (decimal)reader["GeneralRevenues_InvestmentEarnings"];
        this.GeneralRevenues_Miscellaneous = (decimal)reader["GeneralRevenues_Miscellaneous"];
        this.GeneralRevenues_OtherRevenues = (decimal)reader["GeneralRevenues_OtherRevenues"];
        this.SpecialItem = (decimal)reader["SpecialItem"];
        this.ExtraordinaryItem = (decimal)reader["ExtraordinaryItem"];
        this.ContributionToPermanentFund = (decimal)reader["ContributionToPermanentFund"];
        this.Transfers = (decimal)reader["Transfers"];
        this.Expenses_GeneralGovernment_LegislativeAndExecutive = (decimal)reader["Expenses_GeneralGovernment_LegislativeAndExecutive"];
        this.Expenses_GeneralGovernment_Judicial = (decimal)reader["Expenses_GeneralGovernment_Judicial"];
        this.Expenses_PublicSafety = (decimal)reader["Expenses_PublicSafety"];
        this.Expenses_PublicWorks = (decimal)reader["Expenses_PublicWorks"];
        this.Expenses_Health = (decimal)reader["Expenses_Health"];
        this.Expenses_HumanServices = (decimal)reader["Expenses_HumanServices"];
        this.Expenses_ConservationAndRecreation = (decimal)reader["Expenses_ConservationAndRecreation"];
        this.Expenses_Intergovernmental = (decimal)reader["Expenses_Intergovernmental"];
        this.Expenses_InterestAndFiscalCharges = (decimal)reader["Expenses_InterestAndFiscalCharges"];
        this.Expenses_DepreciationExpense = (decimal)reader["Expenses_DepreciationExpense"];
        this.Expenses_OtherExpenses = (decimal)reader["Expenses_OtherExpenses"];
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
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", this.Id);
        
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

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfActivities_GovernmentalActivitiesDelete", connection);

        command.Parameters.AddWithValue("@StatementOfActivities_GovernmentalActivitiesId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
