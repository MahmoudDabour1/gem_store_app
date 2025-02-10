import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gem_store_app/core/utils/assets_manager.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<String> recentSearches = [];
  Map<String, dynamic> appliedFilters = {};

  void _showFilterDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(onApply: (selectedFilters) {
        setState(() {
          appliedFilters = selectedFilters;
        });
        Navigator.pop(context);
      }),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Search", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Row(
                  children: [
                    Container(
                      height: 50.h,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 250.w,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Color(0xff777E90),size: 30,),
                            hintText: "Search",
                            hintStyle: TextStyle(color:Color(0xff777E90),fontSize: 18.sp ),
                            border: InputBorder.none,
                          ),
                          onSubmitted: (value) {
                            setState(() {
                              if (value.isNotEmpty && !recentSearches.contains(value)) {
                                recentSearches.insert(0, value); // Add to recent searches
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Builder(
                      builder: (context) {
                        return
                          Container(
                            height: 46.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius: BorderRadius.circular(13.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: IconButton(
                            icon:  SvgPicture.asset(SVGAssets.filterIcon,
                              width: 25.w,height: 25.h,
                                ),
                            onPressed: () => _showFilterDrawer(context),
                                                    ),
                          );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // Recent Searches
                if (recentSearches.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Recent Searches", style: TextStyle(fontWeight: FontWeight.bold)),
                      Wrap(
                        spacing: 8.0,
                        children: recentSearches.map((search) {
                          return Chip(
                            label: Text(search),
                            onDeleted: () {
                              setState(() {
                                recentSearches.remove(search);
                              });
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
              ],
            ),

            SizedBox(height: 20),

            // Results
            Center(
              child: Text(
                "Filtered results: \n$appliedFilters",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

