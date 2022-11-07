import 'package:flutter/material.dart';

import 'model_class.dart';

class screenoeprovider extends ChangeNotifier
{
  List <screenModel> dataone = [
    screenModel(photo: "data:image/png;base64,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",appname: "Amazon",star: "4.2"),
    screenModel(photo: "2wCEAAkGBxMPDhUNDw8WEA4NFQ8PDg4PDxYQDxATFhcWFhgYFxUYHyggGBolHxMXITUhJikrLjEwGiAzOTMtNzQtLjcBCgoKDg0OGhAQGy0lICUrLS4wLi0wLS0uKy8tLy8tKzUtLy03Ky0tMCsuLS0tLS8uLS0tLS0tMC0rLS8rKy0vLf",appname: "DigiLocker",star: "4.1"),
    screenModel(photo: "data:image/png;base64,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",appname: "Netflix",star: "4.3"),
    screenModel(photo: "data:image/png;base64,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",appname: "Snapseed",star: "4.3"),
    screenModel(photo: "data:image/png;base64,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",appname: "Swiggy",star: "4.4"),
  ];

  List <screenModel> datatwo = [
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Angel One",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Domino's Pizza",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Groww: socks",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "OctaFX Trading",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Zomato",star: "4.4"),
  ];

  List <screenModel> datathree = [
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "BookMyShow",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Disnep Hotstar",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Lightroom CC",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Amazon Prime Video",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Spotify",star: "4.4"),
  ];

  List <screenModel> datafour = [
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Facebook",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Instagram",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Snapchat",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Twitter",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Whatsapp",star: "4.4"),
  ];


  List <screenModel> alldata = [
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Amazon",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "DigiLocker",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Netflix",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Snapseed",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Swiggy",star: "4.4"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Angel One",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Domino's Pizza",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Groww: socks",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "OctaFX Trading",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Zomato",star: "4.4"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "BookMyShow",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Disnep Hotstar",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Lightroom CC",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Amazon Prime Video",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Spotify",star: "4.4"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Facebook",star: "4.2"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Instagram",star: "4.1"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Snapchat",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Twitter",star: "4.3"),
    screenModel(photo: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fplay-lh.googleusercontent.com%2FeJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY&imgrefurl=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.booking%26hl%3Den_IN%26gl%3DUS&tbnid=ejOKiNlixk_ulM&vet=12ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ..i&docid=IR2-alwDx0AFNM&w=512&h=512&q=booking.com%20india&ved=2ahUKEwjsxoOhp5v7AhVdhNgFHU9tAjQQMygAegUIARC5AQ",appname: "Whatsapp",star: "4.4"),
  ];


  screenModel? datapick;

}