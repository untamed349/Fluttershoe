class ItemCard{
 final String name;
 final String imageUrl;
 final double price;
 final bool isliked;
 final int quantity;
 ItemCard(
     {
       required this.imageUrl,
       required this.price,
       required this.isliked,
       required this.quantity,
       required this.name
});

}