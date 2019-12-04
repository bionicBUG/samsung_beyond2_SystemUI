.class public Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "SceneParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 28
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    .line 30
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "type"

    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "snow"

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    .line 36
    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/SnowView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/SnowView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    .line 38
    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_4
    const-string v4, "rain"

    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/RainView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/RainView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    .line 42
    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_5
    const-string v4, "leaf"

    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 44
    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/LeafView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/LeafView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    .line 46
    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_6
    const-string v4, "flower"

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 48
    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/FlowerView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    .line 50
    invoke-virtual {v1, v4, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void
.end method
