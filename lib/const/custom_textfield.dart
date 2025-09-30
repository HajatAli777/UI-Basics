import 'package:flutter/material.dart';
import 'package:app/utills/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;

   CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8.0,
                                    top: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        label,
                                        style: TextStyle(
                                          color: AppColors.toldTextColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          
                                        ),
                                      ),
                                      TextField(
                                        controller: controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: hint,
                                          hintStyle: TextStyle(
                                            color: AppColors.subtitleTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          contentPadding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 12,
                                          ),
                                        ),
                                      ),
                                    
                                  
                                
                                    ]
                                  )
                                );
}
                                      
                           
  }