part of ThreeJSWrapper;

class BufferGeometry extends ThreeBase
{
  BufferGeometry()
  {
    _obj = new JsObject(context["THREE"]["BufferGeometry"]);
  }
  
  BufferGeometry.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  int get id => _obj["id"];
  void set id(int id)
  {
    _obj["id"] = id;
  }
  
  Map get attributes => _obj["attributes"];
  void set attributes(Map attributes)
  {
    _obj["attributes"] = new JsObject.jsify(attributes);
  }
  
  bool get dynamic => _obj["dynamic"];
  void set dynamic(bool dynamic)
  {
    _obj["dynamic"] = dynamic;
  }
  
  List get offsets => _obj["offsets"];
  void set offsets(List offsets)
  {
    _obj["offsets"] = new JsObject.jsify(offsets);
  }
  
  Box3 get boundingBox => new Box3.fromJsObject(_obj["boundingBox"]);
  void set boundingBox(Box3 boundingBox)
  {
    _obj["boundingBox"] = boundingBox._obj;
  }
  
  Sphere get boundingSphere => new Sphere.fromJsObject(_obj["boundingSphere"]);
  void set boundingSphere(Sphere boundingSphere)
  {
    _obj["boundingSphere"] = boundingSphere._obj;
  }
  
  List get morphTargets => _obj["morphTargets"];
  void set morphTargets(List morphTargets)
  {
    _obj["morphTargets"] = morphTargets;
  }
  
  bool get hasTangents => _obj["hasTangents"];
  void set hasTangents(bool hasTangents)
  {
    _obj["hasTangents"] = hasTangents;
  }
  
  
  // == METHODS ==
  
  void applyMatrix(Object matrix) => _obj.callMethod("applyMatrix", [ matrix ]);
  
  void computeVertexNormals() => _obj.callMethod("computeVertexNormals)");
  
  void computeTangents() => _obj.callMethod("computeTangents");
  
  void computeBoundingBox() => _obj.callMethod("computeBoundingBox");
  
  void computeBoundingSphere() => _obj.callMethod("computeBoundingSphere");
  
  void dispose() => _obj.callMethod("dispose");
  
  void normalizeNormals() => _obj.callMethod("normalizeNormals");
}