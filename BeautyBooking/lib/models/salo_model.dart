import 'package:flutter/material.dart';
class Service {
  final String name;
  final String image;
  final double price;
  final int duration; // مدة الخدمة بالدقائق
  List<DateTime> bookedSlots; // قائمة بالمواعيد المحجوزة

  Service({
    required this.name,
    required this.image,
    required this.price,
    required this.duration,
    List<DateTime>? bookedSlots, // اجعل القائمة اختيارية
  }) : bookedSlots = bookedSlots ?? []; // قائمة قابلة للتعديل افتراضيًا
 bool get isBooked => bookedSlots.isNotEmpty;

}

class Booking {
  final String serviceName;
  final DateTime dateTime;

  Booking({
    required this.serviceName,
    required this.dateTime,
  });
}

class Salon {
  final String title;
  final String description;
  final String image;
  final String address;
  final String category;
  final String review;
  final double rate;
  final int quantity;
  final List<Service> services;
  final Map<String, String> workingHours;
  final double latitude;
  final double longitude;
  List<Booking> bookings; // قائمة الحجوزات

  Salon({
    required this.title,
    required this.description,
    required this.image,
    required this.address,
    required this.category,
    required this.review,
    required this.rate,
    required this.quantity,
    required this.services,
    required this.workingHours,
    required this.latitude,
    required this.longitude,
    List<Booking>? bookings,
  }) : bookings = bookings ?? <Booking>[]; // قائمة فارغة افتراضيًا
}


