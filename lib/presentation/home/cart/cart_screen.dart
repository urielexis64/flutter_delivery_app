import 'package:clean_architecture_app/data/in_memory_products.dart';
import 'package:clean_architecture_app/domain/model/product.dart';
import 'package:clean_architecture_app/presentation/splash/theme.dart';
import 'package:clean_architecture_app/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key, required this.onShopping}) : super(key: key);

  final VoidCallback onShopping;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: const _FullCart(),
    );
  }
}

class _FullCart extends StatelessWidget {
  const _FullCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemExtent: 230,
                itemBuilder: (context, index) {
                  return _ShoppingCartProduct(
                    product: products[index],
                  );
                },
              ),
            )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal:',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                        Text(
                          '\$85.00 usd',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery:',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                        Text(
                          'Free',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Total:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$85.00 usd',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    DeliveryButton(onTap: () {}, text: 'Purchase')
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ShoppingCartProduct extends StatelessWidget {
  const _ShoppingCartProduct({Key? key, required this.product})
      : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: ClipOval(
                          child: FadeInImage(
                            placeholder: const AssetImage('assets/food.png'),
                            image: NetworkImage(product.image),
                          ),
                        ),
                      )),
                  const SizedBox(height: 5),
                  Expanded(
                    flex: 3,
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
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: DeliveryColors.veryLightGrey,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      color: DeliveryColors.purple,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text('2'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: DeliveryColors.purple,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.add,
                                      color: DeliveryColors.white,
                                    )),
                              ),
                              const Spacer(),
                              Text(
                                '\$${product.price}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: DeliveryColors.green),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.delete_outline,
                    color: DeliveryColors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart({Key? key, required this.onShopping}) : super(key: key);

  final VoidCallback onShopping;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '😢',
            style: TextStyle(fontSize: 64),
          ),
          const SizedBox(height: 16),
          const Text('Your cart is empty'),
          const SizedBox(height: 16),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: DeliveryColors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: onShopping,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Go to store'),
              )),
        ],
      ),
    );
  }
}
