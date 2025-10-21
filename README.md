# SQL_Project_Bank_Analysis

**SQL Final Project – Datacube Bootcamp**

---

## Layihənin Məqsədi  

Bu layihənin əsas məqsədi SQL vasitəsilə bank müştərilərinin hesab, əməliyyat və kredit məlumatlarını təhlil etmək, müştəri davranışını və bankın gəlirliliyini dəyərləndirməkdir.

---

## İstifadə Olunan Cədvəllər  

CUSTOMERS, ACCOUNTS, TRANSACTIONS, CREDIT

![Table Schema](Visualization/Table%20Schema.png)

---

## Tapşırıqlar və Nəticələr  

### I. Müştəri və Hesab Göstəriciləri  

**1. Hər müştərinin neçə aktiv hesabı var və balans cəmi nə qədərdir**  
- Script: [Task 1](Scripts/Task_1.sql)  
- Chart 1: ![Chart_1](Visualization/Chart_1.png)  
- Chart 2: ![Chart_2](Visualization/Chart_2.png)

---

**2. Şəhərlər üzrə orta hesab balansı**  
- Script: [Task 2](Scripts/Task_2.sql)

- Nəticə:
  - Sumqayıt həm orta balans, həm də əməliyyat sayı üzrə liderdir.  
  - Gəncə və Lənkəran balans baxımından güclü, lakin əməliyyat sayında bir qədər geridədir.  
  - Bakı ən aşağı orta balans və əməliyyat göstəricisinə malikdir.

---

**3. Müştəri yaş qruplarına görə hesab sayı və balans**  
- Script: [Task 3](Scripts/Task_3.sql)

Nəticə:  
  - 28–37 və 68–77 yaş qrupları orta göstəricilərdən yuxarıdadır.  
  - 38–47 və 58–67 yaş aralıqları orta səviyyədən aşağı nəticə göstərmişdir.
---

**4. Ən zəngin 10 müştəri (Top Balance)**  
- Script: [Task 4](Scripts/Task_4.sql)  
- Chart 3: ![Chart_3](Visualization/Chart_3.png)

---

### II. Əməliyyat Analizi  

**5. Hər hesab üzrə ümumi depozit və çıxarış məbləği**  
- Script: [Task 5](Scripts/Task_5.sql)
- Nəticə: 
  - Ümumi əməliyyat məbləği: **3.24 milyon ₼**  
  - Depozitlər: **1.55 milyon ₼ (188 hesab)**  
  - Çıxarışlar: **1.68 milyon ₼ (205 hesab)**
---

**6. Müştəri üzrə əməliyyat sayı və ümumi məbləğ**  
- Script: [Task 6](Scripts/Task_6.sql)  
- Chart 4: ![Chart_4](Visualization/Chart_4.png)
- Nəticə:  
  - Ümumi əməliyyat məbləği: **5 milyon ₼**, 155 müştəri üzrə.  
  - Ən yüksək əməliyyat sayı 5–8 aralığındadır.  
  - 10+ əməliyyat edən müştərilər az olsa da, yüksək məbləğlərlə fərqlənir.  
  - 1–3 əməliyyat edənlər çoxluq təşkil etsə də, aşağı dəyərli əməliyyatlardır.
---

**7. Ən çox əməliyyat edən hesablar**  
- Script: [Task 7](Scripts/Task_7.sql)
- Nəticə: 
  - 4–5 əməliyyat edən hesablar ən yüksək dövriyyəyə malikdir (~1M ₼).  
  - 1–2 əməliyyat edənlər passiv hesab qrupunu təşkil edir.  
  - 6+ əməliyyat edənlər çox azdır və hər əməliyyat məbləği aşağıdır.
---

**8. Əməliyyat növlərinin payı (Deposit, Withdrawal, Transfer)**  
- Script: [Task 8](Scripts/Task_8.sql)  
- Chart 5: ![Chart_5](Visualization/Chart_5.png)
- Nəticə:  
  - Transfer – 35%  
  - Withdrawal – 34.3%  
  - Deposit – 30.7%  
  - Transfer əməliyyatları az fərqlə digərlərindən öndədir.

---

**9. Hər müştərinin ən böyük əməliyyat məbləğini tapın və bunu orta əməliyyat məbləği ilə müqayisə edin**  
- Script: [Task 9](Scripts/Task_9.sql)
- Nəticə:
  - Above Avarage - 13906
  - Below Avarage - 977
  - Təxminən 94% müştərinin ən böyük əməliyyatı orta əməliyyat məbləğindən yüksəkdir.
---

### III. Zaman və Trend Analizi  

