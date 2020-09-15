//  Created by Steven Curtis

import Foundation

let emptyString = """
"""

let userString = """
{
"userId": 1,
"id": 1,
"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
"body": "quia et suscipit"
}
"""

//let userString = """
//{
//"userId": 1,
//"id": 1,
//"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//"body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//}
//"""

let invalidProductsString = """
{
"products": [
  {
    {
      "garbled": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    }
  ],
  "title": "Exercise Listing",
  "product_count": 50
}
"""

let endPointString = """
{
  "products": [
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    },
    {
      "id": "1",
      "name": "Test Shirt",
      "price": "Â£199",
      "image": "https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/2/6/26-03-2018_gosha_rubchinskiyxadidas_copaprimeknitboostmidsneaker_yellow_g012sh12-220_ka_1.jpg"
    }
  ],
  "title": "Exercise Listing",
  "product_count": 50
}
"""
