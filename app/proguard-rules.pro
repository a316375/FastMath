# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
##################### 一般使用默认 #####################

# 不使用大小写混合类名,混淆后的类名为小写

-dontusemixedcaseclassnames

# 混淆第三方库

-dontskipnonpubliclibraryclasses

# 混淆时记录日志,有助于排查错误

-verbose

# 代码混淆使用的算法.

-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*

# 代码混淆压缩比,值在0-7之间,默认为5.

-optimizationpasses 5


#把混淆类中的方法名也混淆了
-useuniqueclassmembernames

#优化时允许访问并修改有修饰符的类和类的成员
-allowaccessmodification

##################### 不混淆 #####################


# 这些类不混淆
-keep class com.shockwave.**


 -keep public class com.google.android.gms.ads.** {
    public *;
 }

 -keep public class com.google.ads.** {
    public *;
 }
-keep class com.android.vending.billing.**{
public *;
}

-dontwarn com.google.ads.**
-keep public class com.google.ads.**{
	public protected *;
}