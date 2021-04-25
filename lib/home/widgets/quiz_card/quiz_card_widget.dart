import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;
  final VoidCallback onTap;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(3.5),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset(AppImages.blocks),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: AppTextStyles.heading15,
                softWrap: true,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      completed,
                      softWrap: true,
                      style: AppTextStyles.body11,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ProgressIndicatorWidget(value: percent),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
