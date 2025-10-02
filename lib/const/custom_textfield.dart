import 'package:flutter/material.dart';
import 'package:app/utills/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;

   const CustomTextField({
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
                                    left: 5,
                                    right: 5.0,
                                    top: 5,
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