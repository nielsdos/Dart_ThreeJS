part of ThreeJSWrapper;

class Bone extends Object3D
{
  Bone(SkinnedMesh belongsToSkin)
  {
    _obj = new JsObject(context["THREE"]["Bone"], [ belongsToSkin._obj ]);
  }
  
  Bone.fromJsObject(JsObject obj)
  {
    _obj = obj;
  }
  
  Matrix4 get skinMatrix => ThreeBase._fromCache(this, Matrix4, "skinMatrix");
  void set skinMatrix(Matrix4 skinMatrix)
  {
    _obj["skinMatrix"] = skinMatrix._obj;
  }
  
  SkinnedMesh get skin => ThreeBase._fromCache(this, Matrix4, "skin");
  void set skin(SkinnedMesh skin)
  {
    _obj["skin"] = skin._obj;
  }
  
  
  // == METHODS ==
  
  
  void updateMatrixWorld(bool force) => _obj.callMethod("updateMatrixWorld", [ force ]);
}