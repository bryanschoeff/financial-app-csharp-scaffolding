namespace County.GAAP
{
  public class PageDescription1_PageDescription2_ColumnDescription
  {
    int id { get; set; }
    
    decimal Category_Subcategory_TertiaryCategory_Field { get; set; }

    public PageDescription1_PageDescription2_ColumnDescription()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Category_Subcategory_TertiaryCategory_Field = reader["Category_Subcategory_TertiaryCategory_Field"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionAdd", connection);
        
        
        command.Parameters.AddWithValue("@Category_Subcategory_TertiaryCategory_Field", this.Category_Subcategory_TertiaryCategory_Field);

        connection.Open();
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionUpdate", connection);

        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", this.id);
        
        command.Parameters.AddWithValue("@Category_Subcategory_TertiaryCategory_Field", this.Category_Subcategory_TertiaryCategory_Field);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionDelete", connection);

        command.Parameters.AddWithValue("@PageDescription1_PageDescription2_ColumnDescriptionId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
