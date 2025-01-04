import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:share/share.dart';
import 'package:intl/intl.dart';
import '../../constan/constans.dart';
import '../../models/salo_model.dart';
import 'Widget/description.dart';
import 'Widget/detail_app_bar.dart';
import 'Widget/image_slider.dart';
import 'Widget/items_details.dart';

class DetailScreen extends StatefulWidget {
  final Salon product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;

  // Function to share product details
  void _shareProduct(BuildContext context) {
    try {
      final String productDetails =
          'Check out this salon: ${widget.product.title}\n\nDescription: ${widget.product.description}';

      Share.share(productDetails);
    } catch (e) {
      print('Error sharing product: $e');
    }
  }

  // Function to check if the selected time is within working hours
  bool isWithinWorkingHours(
      DateTime dateTime, Map<String, String> workingHours) {
    String day = DateFormat('EEEE').format(dateTime); // اليوم

    // التحقق إذا كان اليوم غير موجود في ساعات العمل أو الصالون مغلق
    if (!workingHours.containsKey(day) || workingHours[day] == "Closed") {
      return false;
    }

    String hours = workingHours[day]!;
    List<String> parts = hours.split(" - ");
    if (parts.length != 2) return false;

    // تحويل أوقات العمل إلى `DateTime` مع نفس تاريخ الموعد المحدد
    DateTime openingTime = DateFormat.jm().parse(parts[0]);
    DateTime closingTime = DateFormat.jm().parse(parts[1]);

    // إضافة التاريخ إلى أوقات العمل
    openingTime = DateTime(dateTime.year, dateTime.month, dateTime.day,
        openingTime.hour, openingTime.minute);
    closingTime = DateTime(dateTime.year, dateTime.month, dateTime.day,
        closingTime.hour, closingTime.minute);

    // التحقق من أن الوقت يقع بين الفتح والإغلاق
    return dateTime.isAfter(openingTime) && dateTime.isBefore(closingTime);
  }

  // Function to show date and time picker
  Future<void> _showDateTimePicker(Service service) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        DateTime selected = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        // التحقق من أن الوقت المحدد يقع ضمن ساعات العمل
        if (isWithinWorkingHours(selected, widget.product.workingHours)) {
          setState(() {
            // إضافة الموعد إلى قائمة المواعيد المحجوزة
            service.bookedSlots.add(selected);
            widget.product.bookings.add(
              Booking(
                serviceName: service.name,
                dateTime: selected,
              ),
            );
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Service "${service.name}" has been booked for ${DateFormat.yMd().add_jm().format(selected)}',
              ),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("The salon is not open at the selected time."),
            ),
          );
        }
      }
    }
  }

  @override
  void dispose() {
    // تحرير أي موارد أو إلغاء أي اتصالات
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(
                product: widget.product,
                onSharePressed: () => _shareProduct(context),
              ),
            MyImageSlider(
                images: [widget.product.image], // صورة الصالون فقط
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                uniqueTag: widget.product.title, // استخدام اسم الصالون كمعرف فريد
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? Colors.black
                          : const Color.fromARGB(50, 24, 23, 23),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemsDetails(product: widget.product),
                    const SizedBox(height: 20),
                    Container(
                      height: 160, // ارتفاع الخريطة
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(widget.product.latitude,
                              widget.product.longitude), // إحداثيات الموقع
                          zoom: 15.0, // مستوى التكبير
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                            subdomains: ['a', 'b', 'c'],
                          ),
                          MarkerLayer(
                            markers: [
                              Marker(
                                point: LatLng(widget.product.latitude,
                                    widget.product.longitude),
                                width: 40,
                                height: 40,
                                child: const Icon(
                                  Icons.location_pin,
                                  color: Colors.red,
                                  size: 40,
                                ), // هنا تم إضافة child المطلوب
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.product.services.length,
                        itemBuilder: (context, index) {
                          final service = widget.product.services[index];
                          return Container(
                            width: 150,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  service.image,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  service.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "${service.price} SAR",
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if (service.isBooked) {
                                        service.bookedSlots
                                            .clear(); // إلغاء الحجز
                                      } else {
                                        _showDateTimePicker(
                                            service); // عرض أداة اختيار الموعد
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: service.isBooked
                                        ? Colors.red
                                        : kprimaryColor,
                                  ),
                                  child: Text(
                                    service.isBooked
                                        ? 'Cancel Booking'
                                        : 'Book Now',
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    Description(
                      description: widget.product.description,
                      workingHours: widget.product.workingHours,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
