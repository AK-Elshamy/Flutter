# 🚨 Flutter Midterm Rescue — 5 ساعات

يا معلم، شدّ الحزام! هنشتغل بعقلية إننا بنلمّ درجات، مش بنذاكر Flutter من أول وجديد بتعمّق. هنفهم الأساس اللي يخلّيك تحل MCQ وتكتب كود بسيط.

راجعت ملفات المحاضرات والامتحانات اللي رفعتها. واضح إن الأسئلة بتتكرر في نوعين:

- نظري: معنى Widget، وظيفة `Scaffold`، `AppBar`، `Container`، Dart syntax.
- عملي: تتبّع Output، كتابة Function أو Lambda، واختيار الـ Widget المناسب لتصميم شاشة.

محاضراتك بتبدأ من تركيب Flutter app والـ Widgets، وبعدها Layouts وImages وButtons وTextField. هنمشي بنفس المسار.&#x20;

flutter_1.txt

flutter_2.txt



## ⏳ خطة الخمس ساعات

| Sprint | الوقت    | هنلمّ إيه؟                                              |
| ------ | -------- | ------------------------------------------------------- |
| 1      | 40 دقيقة | Flutter app structure + Widgets                         |
| 2      | 50 دقيقة | `Scaffold`, `AppBar`, `Container`, `Row`, `Column`      |
| 3      | 45 دقيقة | `Stack`, Images, Icons, Buttons, TextField              |
| 4      | 60 دقيقة | Dart essentials + Output questions + Functions          |
| 5      | 45 دقيقة | Stateful/Stateless, `setState`, Forms + مراجعة امتحانات |
| 6      | 60 دقيقة | حل امتحانات سابقة وكتابة كود تحت ضغط الوقت              |

الترتيب مرن: لو ظهر من أسئلة الامتحان إن فيه موضوع أهم، هنقدّمه.

# 🚀 Sprint 1 — المهمة الأولى: افهم Flutter App

## 1. يعني إيه Flutter؟

Flutter Framework بنستخدمه لبناء واجهات التطبيقات. الفكرة الأساسية في محاضرتك:

> Everything in Flutter is a Widget.

يعني كل جزء من الشاشة تقريبًا Widget:

- نص → `Text`
- صورة → `Image`
- زرار → `ElevatedButton`
- ترتيب أفقي → `Row`
- ترتيب رأسي → `Column`
- صندوق → `Container`

اعتبر الـ Widgets زي قطع LEGO، وإنت بتركّبهم عشان تعمل الشاشة.

## 2. أهم 3 Widgets لازم تفهمهم

