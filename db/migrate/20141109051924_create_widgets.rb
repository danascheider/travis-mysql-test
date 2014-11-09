Sequel.migration do 
  up do
    create_table(:widgets) do 
      primary_key :id
      String      :title
    end
  end

  down do 
    drop_table(:widgets)
  end
end
