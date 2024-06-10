import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoUi extends StatefulWidget {
  const TodoUi({super.key});

  @override
  State createState() => _TodoUiState();
}

class _TodoUiState extends State<TodoUi> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<TodoModelClass> cardList = [
    TodoModelClass(title: "Title", description: "Description", date: "Date"),
  ];
  var colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
const Color.fromRGBO(232, 237, 250, 1),
const Color.fromRGBO(250, 249, 232, 1),
const Color.fromRGBO(250, 232, 250, 1),
  ];
  // function basic code without handeling any taste cases
//   void submit(bool doEdit){
//       if(doEdit == false){
//         setState((){
//         cardList.add(
//           TodoModelClass(
//             title:titleController.text,
//             description:descriptionController.text,
//             date:dateController.text,
//           )
//         );
//         });
//       }
//       // to remove already entered data in to textfield
//       clearController();
// }

  void submit(bool doEdit, [TodoModelClass? todomodelObj]) {
    // to remove extra spaces we are using string functions trim()
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        setState(() {
          cardList.add(TodoModelClass(
            // to remove extra spaces we are using string functions trim()
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            date: dateController.text.trim(),
          ));
        });
      } else {
        setState(() {
          // todomodelObj can be null because used ? in above parameter to assure that data will not be null we use !...
          todomodelObj!.title = titleController.text.trim();
          todomodelObj.description = descriptionController.text.trim();
          todomodelObj.date = dateController.text.trim();
        });
      }
    }
    // to remove already entered data in to textfield
    clearController();
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void deleteCard(TodoModelClass todomodelObj) {
    setState(() {
      cardList.remove(todomodelObj);
    });
  }

  void editCard(TodoModelClass todomodelObj) {
    titleController.text = todomodelObj.title;
    descriptionController.text = todomodelObj.description;
    dateController.text = todomodelObj.date;
    showBottomSheet(true, todomodelObj);
    // clearController();
  }

  void showBottomSheet(bool doEdit, [TodoModelClass? todomodelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        // but above parameter takes bottom sheet to top of screen without need,so give to size in Column okaay
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            // this was previously used but
            // padding: const EdgeInsets.all(10),
            // we are using this mediaquary when fill data in description then input box of description goes down below keyboard and it gives bad impression. so we use this
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            // but after using above statement we notice it gives yellow line of error above keyboard, so actually it says i dont have right to scroll this bottom sheet so set scrollable parameter of bottomsheet true, see above context ,

            child: Column(
                // this is the size to avoid full screen aquire
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text("Create task",
                      style: GoogleFonts.quicksand(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      )),
                  const SizedBox(height: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: titleController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: descriptionController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Date",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                            controller: dateController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.calendar_month_outlined,
                              ),
                            ),
                            readOnly: true,
                            onTap: () async {
                              //picks the date from picker of date
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2024),
                                  lastDate: DateTime(2025));
                              // formats the date into required type
                              // format of date year month date
                              String formatedDate =
                                  DateFormat.yMMMd().format(pickedDate!);
                              setState(() {
                                // this stores date in controller
                                dateController.text = formatedDate;
                              });
                            }),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        //1
                        // submit(doEdit);
                        //2
                        if (!doEdit) {
                          submit(false);
                        } else {
                          submit(true, todomodelObj);
                        }
                        Navigator.of(context).pop();
                      });
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromRGBO(2, 167, 177, 1),
                      ),
                    ),
                    child: const Text("Submit"),
                  ),
                ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do App"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              height: 112,
              width: 330,
              
              decoration: BoxDecoration(
                color: colorList[index % colorList.length],
                border: Border.all(
                    width: 0.010,
                     color: const Color.fromARGB(77, 0, 0, 0)),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    //Row 1
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.07),
                              ),
                            ],
                          ),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2017/06/06/00/33/edit-icon-2375785_640.png",
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              cardList[index].title,
                              style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              cardList[index].description,
                              style: GoogleFonts.quicksand(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //row 2
                    Row(
                      children: [
                        Text(
                          cardList[index].date,
                          style: GoogleFonts.quicksand(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                child: const Icon(
                                  color: Color.fromRGBO(2, 167, 177, 1),
                                  size: 20,
                                  Icons.edit,
                                ),
                                onTap: () {
                                  editCard(cardList[index]);
                                }),
                            const SizedBox(
                              width: 12,
                            ),
                            GestureDetector(
                                child: const Icon(
                                  color: Color.fromRGBO(2, 167, 177, 1),
                                  size: 20,
                                  Icons.delete_outlined,
                                ),
                                onTap: () {
                                  deleteCard(cardList[index]);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // passing boolean to call needed function add or edit
            showBottomSheet(false);
          },
          child: const Icon(
            Icons.add,
          )),
    );
  }
}

class TodoModelClass {
  String title;
  String description;
  String date;

  TodoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}