// قائمة الصالونات
final List<Salon> all = [
    Salon(
    title: "Specialized Hospital ",
    description: "Providing holistic wellness services for your body and mind.",
    image: "images/download.jpg", // استبدل بالمسار الصحيح للصورة
    address: "78 Peace Avenue, Mecca",
    category: "Laser centers",
    review: "(90 Reviews)",
    rate: 4.6,
    quantity: 1,
    services: [
      Service(
        name: "Aromatherapy Massage",
        image: "images/OIP (1).jpg", // استبدل بالمسار الصحيح للصورة
        price: 180.0,
        duration: 60,
      ),
      Service(
        name: "Body Contouring",
        image: "images/OIP.jpg", // استبدل بالمسار الصحيح للصورة
        price: 150.0,
        duration: 50,
      ),
    ],
    workingHours: {
      "Monday": "10:00 AM - 09:00 PM",
      "Tuesday": "10:00 AM - 09:00 PM",
      "Wednesday": "10:00 AM - 09:00 PM",
      "Thursday": "10:00 AM - 09:00 PM",
      "Friday": "12:00 PM - 08:00 PM",
      "Saturday": "10:00 AM - 09:00 PM",
      "Sunday": "Closed",
    },
    latitude: 21.389082,
    longitude: 39.857912,
  ),

  Salon(
  title: "Maha's Secrets Women's Salon",
  description: "Experience luxurious beauty services including professional hair blow drying and exquisite manicures.",
  image: "images/OIP (2).jpg",
  address: "Narcissus Street, Riyadh", // العنوان النصي
  category: "Skin Care & Beauty Centers",
  review: "(320 Reviews)",
  rate: 4.8,
  quantity: 1,
  services: [
    Service(
      name: "Professional Blow Dry",
      image: "images/download (1).jpg",
      price: 70,
      duration: 45,
    ),
    Service(
      name: "Exquisite Manicure",
      image: "images/download (2).jpg",
      price: 40,
      duration: 20,
    ),
  ],
  workingHours: {
    "Monday": "11:00 AM - 11:00 PM",
    "Tuesday": "11:00 AM - 11:00 PM",
    "Wednesday": "11:00 AM - 11:00 PM",
    "Thursday": "11:00 AM - 11:00 PM",
    "Friday": "02:00 PM - 11:00 PM",
    "Saturday": "11:00 AM - 11:00 PM",
    "Sunday": "Closed",
  },
  latitude: 24.774265, // خط العرض
  longitude: 46.738586, // خط الطول
),

   Salon(
    title: "Ladies Excellence Salon",
    description: "Experience authentic Moroccan spa treatments and massages.",
    image: "images/mm.webp", // استبدل بالمسار الصحيح للصورة
    address: "45 Wellness Road, Jeddah",
    category: "Massage and Moroccan bath centers",
    review: "(120 Reviews)",
    rate: 4.8,
    quantity: 1,
    services: [
     Service(
        name: "Laser Hair Removal",
        image: "images/images.jpg", // استبدل بالمسار الصحيح للصورة
        price: 120.0,
        duration: 30,
      ),
      Service(
        name: "Body Contouring",
        image: "images/images (2).jpg", // استبدل بالمسار الصحيح للصورة
        price: 250.0,
        duration: 60,
      ),
    
    ],
    workingHours: {
      "Monday": "10:00 AM - 08:00 PM",
      "Tuesday": "10:00 AM - 08:00 PM",
      "Wednesday": "10:00 AM - 08:00 PM",
      "Thursday": "10:00 AM - 08:00 PM",
      "Friday": "12:00 PM - 08:00 PM",
      "Saturday": "12:00 PM - 08:00 PM",
      "Sunday": "Closed",
    },
    latitude: 21.485811,
    longitude: 39.192505,
  ),
 
 
  Salon(
    title: "Him Women's Salon",
    description: "A state-of-the-art laser and body care center offering advanced treatments.",
    image: "images/m.webp", // استبدل بالمسار الصحيح للصورة
    address: "123 Beauty Street, Riyadh",
    category: "Beauty and care centers",
    review: "(50 Reviews)",
    rate: 4.7,
    quantity: 1,
    services: [
      Service(
        name: "Laser Hair Removal",
        image: "images/images.jpg", // استبدل بالمسار الصحيح للصورة
        price: 120.0,
        duration: 30,
      ),
      Service(
        name: "Body Contouring",
        image: "images/images (2).jpg", // استبدل بالمسار الصحيح للصورة
        price: 250.0,
        duration: 60,
      ),
    ],
    workingHours: {
      "Monday": "09:00 AM - 09:00 PM",
      "Tuesday": "09:00 AM - 09:00 PM",
      "Wednesday": "09:00 AM - 09:00 PM",
      "Thursday": "09:00 AM - 09:00 PM",
      "Friday": "Closed",
      "Saturday": "10:00 AM - 08:00 PM",
      "Sunday": "Closed",
    },
    latitude: 24.774265,
    longitude: 46.738586,
  ),

  
];

final List<Salon> Beauty = [

  Salon(
    title: "Him Women's Salon",
    description: "A state-of-the-art laser and body care center offering advanced treatments.",
    image: "images/m.webp", // استبدل بالمسار الصحيح للصورة
    address: "123 Beauty Street, Riyadh",
    category: "Beauty and care centers",
    review: "(50 Reviews)",
    rate: 4.7,
    quantity: 1,
    services: [
      Service(
        name: "Laser Hair Removal",
        image: "images/images.jpg", // استبدل بالمسار الصحيح للصورة
        price: 120.0,
        duration: 30,
      ),
      Service(
        name: "Body Contouring",
        image: "images/images (2).jpg", // استبدل بالمسار الصحيح للصورة
        price: 250.0,
        duration: 60,
      ),
    ],
    workingHours: {
      "Monday": "09:00 AM - 09:00 PM",
      "Tuesday": "09:00 AM - 09:00 PM",
      "Wednesday": "09:00 AM - 09:00 PM",
      "Thursday": "09:00 AM - 09:00 PM",
      "Friday": "Closed",
      "Saturday": "10:00 AM - 08:00 PM",
      "Sunday": "Closed",
    },
    latitude: 24.774265,
    longitude: 46.738586,
  ),
 
];


