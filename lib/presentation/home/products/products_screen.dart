import 'package:clean_architecture_app/data/in_memory_products.dart';
import 'package:clean_architecture_app/domain/model/product.dart';
import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:clean_architecture_app/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return _ProductItem(product: product);
        },
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: CircleAvatar(
              backgroundColor: Colors.black,
              child: ClipOval(
                child: FadeInImage(
                  placeholder: const AssetImage('assets/food.png'),
                  image: NetworkImage(product.image),
                ),
              ),
            )),
            Expanded(
              child: Column(
                children: [
                  Text(product.name),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(color: DeliveryColors.lightGrey),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$${product.price} USD',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ),
            DeliveryButton(
              onTap: () {},
              text: 'Add',
              padding: const EdgeInsets.symmetric(vertical: 4),
            )
          ],
        ),
      ),
    );
  }
}
