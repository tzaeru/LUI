
INLINE void LUIText::set_font(const string &font_name) {
    _font = LUIFontPool::get_global_ptr()->get_font(font_name);
    update_text();
}

INLINE void LUIText::set_text(const wstring &text) {
    if (_text.compare(text) != 0) {
        _text = text;
        update_text();
    }
}

INLINE void LUIText::set_font_size(float size) {
  if (size != _font_size) {
    _font_size = size;
    update_text();
  }
}

INLINE DynamicTextFont* LUIText::get_font() {
    return _font;
}

INLINE const wstring& LUIText::get_text() {
    return _text;
}

INLINE float LUIText::get_font_size() {
    return _font_size;
}

INLINE void LUIText::on_color_changed() {
  LUIBaseElement::on_color_changed();
  for (lui_element_iterator it = _children.begin(); it != _children.end(); ++it) {
    (*it)->set_color(_color);
  }
}