final List<Salon> Massage = [
   Salon(
    title: "Ladies Excellence Salon",
    description: "Experience authentic Moroccan spa treatments and massages.",
    image: "images/mm.webp", // استبدل بالمسار الصحيح للصورة
    address: "45 Wellness Road, Jeddah",
    category: "Massage and Moroccan bath centers",
    review: "(120 Reviews)",
    rate: 4.8,
    quantity: 1,
    services: [
     Service(
        name: "Laser Hair Removal",
        image: "images/images.jpg", // استبدل بالمسار الصحيح للصورة
        price: 120.0,
        duration: 30,
      ),
      Service(
        name: "Body Contouring",
        image: "images/images (2).jpg", // استبدل بالمسار الصحيح للصورة
        price: 250.0,
        duration: 60,
      ),
    
    ],
    workingHours: {
      "Monday": "10:00 AM - 08:00 PM",
      "Tuesday": "10:00 AM - 08:00 PM",
      "Wednesday": "10:00 AM - 08:00 PM",
      "Thursday": "10:00 AM - 08:00 PM",
      "Friday": "12:00 PM - 08:00 PM",
      "Saturday": "12:00 PM - 08:00 PM",
      "Sunday": "Closed",
    },
    latitude: 21.485811,
    longitude: 39.192505,
  ),
 
 
 ];

final List<Salon> LaserCenters = [
  
     Salon(
    title: "Specialized Hospital ",
    description: "Providing holistic wellness services for your body and mind.",
    image: "images/download.jpg", // استبدل بالمسار الصحيح للصورة
    address: "78 Peace Avenue, Mecca",
    category: "Laser centers",
    review: "(90 Reviews)",
    rate: 4.6,
    quantity: 1,
    services: [
      Service(
        name: "Aromatherapy Massage",
        image: "images/OIP (1).jpg", // استبدل بالمسار الصحيح للصورة
        price: 180.0,
        duration: 60,
      ),
      Service(
        name: "Body Contouring",
        image: "images/OIP.jpg", // استبدل بالمسار الصحيح للصورة
        price: 150.0,
        duration: 50,
      ),
    ],
    workingHours: {
      "Monday": "10:00 AM - 09:00 PM",
      "Tuesday": "10:00 AM - 09:00 PM",
      "Wednesday": "10:00 AM - 09:00 PM",
      "Thursday": "10:00 AM - 09:00 PM",
      "Friday": "12:00 PM - 08:00 PM",
      "Saturday": "10:00 AM - 09:00 PM",
      "Sunday": "Closed",
    },
    latitude: 21.389082,
    longitude: 39.857912,
  ),
];
final List<Salon> SkinCare = [

  Salon(
  title: "Maha's Secrets Women's Salon",
  description: "Experience luxurious beauty services including professional hair blow drying and exquisite manicures.",
  image: "images/OIP (2).jpg",
  address: "Narcissus Street, Riyadh", // العنوان النصي
  category: "Skin Care & Beauty Centers",
  review: "(320 Reviews)",
  rate: 4.8,
  quantity: 1,
  services: [
    Service(
      name: "Professional Blow Dry",
      image: "images/download (1).jpg",
      price: 70,
      duration: 45,
    ),
    Service(
      name: "Exquisite Manicure",
      image: "images/download (2).jpg",
      price: 40,
      duration: 20,
    ),
  ],
  workingHours: {
    "Monday": "11:00 AM - 11:00 PM",
    "Tuesday": "11:00 AM - 11:00 PM",
    "Wednesday": "11:00 AM - 11:00 PM",
    "Thursday": "11:00 AM - 11:00 PM",
    "Friday": "02:00 PM - 11:00 PM",
    "Saturday": "11:00 AM - 11:00 PM",
    "Sunday": "Closed",
  },
  latitude: 24.774265, // خط العرض
  longitude: 46.738586, // خط الطول
),
];



