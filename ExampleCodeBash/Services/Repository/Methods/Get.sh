cd $rootProjectDir/Services/${globalModelNaming}Repository/Methods

cat > ${globalModelNaming}Get.cs << EOM
using "\$project_name".Data;
using "\$project_name".Models;
using "\$project_name".Services.HttpMethods;

namespace "\$project_name".Services."\$global_model_naming"Repository.Methods
{
  public class "\$global_model_naming"Get: IHttpGet<"\$model_name">
  {
    // BaseContext _context
    private readonly "\$db_context_name" _"\$db_context_field";
    public "\$global_model_naming"Get("\$db_context_name" "\$db_context_field"){
      _"\$db_context_field" = "\$db_context_field";
    }
        
    public "\$http_getAll_return" GetAll()
    {
      return _"\$db_context_field"."\$global_model_naming".ToList();
    }

    public "\$http_getById_return" GetById(int id)
    {
      return _"\$db_context_field"."\$global_model_naming".Find(id);
    }
  } 
}
EOM