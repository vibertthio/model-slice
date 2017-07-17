class Model {
  float xpos;
  float ypos;
  float zpos;

  PShape shape;

  Model(String fn) {
    xpos = 0;
    ypos = 0;
    zpos = 0;
    shape = loadShape(fn);
    shape.scale(30);
  }

  void render() {
    pushMatrix();
    shape(shape);
    popMatrix();
  }

  void translate(float _x, float _y, float _z) {
    shape.translate(-xpos, -ypos, -zpos);
    shape.translate(_x, _y, _z);
    xpos = _x;
    ypos = _y;
    zpos = _z;
  }

  void clipXLow(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        // println(shape.getChild(i).getVertex(j).x);
        if (shape.getChild(i).getVertex(j).x > value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
  void clipXHigh(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        if (shape.getChild(i).getVertex(j).x < value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
  void clipYLow(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        if (shape.getChild(i).getVertex(j).y > value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
  void clipYHigh(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        if (shape.getChild(i).getVertex(j).y < value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
  void clipZLow(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        if (shape.getChild(i).getVertex(j).z > value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
  void clipZHigh(float value) {
    for (int i = shape.getChildCount() - 1; i >= 0; i--) {
      for (int j = 0; j < shape.getChild(i).getVertexCount(); j++) {
        if (shape.getChild(i).getVertex(j).z < value  ) {
          break;
        } else {
          if (j == shape.getChild(i).getVertexCount() - 1) {
            shape.removeChild(i);
            break;
          }
        }
      }
    }
  }
}