[Basic Structure of a Flutter App](https://images.openai.com/static-rsc-4/MPHfo4CUKzUuUTtjZpEHTsU_HO2j3HfwurhbE0lSn1OO35ptVav8D6mX9bJe2GQ8BQSbIrDfFmSh8_xyflIcsoDd24TZ8v2-j65aVicI8USr1FLGzKumrGKv3i846AvJ_e8NaCVfEIQpeM-75An55m0Cf69o6kJPPALWcf3Nb7A?purpose=inline)

[liveBook · Manning](https://images.openai.com/static-rsc-4/ICECYb74xaOSc570dpMwvVrYbZTHxrC_qrDIzehZC5yPxQYYhGFAIVKWmP3HWLNoguWxxsfpxfUYi4ZuJKcG2YMAIO_KNNzBVwsv2XgweChC3Sd9ormMbwPLCeQAfq-kGDWpcUmxjyUG-S0UUq9hXLt3qWyQioIxz0LygTcK_Sg?purpose=inline)

[Widget - State - Context - InheritedWidget — Flutteris](https://images.openai.com/static-rsc-4/vJTo6RwfFYu90B-Pe6IxFBKK84gj9gjD-E2cIRLddLeoxjp-OGZS9ZVB-K6_iPtDLN5rh2b-nbN4mXILjL_XCdWxeyIrlI4tIfqhsXxjTmTNhE-FbIrIFyI5j8KQOgZeLOnr7oAaCPEMKG5W2kjVsTFJKoEh6V383o13sCCKkHE?purpose=inline)

7

| Widget        | وظيفته ببساطة          |
| ------------- | ---------------------- |
| `MaterialApp` | الغلاف الأساسي للتطبيق |
| `Scaffold`    | الهيكل الأساسي للشاشة  |
| `AppBar`      | الشريط اللي فوق الشاشة |

الـ `Scaffold` ممكن يحتوي على:

- `appBar`: الشريط العلوي
- `body`: محتوى الشاشة
- `floatingActionButton`: زر عائم غالبًا تحت يمين

### تخيلها كده

```
MaterialApp
   └── Scaffold
         ├── AppBar
         │     └── Text("Home")
         ├── body
         │     └── Center
         │           └── Text("Hello World")
         └── floatingActionButton
```

## 3. طبق ده على VS Code

افتح `lib/main.dart` في مشروع Flutter. جرّب الكود الصغير ده:

> [!code] طبق ده على VS Code
>
> ```
> import 'package:flutter/material.dart';
>
> void main() {
>   runApp(const MyApp());
> }
>
> class MyApp extends StatelessWidget {
>   const MyApp({super.key});
>
>   @override
>   Widget build(BuildContext context) {
>     return MaterialApp(
>       home: Scaffold(
>         appBar: AppBar(
>           title: const Text('My First App'),
>         ),
>         body: const Center(
>           child: Text('Hello World'),
>         ),
>       ),
>     );
>   }
> }
> ```

### افهم الكود مش تحفظه

- `main()` → نقطة بداية البرنامج.
- `runApp()` → بتشغّل الـ Widget الأساسي.
- `MyApp` → كلاس بيمثل Widget.
- `build()` → بتوصف Flutter الشاشة شكلها إيه.
- `MaterialApp` → التطبيق.
- `Scaffold` → هيكل الشاشة.
- `Center` → يحط الـ child في المنتصف.
- `Text` → يعرض النص.

ملاحظة: `build()` ممكن تتنادى مرات كتير، فمش مكان مناسب لحسابات تقيلة أو عمليات مكلفة.

## 4. سؤال امتحان 🔥

> [!warning] سؤال امتحان!\
> What is the purpose of the Scaffold widget in Flutter?
>
> A) To provide a set of Material Design widgets\
> B) To provide a layout for the application's pages\
> C) To create a new widget\
> D) To manage the state of the application

السؤال ده موجود في ورقة الميدتيرم اللي رفعتها.&#x20;

flutter_1.txt



## 5. دورك دلوقتي — من غير ما أبصملك الإجابة 😎

نفّذ الكود في VS Code، وبعدها جاوبني على دول:

1. إيه الاختيار الصح في سؤال الامتحان؟
2. إيه الفرق بين `MaterialApp` و`Scaffold`؟
3. لو عايز أضيف زرار في أسفل يمين الشاشة، أنهي property من `Scaffold` هستخدم؟
4. هل `build()` بتتنفذ مرة واحدة بس؟

ابعت إجاباتك، وأنا هصححها وأشرح الغلط لو موجود. وبعدها ندخل على `Container`, `Row`, `Column` — دول من أهم أجزاء تصميم الشاشة.

---
تمام يا معلم! 🔥

| السؤال                | إجابتك     | النتيجة       |
| --------------------- | ---------- | ------------- |
| 1. مين يعرض النص؟     | `Scaffold` | ❌ الصح `Text` |
| 2. `body` موجودة فين؟ | `Scaffold` | ✅             |
| 3. ترتيب أفقي؟        | `Row`      | ✅             |

النتيجة: 2/3 — حلو جدًا!

افتكر الفرق:

- `Text` هو اللي بيعرض الكلام.
- `Scaffold` هو هيكل الصفحة اللي بيحتوي على `body` و`appBar` وغيرهم.

# 🚀 Sprint 2 — Layout Widgets

أهم 3 Widgets لترتيب العناصر:

[🛠️Working with Flutter Layouts: Row & Column | by David Bernal González | Medium](https://images.openai.com/static-rsc-4/8J17nuO8v3rHkB68rFkfzFLgtpL0E8iLgQLqrYofo-4HQhFapeONqAm_vn1oIcf36E6V0PqtJyXVYib69NrfUVqVHwtC-XFwc1KQaKwNIBYnU-GFwj5UEU2ToNhtDYVa7Hk00c3QNC0Zpu7Gv3mTg--6WhspLiHwPD0KkotaC2U?purpose=inline)

[Flutter Stack Positioned Example at Emma Lowell blog](https://images.openai.com/static-rsc-4/pxRJFcS3DCA7Vajm4IXthYNK6JMPLF-1HmxveM8fIfnOO16vXyFysm9hvX-OpKaM3l9pgt_5iLn7TwxA6U5TYx8Hwaj42i_xZIKaCru9vPcz-hICWPL5lk7LtlwbbPOFeL_JJm0-fBcfCvADBGWxIs8pG82tmK5yO7RIPK0_PSY?purpose=inline)

[flutter EdgeInsets 사용법 :: 마느아의 전산 공부 블로그](https://images.openai.com/static-rsc-4/ScXTc36as3YHnIRoPx8QdL-iNVMZym02t4xBvYazBLgtPgA6444ioccTjo5Wh23dGSRqMVPIh4EZ-GmwGHx84ITzSRYblJ2r9FHLikt9fKYGpdDycEjjvXaFtTcJFCTDJWsYgDnJ7kfJMGVRHwgP8TVIeXRyM1o2anO57a7Txmg?purpose=inline)

7

## 1. Row vs Column vs Stack

| Widget   | الترتيب         | مثال          |
| -------- | --------------- | ------------- |
| `Row`    | أفقي ←→         | عناصر جنب بعض |
| `Column` | رأسي ↑↓         | عناصر فوق بعض |
| `Stack`  | فوق بعض / تداخل | صورة فوق صورة |

مثال بسيط:

> [!code] طبق ده على VS Code
>
> ```
> body: Row(
>   children: [
>     Text('Ahmed'),
>     Text('Khaled'),
>   ],
> )
> ```
>
> هيعرض:
>
> `Ahmed Khaled`
>
> الاتنين جنب بعض، لأننا استخدمنا `Row`.

ولو بدّلنا `Row` بـ `Column`، هيبقوا تحت بعض.

## 2. Container

اعتبر `Container` صندوق تقدر تتحكم في حجمه، لونه، والمسافات اللي حواليه وجواه.

```
Container(
  width: 200,
  height: 100,
  color: Colors.blue,
  padding: EdgeInsets.all(10),
  child: Text('Hello'),
)
```

### الفرق بين Padding و Margin

[Flutter Layouts Guide: Margins and Padding](https://images.openai.com/static-rsc-4/NUp_blEuzAqG7UwlW74lzm-ggmMbhIeYqHSml5ui0_G68Pga4MPD9NL8-ICf0IFeYXe_PNytSFpR0DwhqZmeeX08m39L9rshfH3FAn2hTUPraXfBO16oeP6UPW1LKzRQ0X2hucO4wiTMNXUVrm3wgHfJ2Dnfv-sirpFoQTzStdE?purpose=inline)

[ginjarcodes.hashnode.dev](https://ginjarcodes.hashnode.dev/flutter-layouts-guide-margins-and-padding?utm_source=chatgpt.com)

- `padding`: المسافة جوه الصندوق، بين حدوده والـ child.
- `margin`: المسافة بره الصندوق، بينه وبين العناصر المحيطة.

```
Container(
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(10),
  child: Text('Hello'),
)
```

## 🎯 سؤال امتحان سريع

> [!warning] سؤال امتحان!\
> Which Widget is used to arrange children horizontally in Flutter?
>
> A) Column\
> B) Stack\
> C) Row\
> D) Container

دورك: جاوب السؤال ده، وبعدها هديك كود صغير فيه `Row`, `Column`, و`Container`، ونحل شكل الـ Output مع بعض.

---
