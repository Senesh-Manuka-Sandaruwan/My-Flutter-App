import 'package:flutter/material.dart';
import 'package:my_flutter_app/layout/main_layout.dart'; // Import MainLayout

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Section with "ABOUT US" Text
            Stack(
              children: [
                Image.asset(
                  'lib/assets/images/a1.png',
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  color: Colors.black.withOpacity(0.4),
                  child: Center(
                    child: Text(
                      'ABOUT US',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // About Text Section
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The crunchy sweets industry is a vibrant and evolving sector that thrives on creativity and consumer'
                    ' engagement. This category encompasses an array of delightful treats, from traditional confections to'
                    ' innovative snacks that cater to a broad spectrum of tastes. Success in this industry hinges on a strong'
                    ' focus on innovation, ensuring that products stand out in a crowded marketplace. Unique flavor'
                    ' combinations, innovative textures, and the introduction of health-conscious alternatives like low-sugar'
                    ' or gluten-free options can attract a diverse customer base and set a brand apart from its competitors.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16), // Adds spacing between paragraphs
                  Text(
                    'Quality assurance is another cornerstone of the crunchy sweets business. Consumers expect consistent'
                    ' taste and texture, and any compromise can harm a brand’s reputation. To ensure quality, businesses must'
                    ' prioritize the use of premium ingredients, maintain strict hygiene standards, and implement'
                    ' comprehensive quality control processes throughout the production and distribution stages.'
                    ' Certifications for safety and quality, such as ISO or HACCP, can enhance consumer trust and provide a'
                    ' competitive edge in a discerning market.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Marketing plays a critical role in the success of crunchy sweets. Leveraging digital platforms such as'
                    ' social media and e-commerce sites allows brands to reach a broader audience and engage with customers on'
                    ' a personal level. Social media campaigns, influencer partnerships, and user-generated content can'
                    ' significantly boost visibility and drive sales. Seasonal promotions and limited-edition products tied to'
                    ' holidays or cultural events can also generate excitement and create a sense of urgency among consumers,'
                    ' leading to increased demand.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Sustainability is becoming a key consideration for businesses in this industry. Environmentally conscious'
                    ' consumers are more likely to support brands that embrace eco-friendly practices, such as using'
                    ' biodegradable packaging, reducing food waste, and sourcing ethically produced ingredients. Incorporating'
                    ' sustainability into the business model not only appeals to this growing demographic but also positions'
                    ' the brand as a socially responsible entity. Long-term benefits include cost savings, enhanced brand'
                    ' loyalty, and a positive environmental impact.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Technology is reshaping the crunchy sweets industry in multiple ways. Automation in production processes'
                    ' helps achieve consistency, reduce costs, and improve efficiency. Advanced technologies like data'
                    ' analytics enable businesses to better understand consumer preferences and trends, leading to more'
                    ' targeted product offerings and marketing strategies. Augmented and virtual reality experiences, such as'
                    ' interactive packaging or online tasting events, add a new dimension to customer engagement, appealing to'
                    ' tech-savvy audiences and enhancing the overall brand experience.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Globalization has opened new horizons for the crunchy sweets industry, presenting opportunities for'
                    ' international growth. Expanding into global markets requires a nuanced understanding of local consumer'
                    ' preferences, dietary habits, and regulatory environments. Brands that successfully tailor their products'
                    ' to meet the needs of different regions can tap into diverse markets and achieve significant growth.'
                    ' Collaborating with local distributors, creating region-specific marketing campaigns, and ensuring'
                    ' compliance with local regulations are critical steps in establishing a strong foothold in global'
                    ' markets. This approach not only diversifies revenue streams but also builds a resilient business capable'
                    ' of adapting to global trends.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            // Pastries Image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'lib/assets/images/a2.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Food Safety Section
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food Safety Policy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crunchy Sweets (Pvt) Ltd takes pride in delivering high-quality culinary creations that encompass a'
                    'diverse range of products.'
                    'From artisanal cakes and delicate gateaux to savory ready-to-eat meals and refreshing beverages, the'
                    'company’s portfolio is designed to cater to a'
                    'variety of tastes and occasions. Its outdoor catering services further enhance its offerings, providing'
                    'customized solutions for events of all sizes,'
                    'ensuring memorable experiences for its clients. This commitment to diversity and quality enables Crunchy'
                    'Sweets to establish itself as a trusted name'
                    'in the food and beverage industry.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'A robust Food Safety Management System (FSMS) forms the backbone of Crunchy Sweets operations, ensuring'
                    'the highest levels of safety and hygiene. By adhering to globally recognized standards such as HACCP'
                    '(Hazard Analysis and Critical Control Points), the company identifies and mitigates potential hazards'
                    'throughout its production and supply chain processes. Comprehensive documentation and meticulous'
                    'record-keeping provide a transparent framework that supports regulatory compliance and builds consumer'
                    'trust. These practices underscore the company’s dedication to safeguarding the health and well-being of'
                    'its customers.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'In addition to food safety, Crunchy Sweets places a strong emphasis on maintaining operational'
                    'excellence and sustainability. By aligning its processes with statutory and regulatory requirements, the'
                    'company not only ensures the safety of its products but also positions itself as a responsible corporate'
                    'entity. Continuous improvement initiatives, such as staff training and technological advancements, are'
                    'integral to its strategy, enhancing productivity and quality. This approach not only fortifies the'
                    'company’s market position but also reflects its commitment to delivering exceptional value while meeting'
                    'the evolving needs of its customers.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.brown[800],
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
