import 'package:evently_project/core/resources/asset_manager.dart';
import 'package:evently_project/core/resources/colors_manager.dart';
import 'package:evently_project/core/widget/custom_elevated_bottom.dart';
import 'package:evently_project/core/widget/custom_tab_bar.dart';
import 'package:evently_project/core/widget/custom_text_button.dart';
import 'package:evently_project/core/widget/custome_text_form_field.dart';
import 'package:evently_project/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Event')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(AssetsImages.meeting),
              ),
              SizedBox(height: 16.h),
              CustomTabBar(
                selectedBgColor: ColorsManager.blue,
                unSelectedBgColor: Colors.transparent,
                selectedFgColor: ColorsManager.white,
                unSelectedFgColor: ColorsManager.blue,
                categories: CategoryModel.categories,
              ),
              SizedBox(height: 16.h),
              Text('Title', style: Theme.of(context).textTheme.labelSmall),
              SizedBox(height: 8.h),
              CustomeTextFormField(
                hint: 'Event Title',
                validator: (input) {},
                controller: _titleController,
                prefixIcon: Icons.edit,
              ),
              SizedBox(height: 16.h),
              Text('description', style: Theme.of(context).textTheme.labelSmall),
              CustomeTextFormField(
                lines: 4,
                hint: 'Event Description',
                validator: (input) {},
                controller: _descriptionController,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(width: 4.w),
                  Text(
                    'Event Date',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: 'Chose Date',
                    onTab: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Icon(Icons.access_time_rounded),
                  SizedBox(width: 4.w),
                  Text(
                    'Event Time',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Spacer(),
                  CustomTextButton(
                    text: 'Chose Time',
                    onTab: () {
                     showTimePicker(context: context, initialTime: TimeOfDay.now());
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Text('Location' ,style: Theme.of(context).textTheme.labelSmall,),
              SizedBox(height: 8.h,),

              OutlinedButton(
                     style: OutlinedButton.styleFrom(
                       side: BorderSide(
                         color: ColorsManager.blue,
                         width: 1
                       ),
                       padding: REdgeInsets.all(8),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16.r),

                       )
                     ),
                     onPressed: (){}, child: Row(children: [
                    Card(
                        color: ColorsManager.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.location_on_outlined,color: ColorsManager.white,),
                        )),
                   SizedBox(height: 8.h,),
                   Text(' Chose Event Location'),
                  ],)),
              SizedBox(height: 16.h,),
              CustomElevatedBottom(title: 'Add Event', onPress: (){}),
          
            ],
          ),
        ),
      ),
    );
  }
}
