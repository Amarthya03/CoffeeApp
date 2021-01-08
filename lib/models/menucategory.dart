class MenuCategory {
  final int categoryId;
  final String categoryName;
  final String categoryImage;

  MenuCategory({ this.categoryId, this.categoryName, this.categoryImage });

  factory MenuCategory.fromJson(Map<String, dynamic> json) {
    return MenuCategory(
        categoryId: json['menu_category_id'],
        categoryName: json['menu_category_name'],
        categoryImage: json['menu_category_image'],
    );
  }

}