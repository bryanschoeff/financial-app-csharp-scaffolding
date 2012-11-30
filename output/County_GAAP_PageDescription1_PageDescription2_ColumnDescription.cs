using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class PageDescription1_PageDescription2_ColumnDescription
  {
    public int Id { get; set; }
    
    public decimal Category_Subcategory_TertiaryCategory_Field { get; set; }

    public PageDescription1_PageDescription2_ColumnDescription()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Category_Subcategory_TertiaryCategory_Field = (decimal)reader["Category_Subcategory_TertiaryCategory_Field"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionAdd", connection);
        
        
        command.Parameters.AddWithValue("@Category_Subcategory_TertiaryCategory_Field", this.Category_Subcategory_TertiaryCategory_Field);

        connection.Open();
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionUpdate", connection);

        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", this.Id);
        
        command.Parameters.AddWithValue("@Category_Subcategory_TertiaryCategory_Field", this.Category_Subcategory_TertiaryCategory_Field);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionDelete", connection);

        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
