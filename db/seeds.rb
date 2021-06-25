Supplier.create!([
  { name: "Jimmy Jones", email: "jimmyjones@gmail.com", phone_number: "123-456-7890" },
  { name: "Helga Smith", email: "helgasmith@gmail.com", phone_number: "234-987-6543" },
  { name: "Babette LaRoux", email: "babettelaroux@gmail.com", phone_number: "567-890-1234" },
  { name: "Amazon", email: "amazon@example.com", phone_number: "123-456-7890" },
  { name: "Think Geek", email: "tg@example.com", phone_number: "213-654-3210" },
])
Product.create!([
  { name: "Gadget", price: "6.0", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.ytimg.com%2Fvi%2F17c6GfXVw8g%2Fmaxresdefault.jpg&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D17c6GfXVw8g&tbnid=ZMAMR1T2ZQ5YfM&vet=12ahUKEwjr94XV6ZzxAhUOOawKHW0EBXYQMygKegUIARDtAQ..i&docid=vkszgUeLjNNHkM&w=1280&h=720&q=gadget&hl=en-GB&ved=2ahUKEwjr94XV6ZzxAhUOOawKHW0EBXYQMygKegUIARDtAQ", description: "Indispensible tool for your home.", stock: nil, supplier_id: nil },
  { name: "Monster", price: "12.0", image_url: "", description: "Grrr, arrrrgh!", stock: nil, supplier_id: nil },
  { name: "Widget", price: "39.0", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.economist.com%2Fsites%2Fdefault%2Ffiles%2Fimages%2Fprint-edition%2F20150905_TQP001_0.jpg&imgrefurl=https%3A%2F%2Fwww.economist.com%2Ftechnology-quarterly%2F2015%2F09%2F03%2Fwonderful-widgets&tbnid=sbyVTCPfTmdISM&vet=12ahUKEwjXm4DS6JzxAhVCbK0KHeWyAvkQMygHegUIARC0AQ..i&docid=4g7jwHMlOAVL7M&w=595&h=335&itg=1&q=widget&hl=en-GB&ved=2ahUKEwjXm4DS6JzxAhVCbK0KHeWyAvkQMygHegUIARC0AQ", description: "Manufactured with pride!", stock: nil, supplier_id: nil },
  { name: "Thingy", price: "1.22", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F0027%2F9953%2F4169%2Ffiles%2FImage_46_600x600.jpg%3Fv%3D1618067293&imgrefurl=https%3A%2F%2Fwww.pillowthingy.com%2F&tbnid=hXz64XdO-9PyAM&vet=12ahUKEwistpfI6ZzxAhUBT6wKHVZ5CBMQMygMegUIARD7AQ..i&docid=O3pa-Vvdyazy8M&w=600&h=400&itg=1&q=thingy&hl=en-GB&ved=2ahUKEwistpfI6ZzxAhUBT6wKHVZ5CBMQMygMegUIARD7AQ", description: "Better than your average thingy!", stock: nil, supplier_id: nil },
])
