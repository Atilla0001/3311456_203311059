import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yenicalisma/Sifreyi_unuttum.dart';
import 'package:yenicalisma/anasayfa.dart';
import 'package:yenicalisma/kayit_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? kaydet = false;
  bool _isSecurePassword = true;

    buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, blurRadius: 6, offset: Offset(0, 2)),
            ],
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        ),
      ],
    );
  }

   buildSifre() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sifre',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white, blurRadius: 6, offset: Offset(0, 2)),
            ],
          ),
          height: 60,
          child: TextField(
            obscureText: _isSecurePassword,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                hintText: 'Sifre',
                hintStyle: const TextStyle(color: Colors.black38),
              suffixIcon: togglePassword(),

            ),
          ),
        ),
      ],
    );
  }

   togglePassword(){
    return IconButton(onPressed: (){setState(() {
      _isSecurePassword =! _isSecurePassword;
    });}, icon: _isSecurePassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }


  buildSifreyiUnuttum() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SifreyiUnuttum()));
        },
        child: const Text(
          'Sifreyi Unuttum',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  buildbenihatirla() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: kaydet,
              activeColor: Colors.green,
              onChanged: ( value) {
                setState(() {
                  kaydet = value  ;
                });
              },

            ),
          ),
          const Text(
            'Unutama Beni',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  buildLoginButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Anasayfa()));
        },
        child: const Text(
          'Giris Yap',
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ),
    );
  }

  kayitOl() {
    return Padding(
      padding:  const EdgeInsets.only(left: 50.0),
      child: Row(
        children: [
          const Text("Hesabiniz yok mu?", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const KayitPage()));
              },
              child: const Text(
                'Kayit Ol',
                style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.brown,
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'BiNot',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50),
                      buildEmail(),
                      const SizedBox(height: 30),
                      buildSifre(),
                      Row(
                        children: [
                          buildbenihatirla(),
                          const SizedBox(
                            width: 100,
                          ),
                          buildSifreyiUnuttum(),
                        ],
                      ),
                      buildLoginButton(),
                      kayitOl(),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


