import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Padding(
          padding: EdgeInsets.only(left: 80.0),
          child: Text(
            'Hakkında',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text(
              "BiNot'daki gizlilik bilgileri ve verilerinizi denetlemek için kullanabileceğiniz seçenekler hakkında",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
                "Uygulamanın veri toplama prosedürlerini anlamanıza yardımcı olacak, gizlilikle ilgili ayrıntılı bilgilere yer verilmektedir.BiNot, Mart 2023'te ürün sayfalarına yeni bir gizlilik bilgileri bölümü ekleneceğini duyurdu. Bu adım, müşterilere uygulamaların kendileri hakkında hangi verileri topladığını daha şeffaf ve açıklayıcı şekilde sunacak yenilikçi bir programın başlangıcıdır. Bu yeni program, tüm uygulamalar için bilgilerin geliştiricinin kendisi tarafından bildirildiği, anlaşılması kolay bir sistem oluşturmaktadır. BiNot, bu bilgileri doğru şekilde doldurabilmeleri için geliştiricilere kaynaklar sağlamaya devam edecektir. Bu gizlilik bilgileri bölümü, herkes için en uygun işleyişi hep beraber öğrendikçe gelişecektir.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(height: 10,),

            Text(
              "Gizlilik bilgileri bölümü hakkında",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),

            Text("Yeni gizlilik bilgileri bölümü bir uygulamanın BiNot'daki gizlilik prosedürlerini anlamanıza yardımcı olur. Her uygulamanın ürün sayfasında, uygulama tarafından toplanabilecek bazı veri türleri hakkında bilgi edinebilir ve bu verilerin sizinle ilişkilendirilip ilişkilendirilmediğini veya sizi izlemek için kullanılıp kullanılmadığını öğrenebilirsiniz.Uygulama Gizliliği bölümünde, uygulamanın toplayabileceği konum, kişi bilgileri, sağlık bilgileri gibi farklı veri türleri ve geliştiricinin veya üçüncü taraf iş ortaklarının bu verileri kullanabileceği reklam ya da analiz gibi çeşitli yollar açıklanmaktadır.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(height: 10,),

            Text(
              "Sizinle İlişkilendirilen Veriler",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10,),

            Text("Sizinle ilişkilendirilmiş olarak listelenen veriler, bunların kimliğinizle ilişkilendirilecek bir şekilde toplandığını gösterir. Örneğin, söz konusu veriler hesabınızla, aygıtınızla veya telefon numaranız gibi bilgilerinizle ilişkilendirilebilir. Verilerin toplandığını ancak sizinle ilişkilendirilmediğini beyan edebilmesi için geliştiricinin, verileri toplamadan önce kullanıcı kimliği benzeri doğrudan kimlik tanıtıcıların kaldırılması gibi gizlilik korumalarını kullanması ve topladıktan sonra verilerin kimliğinizle yeniden ilişkilendirilmesi gibi uygulamalardan kaçınması gerekir.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),

            SizedBox(height: 10,),
            Text(
              "Sizi İzlemek İçin Kullanılan Veriler",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),

            Text("Sizi izlemek için kullanılan veriler, uygulamada yer alan ve başka şirketlerin uygulamalarından, web sitelerinden veya çevrimdışı mülklerinden toplanan verilerle ilişkilendirilerek reklam sunmak amacıyla kullanılan ya da bir veri simsarıyla paylaşılan verilerdir. İzleme faaliyetleriyle ilgili bazı örnekler aşağıda verilmiştir: Başka şirketlere ait uygulamalardan ve web sitelerinden toplanan verilere dayalı olarak hedeflenmiş reklamların gösterildiği uygulamalar. Aygıt konumu verilerinin veya e-posta listelerinin bir veri simsarıyla paylaşıldığı uygulamalar. Diğer geliştiricilerin uygulamalarında sizi hedefleyebilmesi için e-postalar, reklam kimlikleri veya başka kimliklerden oluşan bir listenin üçüncü taraf bir reklam ağıyla paylaşıldığı uygulamalar.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(height: 10,),

            Text(
              "Veri kullanımı ve gizlilik prosedürleri hakkında ek bilgiler",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),

            Text("Uygulamanın, farklı veri toplama prosedürlerine uyan birden fazla kullanım senaryosu varsa gizlilik bilgileri bölümünde tüm prosedürler ve bu prosedürlerde verilerin nasıl kullanıldığı sunulmalıdır. Örneğin, uygulamanın ücretli ve ücretsiz sürümlerinde farklı veri toplama prosedürleri kullanılıyorsa her iki durumda toplanan veri türlerinin tamamı belirtilmelidir. Ayrıca uygulamanın yalnızca çocuklara yönelik sürümüyle yetişkin sürümü arasında farklılıklar, değişik bölgelerde veri toplanmasıyla ilgili farklılıklar ve uygulamayı kullanım şeklinize bağlı başka farklılıklar olabilir. Uygulama geliştiricisinin gizlilik politikasında, veri toplama prosedürlerinin çeşitli durumlarda nasıl farklılaşabileceği hakkında daha ayrıntılı bilgi bulunabilir. Geliştirici, uygulamanın içinde sizden bilgi istiyorsa gizlilik bilgileri bölümünde bu verileri de açıklamalıdır. Verinin nadiren toplandığı ve veri toplama işleminin uygulamanın birincil işlevinin parçası olmadığı, hangi verilerin toplandığının kullanıcı deneyimi sırasında net bir şekilde anlaşıldığı, hesap bilgilerinizin veya adınızın belirgin biçimde göründüğü ve bilgileri paylaşmayı net olarak seçtiğiniz sınırlı durumlarda geliştirici, toplanan veri türünü açıklamamayı tercih edebilir.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(height: 10,),
            Text(
              "BiNot ve gizlilik bilgileri",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),

            Text("Binot olarak donanım, yazılım ve servislerimizde bizim ve başkalarının müşteri verilerine erişimimizi mümkün olan en düşük düzeye indirecek yenilikçi gizlilik teknolojileri ve teknikleri kullanmaya büyük çaba harcıyoruz. Uygulamada ait gizlilik bilgisi özetlerinde, uygulamalarımızın toplayabileceği veri türleri listelenir ve bu verilerin kullanıcıyla veya aygıtla ilişkilendirilip ilişkilendirilemeyeceği belirtilerek kendi veri toplama prosedürlerimiz açıklanır. Çok çeşitli uygulamalar sunduğumuz ve bu uygulamalarda müşterilere farklı deneyimler sağladığımız için söz konusu gizlilik özetleri uygulamaya göre farklılık gösterir ve müşterilerin bilgilerini korumanın yeni yolları konusunda çalışmalarımız devam ettikçe güncellenirler. Bu bilgilerin sunulması, müşterilerin kendi gizlilikleri hakkında bilgi sahibi olmasına ve daha iyi kararlar almasına yardımcı olur. Size daha da iyi deneyimler yaşatacak uygulamalar sunmak için yoğun bir şekilde çalışmaya devam edeceğiz ve uygulamalarımızın tasarımında gizlilik unsurunu en baştan itibaren göz önünde bulunduracağız.",
                style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