**10. Ay və il üzrə əməliyyatların sayı və məbləği**  
- Script: [Task 10](Scripts/Task_10.sql)  
- Chart 6: ![Chart_6](Visualization/Chart_6.png)  
- Chart 7: ![Chart_7](Visualization/Chart_7.png)

---

**11. Hər ay üzrə depozit və çıxarış trendi**  
- Script: [Task 11](Scripts/Task_11.sql)  
- Chart 8: ![Chart_8](Visualization/Chart_8.png)

---

### IV. Kredit Analizi  

**12. Hər müştərinin kreditləri və cəmi kredit məbləği**  
- Script: [Task 12](Scripts/Task_12.sql)

---

**13. Kredit statuslarına görə paylar (Active, Closed, Defaulted)**  
- Script: [Task 13](Scripts/Task_13.sql)  
- Chart 9: ![Chart_9](Visualization/Chart_9.png)

---

**14. Müştəri başına orta aylıq kredit ödənişi**  
- Script: [Task 14](Scripts/Task_14.sql)  
- Chart 10: ![Chart_10](Visualization/Chart_10.png)

---

**15. Kredit faizlərinə görə gəlirlilik analizi**  
- Script: [Task 15](Scripts/Task_15.sql)

---

**16. Region və şəhər üzrə riskli kreditlərin nisbəti**  
- Script: [Task 16](Scripts/Task_16.sql)  
- Chart 11: ![Chart_11](Visualization/Chart_11.png)

---

**17. Hər müştərinin birinci və sonuncu götürdüyü kredit məbləğləri**  
- Script: [Task 17](Scripts/Task_17.sql)

---

### V. Bonus Tapşırıqlar  

**18. Aktiv və ləğv edilmiş hesabların balans müqayisəsi**  
- Script: [Task 18](Scripts/Task_18.sql)  
- Chart 12: ![Chart_12](Visualization/Chart_12.png)  
- Chart 13: ![Chart_13](Visualization/Chart_13.png)
- Nəticə: 
  - Ümumi balansın 60%-i ləğv edilmiş hesabların payına düşür.  
  - Bank yüksək balanslı bəzi müştəriləri itirib — bu, müştəri saxlanması (retention) problemlərinə işarədir.

---

**19. Hər müştərinin ən böyük əməliyyatı və tarixi**  
- Script: [Task 19](Scripts/Task_19.sql)  
- Chart 14: ![Chart_14](Visualization/Chart_14.png)

---

**20. Balans və əməliyyat sayı üzrə müştəri seqmentasiyası (High, Medium, Low)**  
- Script: [Task 20](Scripts/Task_20.sql)  
- Chart 15: ![Chart_15](Visualization/Chart_15.png)
- Nəticə:  
  - High: Balans > ortalama balans, hesab sayı > 8  
  - Medium: Balans > ortalama balans, hesab sayı 5–8  
  - Low: Balans < ortalama balans, hesab sayı < 5  
---

**21. Hər müştərinin kredit/hesab balansı nisbəti**  
- Script: [Task 21](Scripts/Task_21.sql)  
- Chart 16: ![Chart_16](Visualization/Chart_16.png)
- Nəticə:  
  - Kredit/Balans > 1 → Yüksək riskli müştərilər  
  - Kredit/Balans < 1 → Aşağı riskli müştərilər  
  - Yüksək riskli: 70 nəfər  
  - Aşağı riskli: 67 nəfər
---

## Ümumi Nəticələr və Tövsiyələr  

1. Mövsümi trendlərə uyğun kampaniyalar həyata keçirilməlidir.  
2. Loyal müştərilər üçün depozitləri təşviq edən proqramlar hazırlanmalıdır.  
3. Pik dövrlərdən öncə likvidlik planlaması gücləndirilməlidir.  
4. Aşağı və orta seqmentlər üçün sadə məhsullar və rəqəmsal təkliflər təqdim edilməlidir.  
5. Yüksək seqmentli müştərilərə fərdi məsləhət və premium xidmətlər göstərilməlidir.  
6. Yüksək riskli müştərilərlə əlaqə və risk monitorinqi artırılmalıdır.

## Texniki Qeydlər  

- SQL platforması: Oracle SQL Developer  
- İstifadə olunan funksiyalar: `JOIN`, `GROUP BY`, `HAVING`, `CASE`, `RANK`, `AVG`, `SUM`, `MAX`, `COUNT`  
- Vizualizasiyalar: Excel vasitəsilə hazırlanmış qrafiklər  

---

## Müəllif  

**Sevinc Qiyasova**  
Datacube Bootcamp – SQL Modul Final Layihəsi  
[GitHub Profilim](https://github.com/sevinc-giyasova)